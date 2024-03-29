@extends('layouts.app',['container_class'=>'container-fluid','header_right_menu'=>true])

@section('head')

    <link href="{{ asset('module/space/css/space.css?_ver='.config('app.version')) }}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>

    <style type="text/css">

        .bravo_topbar, .bravo_footer {

            display: none

        }

    </style>

@endsection

@section('content')

    <div class="bravo_search_tour bravo_search_space">

        <div class="bravo_form_search_map">

            @include('Space::frontend.layouts.search-map.form-search-map')

        </div>

        <div class="bravo_search_map">

            <div class="results_map p-0">

                <div class="map-loading d-none">

                    <div class="st-loader"></div>

                </div>

                <div id="bravo_results_map" class="results_map_inner"></div>
                <div id="marker_details" class="marker_details"></div>
            </div>

            <div class="results_item">

                @include('Space::frontend.layouts.search-map.advance-filter')

                <div class="listing_items">

                    @include('Space::frontend.layouts.search-map.list-item')

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

    <script type="text/javascript" src="{{ asset('module/space/js/space-map.js?_ver='.config('app.version')) }}"></script>

@endsection