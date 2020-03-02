@php
    $hotel_map_search_fields = setting_item_array('hotel_map_search_fields');
    $usedAttrs = [];
    foreach ($hotel_map_search_fields as $field){
        if($field['field'] == 'attr' and !empty($field['attr']))
        {
            $usedAttrs[] = $field['attr'];
        }
    }
    $selected = (array) request()->query('terms');
@endphp
<div id="advance_filters">
    <div class="ad-filter-b mb-5 mb-md-0">
        @foreach ($attributes as $item)
            @php
                if(in_array($item->id,$usedAttrs)) continue;
                $translate = $item->translateOrOrigin(app()->getLocale());
            @endphp
            <div class="filter-item px-0">
                <div class="filter-title mb-2">
                    <i class="far fa-hotel text-dark fx-1 mr-2 icon_new_search"></i>
                    <span style="font-size: 14px !important;font-weight: 600;color: #4b4b4b;">{{$translate->name}}</span>
                </div>
                <ul class="filter-items my-1">
                    @foreach($item->terms as $term)
                        @php $translate = $term->translateOrOrigin(app()->getLocale()); @endphp

                                <div class="my-1">
                                    <label class="container-checkbox" style="color:black;">
                                      {{$translate->name}}
                                      <input type="checkbox" class="input-search-map input-term-search" onchange="SendTermsSearchMap(this);" data-id="{{$term->id}}" name="advance-options">
                                      <span class="checkmark"></span>
                                    </label>
                                </div>

                                {{-- <li class="filter-term-item col-xs-6 col-md-4">
                                    <label><input @if(in_array($term->id,$selected)) checked @endif type="checkbox" name="terms[]" value="{{$term->id}}"> {{$translate->name}}
                                    </label>
                                </li> --}}
                    @endforeach
                </ul>
            </div>
        @endforeach
    </div>
    {{-- <div class="ad-filter-f text-right">
        <a href="#" onclick="return false" class="btn btn-primary btn-apply-advances">{{__("Apply Filters")}}</a>
    </div> --}}
</div>
