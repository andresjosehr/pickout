<form action="{{ route("space.search") }}" class="form bravo_form bravo_form-search" method="get">

    <div class="g-field-search">

        <div class="row">

            <div class="col-md-12 px-0 border-right">

                <div class="form-group">

                    <i class="field-icon fa icofont-map d-none"></i>
                    <label class="d-none">{{__("Location")}}</label>
                    <div class="form-content">

                        <?php

                        $location_name = "";

                        $list_json = [];

                        $traverse = function ($locations, $prefix = '') use (&$traverse, &$list_json , &$location_name) {

                            foreach ($locations as $location) {

                                $translate = $location->translateOrOrigin(app()->getLocale());

                                if (Request::query('location_id') == $location->id){

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

                            <input type="text" class="smart-search-location parent_text form-control" {{ ( empty(setting_item("space_location_search_style")) or setting_item("space_location_search_style") == "normal" ) ? "readonly" : ""  }} placeholder="{{__("Where are you going?")}}" value="{{ $location_name }}" data-onLoad="{{__("Loading...")}}"

                                   data-default="{{ json_encode($list_json) }}">

                            <input type="hidden" class="child_id" name="location_id" value="{{Request::query('location_id')}}">

                        </div>

                    </div>

                </div>

            </div>
                       

            

        </div>

    </div>

    <div class="g-button-submit">

        <button class="btn btn-primary btn-search" type="submit">{{__("Search")}}</button>

    </div>

</form>
                <script type="text/javascript">
                    function ChangeSearch(element) {
                        var idSearch = $(element).find("a").attr("id");

                        $(".search_service_hotel").map(function(){
                            $(this).click();
                        })

                    }
                </script>