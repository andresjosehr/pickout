@extends('layouts.user')

@section('head')



@endsection

@section('content')

    <h2 class="title-bar no-border-bottom">

        {{$row->id ? __('Edit: ').$row->title : __('Add new space')}}

    </h2>

    @include('admin.message')

    @if($row->id)

        @include('Language::admin.navigation')

    @endif

    <div class="lang-content-box">

        <form action="{{route('space.vendor.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post">

            @csrf

            <div class="form-add-service">

                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">

                    <a data-toggle="tab" href="#nav-tour-content" aria-selected="true" class="active">{{__("1. Content")}}</a>

                    <a data-toggle="tab" href="#nav-tour-location" aria-selected="false">{{__("2. Locations")}}</a>

                    <a data-toggle="tab" href="#nav-attribute" aria-selected="false">{{__("3. Attributes")}}</a>

                </div>

                <div class="tab-content" id="nav-tabContent">

                    <div class="tab-pane fade show active" id="nav-tour-content">

                        @include('Space::admin/space/content')

                        @if(is_default_lang())

                            <div class="form-group">

                                <label>{{__("Featured Image")}}</label>

                                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}

                            </div>

                        @endif

                    </div>

                    <div class="tab-pane fade" id="nav-tour-location">

                        @include('Space::admin/space/location')

                    </div>

                    <div class="tab-pane fade" id="nav-attribute">

                            @include('Space::admin/space/attributes')

                        </div>


                </div>

            </div>

            <div class="d-flex justify-content-between">

                <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> {{__('Save Changes')}}</button>

            </div>

        </form>

    </div>

@endsection

@section('footer')

    <script type="text/javascript" src="{{ asset('libs/tinymce/js/tinymce/tinymce.min.js') }}" ></script>

    <script type="text/javascript" src="{{ asset('js/condition.js?_ver='.config('app.version')) }}"></script>

    <script type="text/javascript" src="{{url('module/core/js/map-engine.js?_ver='.config('app.version'))}}"></script>

    {!! App\Helpers\MapEngine::scripts() !!}

    <script>

        jQuery(function ($) {

            new BravoMapEngine('map_content', {

                fitBounds: true,

                center: [{{$row->map_lat ?? "51.505"}}, {{$row->map_lng ?? "-0.09"}}],

                zoom:{{$row->map_zoom ?? "8"}},

                ready: function (engineMap) {

                    @if($row->map_lat && $row->map_lng)

                    engineMap.addMarker([{{$row->map_lat}}, {{$row->map_lng}}], {

                        icon_options: {}

                    });

                    @endif

                    engineMap.on('click', function (dataLatLng) {

                        engineMap.clearMarkers();

                        engineMap.addMarker(dataLatLng, {

                            icon_options: {}

                        });

                        $("input[name=map_lat]").attr("value", dataLatLng[0]);

                        $("input[name=map_lng]").attr("value", dataLatLng[1]);

                    });

                    engineMap.on('zoom_changed', function (zoom) {

                        $("input[name=map_zoom]").attr("value", zoom);

                    });

                    engineMap.searchBox($('.bravo_searchbox'),function (dataLatLng) {

                        engineMap.clearMarkers();

                        engineMap.addMarker(dataLatLng, {

                            icon_options: {}

                        });

                        $("input[name=map_lat]").attr("value", dataLatLng[0]);

                        $("input[name=map_lng]").attr("value", dataLatLng[1]);

                    });

                }

            });

        })

    </script>

@endsection