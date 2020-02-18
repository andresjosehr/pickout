@if($row->banner_image_id)
    @php
        $background='background-image: url('.$row->getBannerImageUrlAttribute('full').')';
    @endphp
@else
    @php
        $background='background-color: gray';
    @endphp
@endif
    <div class="bravo_banner @if(explode("/", Request::url())[count(explode("/", Request::url()))-2]=='alojamientos') bravo_banner_single @endif" style="background-image: url('{{$row->getBannerImageUrlAttribute('full')}}')">
        <div class="background-filter-banner-location"></div>
        <div class="container">
            <div class="bravo_gallery">
                <div class="row div-banner-des">
                    <div class="col-12 position-absolute caja-title-aloja">  
                            <div class="banner-aloja-ubi mb-2">
                                <script type="text/javascript">console.log('<?php print_r($row) ?>')</script>
                                <a><span>{{$row->address}}</span></a>
                                <a href="{{ url('/location/'.$row->location->slug) }}"><span>{{$row->location->name}}</span></a>
                            </div>
                            <h1 class="aloja-title">{{$translation->title}}</h1>
                    </div>
                    <div class="col-6 position-absolute caja-descrip-aloja">
                            <div class="banner-aloja-review bravo_content">
                                <div class="g-header">
                                    @if($row->getReviewEnable())
                                        @if($row->review_data)
                                            <div class="review-score">
                                                <div class="head">
                                                    <div class="left">
                                                        <span class="head-rating">{{$row->review_data['score_text']}}</span>
                                                        <span class="text-rating">{{__("from :number reviews",['number'=>$row->review_data['total_review']])}}</span>
                                                    </div>
                                                    <div class="score">
                                                        {{$row->review_data['score_total']}}<span>/5</span>
                                                    </div>
                                                </div>
                                                <div class="foot">
                                                    {{__(":number% of guests recommend",['number'=>$row->recommend_percent])}}
                                                </div>
                                            </div>
                                        @endif
                                    @endif
                                </div>
                            </div>
                            @php
                            if ($row->sale_price) {
                                $price=$row->sale_price;
                            }else{
                                $price=$row->price;
                            }
                            @endphp
                            <div class="banner-aloja-descrip">
                                {{$row->termsByAttributeInListingPage[0]->name}} ubicado en {{$row->address}}, {{$row->location->name}}, cuenta con diferentes tipo de habitaciones con precio desde  {{$price}} $
                            </div>
                            <div class="star-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                    </div>
                </div>
                <div class="btn-group">
                    @if($row->video)
                        <a href="#" class="btn btn-transparent has-icon bravo-video-popup" data-toggle="modal" data-src="{{ str_ireplace("watch?v=","embed/",$row->video) }}" data-target="#myModal">
                            <i class="input-icon field-icon fa">
                                <svg height="18px" width="18px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve">
                                    <g fill="#FFFFFF">
                                        <path d="M2.25,24C1.009,24,0,22.991,0,21.75V2.25C0,1.009,1.009,0,2.25,0h19.5C22.991,0,24,1.009,24,2.25v19.5
                                            c0,1.241-1.009,2.25-2.25,2.25H2.25z M2.25,1.5C1.836,1.5,1.5,1.836,1.5,2.25v19.5c0,0.414,0.336,0.75,0.75,0.75h19.5
                                            c0.414,0,0.75-0.336,0.75-0.75V2.25c0-0.414-0.336-0.75-0.75-0.75H2.25z">
                                        </path>
                                        <path d="M9.857,16.5c-0.173,0-0.345-0.028-0.511-0.084C8.94,16.281,8.61,15.994,8.419,15.61c-0.11-0.221-0.169-0.469-0.169-0.716
                                            V9.106C8.25,8.22,8.97,7.5,9.856,7.5c0.247,0,0.495,0.058,0.716,0.169l5.79,2.896c0.792,0.395,1.114,1.361,0.719,2.153
                                            c-0.154,0.309-0.41,0.565-0.719,0.719l-5.788,2.895C10.348,16.443,10.107,16.5,9.857,16.5z M9.856,9C9.798,9,9.75,9.047,9.75,9.106
                                            v5.788c0,0.016,0.004,0.033,0.011,0.047c0.013,0.027,0.034,0.044,0.061,0.054C9.834,14.998,9.845,15,9.856,15
                                            c0.016,0,0.032-0.004,0.047-0.011l5.788-2.895c0.02-0.01,0.038-0.027,0.047-0.047c0.026-0.052,0.005-0.115-0.047-0.141l-5.79-2.895
                                            C9.889,9.004,9.872,9,9.856,9z">
                                        </path>
                                    </g>
                                </svg>
                            </i>{{__("Hotel Video")}}
                        </a>
                    @endif
                </div>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item bravo_embed_video" src="" allowscriptaccess="always" allow="autoplay"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @for($i=1; $i<3; $i++)
        <div class="container container-contact-aloja @if($i==2) container-contact-sticky @endif" style="height: 96px;">
            <div class="bg-dark position-absolute w-100 barra-contact" style="left: 0;padding: 32px 0px;">
                    <div class="contact-info-aloja" style="padding:13px 0px;">
                        @if($row->phone)
                            <a class="caja-contact-aloja mx-5" href="tel:{{$row->phone}}">
                                <div>
                                    <i class="fal fa-phone-alt mr-2"></i>
                                </div>
                                <div>
                                    <span class="contact-info-aloja-nom"> Telefono </span><br>
                                    <span class="contact-info-aloja-especi">{{$row->phone}}</span>
                                </div>
                            </a>
                        @endif
                        @if($row->whatsapp)
                            <a class="caja-contact-aloja mx-5" href="https://wa.me/{{$row->whatsapp}}">
                                <div>
                                    <i class="icofont-brand-whatsapp mr-2"></i>
                                </div>
                                <div>
                                    <span class="contact-info-aloja-nom"> Whatsapp </span><br>
                                    <span class="contact-info-aloja-especi">{{$row->whatsapp}}</span>
                                </div>
                            </a>
                        @endif
                        @if($row->email)
                            <a class="caja-contact-aloja ml-5" href="mailto:{{$row->email}}">
                                <div>
                                    <i class="fal fa-envelope-open-text mr-2"></i>
                                </div>
                                <div>
                                    <span class="contact-info-aloja-nom">Enviar email </span><br>
                                    <span class="contact-info-aloja-especi">{{$row->email}}</span>
                                </div>
                            </a>
                        @endif
                        @if($row->website)
                            <a class="caja-contact-aloja mx-5" href="{{$row->website}}" target="_blank">
                                <div>
                                    <i class="icofont-web mr-2"></i>
                                </div>
                                <div>
                                    <span class="contact-info-aloja-nom"> Ver sitio </span><br>
                                    <span class="contact-info-aloja-especi">{{$row->website}}</span>
                                </div>
                            </a>
                        @endif
                    </div>
            </div>
        </div>
    @endfor
    @if($row->banner_image_id)
    @php
        $background='background-image: url('.$row->getBannerImageUrlAttribute('full').')';
    @endphp
@else
    @php
        $background='background-color: gray';
    @endphp
@endif

