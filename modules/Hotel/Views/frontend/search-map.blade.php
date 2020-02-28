@extends('layouts.app',['container_class'=>'container-fluid','header_right_menu'=>true])
@section('head')
    <link href="{{ asset('module/hotel/css/hotel.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <style type="text/css">
        .bravo_topbar, .bravo_footer {
            display: none
        }
    </style>
@endsection
@section('content')
    <div class="bravo_search_tour bravo_search_space">
        <div class="row w-100 h-100 mx-0 px-0">
            <div class="col-2 bravo_form_search_map w-100 h-100 px-0">
            	<h3 class='px-2'>Filtrar por</h3>
                    @include('Hotel::frontend.layouts.search-map.form-search-map')
            </div>
            <div class="col-4 bravo_search_map w-100 h-100 px-0">
                <div class="results_item">
                    @include('Hotel::frontend.layouts.search-map.advance-filter')
                    <div class="listing_items">
                        @include('Hotel::frontend.layouts.search-map.list-item')
                    </div>
                </div>
            </div>
            <div class="col-6 bravo_search_map w-100 h-100 px-0">
                <div class="results_map p-0">
                    <div class="map-loading d-none">
                        <div class="st-loader"></div>
                    </div>
                    <div id="bravo_results_map" class="results_map_inner h-100"></div>
                    {{-- <div id="marker_details" class="marker_details"></div> --}}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('footer')
    {!! App\Helpers\MapEngine::scripts() !!}
    <script>
        var bravo_map_data = {
            markers:{!! json_encode($markers) !!}
        };
    </script>
    <script type="text/javascript" src="{{ asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset('module/hotel/js/hotel-map.js?_ver='.config('app.version')) }}"></script>
@endsection