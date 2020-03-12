<link href="https://fonts.googleapis.com/css?family=Trade+Winds&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.js"></script>
<script>window.image360={{$image360}}</script>
<div class="bravo-form-search-all" style="position: relative;background-image: linear-gradient(0deg,rgba(0, 0, 0, 0.2),rgba(0, 0, 0, 0.2));min-height: 600px; @if($image360=="false")background-image: url('{{$bg_image_url}}') @endif ;">
@if ($image360=="true")
    <div class="w-100 h-100" data-image='{{$bg_image_url}}' id='bravo-form-search-all456' style="z-index: 9;position: absolute;width: 100vw !important;height: 100% !important;top: 0;"></div>
@endif
    <div class="w-100 h-100" style="background: radial-gradient(circle, rgba(2,0,36,0) 50%, rgba(0,0,0,0.7651435574229692) 100%, rgba(0,212,255,0) 100%);z-index: 10;position: absolute;width: 100vw !important;height: 100% !important;top: 0;pointer-events: none;"></div>
    <div class="container" style="z-index: 9;position: relative;pointer-events: none;">
        <div class="row" style="max-width: 674px;margin: 0 auto;">
            <div class="col-lg-12">
                <h1 class="text-heading text-center" style="font-family: 'Trade Winds';">{{$title}}</h1>
                <div class="sub-heading text-center pt-2 pt-md-0 m-n3">{{$sub_title}}</div>
                <div class="g-form-control">
                    @if(!empty($service_types))
                        <div class="col-md-12 mx-0 px-0 col-first-input">
                            <div class="form-group" style="padding: 0px 6px;">
                                <i class="field-icon fa icofont-map d-none"></i>
                                <div class="form-content" style="z-index: 9;position: relative;">
                                    <select id="select-service-search" onchange="ChangeSelectFormSearch(this)"  class="form-control" style="font-weight: 700;height: 44px;">
                                        <option value="que_buscas">¿Que Buscas?</option>
                                        @foreach ($service_types as $k => $service_type)
                                            <?php
                                                $allServices = get_bookable_services();
                                                if(empty($allServices[$service_type])) continue;
                                                $module = new $allServices[$service_type];
                                            ?>
                                            <option value="bravo_{{$service_type}}">{{$module->getModelName()}}</option>
                                        @endforeach
                                    </select>
                                    <i class="far fa-search icon-input-search"></i>
                                </div>
                            </div>
                        </div>
                    @endif
                    <script type="text/javascript">
                        function ChangeSelectFormSearch(e) {
                            $("option[value='que_buscas']").remove()
                            $(".col-first-input").addClass("col-first-input2")
                            if ($(e).val()!="que_buscas") {
                                var idForm = $(e).val();
                                $(".tab-pane.active").fadeOut(300, function(){
                                    $(".tab-pane.active").removeClass("active");
                                    $("#"+idForm).addClass("active");
                                    $("#"+idForm).fadeIn(300);
                                })
                            }
                        }                        
                    </script>


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
                                    <div role="tabpanel" class="tab-pane @if($k == 0) active @endif div-form-search" style="display: none;" id="bravo_{{$service_type}}">
                                        @include(ucfirst($service_type).'::frontend.layouts.search.form-search')
                                    </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-lg-12 text-center mt-4 mt-md-2">
                <div class="descrip-div-banner">
                    <div>
                        <span class="text-white font-weight-bold" style="font-size: 18px;text-shadow: .0625rem .125rem .125rem #000;text-transform: uppercase;">
                            <i class="far fa-credit-card"></i> Ahorra dinero
                        </span>
                    </div>
                    <div class="mt-1">
                        <span class="text-white" style="text-shadow: .0625rem .125rem .125rem #000;">Contacta directamente a tú servicio y evita comisiones de intermediarios</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="background: linear-gradient(0deg, rgba(76,76,76,1) 0%, rgba(76,76,76,1) 0%, rgba(76,76,76,1) 4%, rgba(0,212,255,0) 100%); height: 200px; position: absolute; bottom: 0; width: 100%; z-index: 11;pointer-events: none;"></div>
    <div class="triangle-5" style="width: 60px; height: 30px; border-top: solid 30px rgb(76, 76, 76); border-left: solid 30px transparent; border-right: solid 30px transparent; position: absolute; bottom: -29px; left: 0; right: 0; margin: auto;"></div>
</div>