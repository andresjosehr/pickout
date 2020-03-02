<div class="filter-item">
    <div class="form-group">
        <div class="form-content">
            <?php
            $location_name = "";
            $list_json = [];
            $traverse = function ($locations, $prefix = '') use (&$traverse, &$list_json , &$location_name) {
                foreach ($locations as $location) {
                    $translate = $location->translateOrOrigin(app()->getLocale());
                    if (request()->query('location_id') == $location->id){
                        $location_name = $translate->name;
                    }
                    $list_json[] = [
                        'id' => $location->id,
                        'title' => $prefix . ' ' . $translate->name,
                    ];
                    $traverse($location->children, $prefix . '-');
                }
            };
            $traverse($list_location);
            ?>
            <div class="smart-search">
                <div class="d-flex mb-2">
                    <i class="far fa-map-marked-alt text-dark fx-1 mr-2 icon_new_search"></i>
                    {{-- <i class="field-icon fa icofont-map"></i> --}}
                    <input type="text" class="smart-search-location parent_text form-control" {{ ( empty(setting_item("hotel_location_search_style")) or setting_item("hotel_location_search_style") == "normal" ) ? "readonly" : ""  }} placeholder="{{__("Where are you going?")}}" value="{{ $location_name }}" data-onLoad="{{__("Loading...")}}"
                           data-default="{{ json_encode($list_json) }}">
                    <input type="hidden" class="child_id" name="location_id" value="{{Request::query('location_id')}}">
                </div>
            </div>
        </div>
    </div>
</div>