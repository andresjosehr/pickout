<link href="https://fonts.googleapis.com/css?family=Trade+Winds&display=swap" rel="stylesheet">

<div class="bravo-form-search-all" style="position: relative;background-image: linear-gradient(0deg,rgba(0, 0, 0, 0.2),rgba(0, 0, 0, 0.2)),url('{{$bg_image_url}}') !important;min-height: 600px;">
    <div style="position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    background: radial-gradient(circle, rgba(2,0,36,0) 50%, rgba(0,0,0,0.7651435574229692) 100%, rgba(0,212,255,0) 100%);"></div>
    <div class="container" style="z-index: 9;position: relative;">
        <div class="row" style="max-width: 674px;margin: 0 auto;">
            <div class="col-lg-12">
                <h1 class="text-heading text-center" style="font-family: 'Trade Winds';">{{$title}}</h1>
                <div class="sub-heading text-center m-n3">{{$sub_title}}</div>
                <div class="g-form-control">
                    <ul class="nav nav-tabs d-none" role="tablist" style="display: none !important;">
                        @if(!empty($service_types))
                            @foreach ($service_types as $k => $service_type)
                            <?php
                                $allServices = get_bookable_services();
                                if(empty($allServices[$service_type])) continue;
                                $module = new $allServices[$service_type];
                            ?>
                            <li role="bravo_{{$service_type}}">
                                <a href="#bravo_{{$service_type}}" class="@if($k == 0) active @endif" aria-controls="bravo_{{$service_type}}" role="tab" data-toggle="tab">
                                    <i class="{{ $module->getServiceIconFeatured() }}"></i>
                                    {{$module->getModelName()}}
                                </a>
                            </li>
                            @endforeach
                       @endif
                    </ul>
                    <div class="tab-content">
                        @if(!empty($service_types))
                            @foreach ($service_types as $k => $service_type)
                                <?php
                                $allServices = get_bookable_services();
                                if(empty($allServices[$service_type])) continue;
                                $module = new $allServices[$service_type];
                                ?>
                                    <div role="tabpanel" class="tab-pane @if($k == 0) active @endif" id="bravo_{{$service_type}}">
                                        @include(ucfirst($service_type).'::frontend.layouts.search.form-search')
                                    </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="background: linear-gradient(0deg, rgba(76,76,76,1) 0%, rgba(76,76,76,1) 0%, rgba(76,76,76,1) 4%, rgba(0,212,255,0) 100%); height: 200px; position: absolute; bottom: 0; width: 100%; z-index: 0;"></div>
    <div class="triangle-5" style="width: 60px; height: 30px; border-top: solid 30px rgb(76, 76, 76); border-left: solid 30px transparent; border-right: solid 30px transparent; position: absolute; bottom: -29px; left: 0; right: 0; margin: auto;"></div>
</div>
