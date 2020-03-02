<form action="{{url( app_get_locale(false,false,'/').config('hotel.hotel_route_prefix') )}}" class="form bravo_form d-flex justify-content-start" method="get" onsubmit="return false;">
    @php 
    $hotel_map_search_fields = setting_item_array('hotel_map_search_fields');

    $hotel_map_search_fields = array_values(\Illuminate\Support\Arr::sort($hotel_map_search_fields, function ($value) {
        return $value['position'] ?? 0;
    }));

    @endphp
    @if(!empty($hotel_map_search_fields))
        @if (array_search('date', array_column($hotel_map_search_fields, 'field')))
            @include('Hotel::frontend.layouts.search-map.fields.date')
        @endif
        @if (array_search('price', array_column($hotel_map_search_fields, 'field')))
            @include('Hotel::frontend.layouts.search-map.fields.price')
        @endif
        @foreach($hotel_map_search_fields as $field)
            @switch($field['field'])
                @case ('location')
                    @include('Hotel::frontend.layouts.search-map.fields.location')
                @break
                @case ('attr')
                    @include('Hotel::frontend.layouts.search-map.fields.attr')

                    @if (array_search('attr', array_column($hotel_map_search_fields, 'field')))
                        @include('Hotel::frontend.layouts.search-map.advance-filter')
                    @endif
                @break
            @endswitch
        @endforeach
    @endif



</form>
