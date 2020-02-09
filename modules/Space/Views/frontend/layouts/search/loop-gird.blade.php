@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="item-loop {{$wrap_class ?? ''}}">
    @if($row->is_featured == "1")
        <div class="featured">
            {{__("Featured")}}
        </div>
    @endif
    <div class="thumb-image ">
        <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl($include_param ?? true)}}">
            @if($row->image_url)
                @if(!empty($disable_lazyload))
                    <img src="{{$row->image_url}}" class="img-responsive" alt="">
                @else
                    {!! get_image_tag($row->image_id,'medium',['class'=>'img-responsive','alt'=>$row->title]) !!}
                @endif
            @endif
        </a>
        <div class="price-wrapper">
            {{--<div class="price">
                <span class="onsale">{{ $row->display_sale_price }}</span>
                <span class="text-price">{{ $row->display_price }} <span class="unit">{{__("/night")}}</span></span>
            </div>--}}
        </div>
        <div class="service-wishlist {{$row->isWishList()}}" data-id="{{$row->id}}" data-type="{{$row->type}}">
            <i class="fa fa-heart"></i>
        </div>
    </div>
    <div class="location location-modern" style="display: none;">
        @if(!empty($row->address))
            @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
            <i class="input-icon field-icon icofont-location-pin"></i>{{$row->address}}
        @endif
    </div>
    <div class="item-title">
        <a @if(!empty($blank)) target="_blank" @endif href="{{$row->getDetailUrl($include_param ?? true)}}">
            @if($row->is_instant)
                <i class="fa fa-bolt d-none"></i>
            @endif
            {{$translation->title}}
        </a>
        @if($row->discount_percent)
            <div class="sale_info">{{$row->discount_percent}}</div>
        @endif
    </div>
    <div class="location location-default">
        @if(!empty($row->address))
            @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
            <i class="input-icon field-icon icofont-location-pin"></i>{{$row->address}}
        @endif
    </div>
    @if(setting_item('space_enable_review'))
    <?php
    $reviewData = $row->getScoreReview();
    $score_total = $reviewData['score_total'];
    ?>
    <div class="service-review service-review-default">
        <span class="rate">
            @if($reviewData['total_review'] > 0) {{$score_total}}/5 @endif <span class="rate-text">{{$reviewData['review_text']}}</span>
        </span>
        <span class="review">
             @if($reviewData['total_review'] > 1)
                {{ __(":number Reviews",["number"=>$reviewData['total_review'] ]) }}
            @else
                {{ __(":number Review",["number"=>$reviewData['total_review'] ]) }}
            @endif
        </span>
    </div>
    @endif
    <div class="amenities amenities-default clearfix">
        @if($row->phone)
            <span class="amenity total" data-toggle="tooltip"  title="{{ __("Phone") }}">
            <i class="input-icon field-icon icofont-phone  "></i> <a href="tel:{{$row->phone}}">{{$row->phone}}</a>
            </span>
        @endif
        @if($row->hours_open)
        <span class="amenity bed" data-toggle="tooltip" title="{{__("Open Hours")}}">
                <i class="input-icon field-icon icofont-wall-clock"></i> <span class="{{$row->isOpen ? 'text-success' : 'text-danger'}}">
                    {{$row->isOpen ? 'Abierto' : 'Cerrado'}}
                </span>
            </span>    
        @endif
    </div>
    <div class="div-redirect"></div>
    <div class="info-hover">
        @if(setting_item('space_enable_review'))
    <?php
    $reviewData = $row->getScoreReview();
    $score_total = $reviewData['score_total'];
    ?>
    <div class="service-review">
        <span class="rate">
            @if($reviewData['total_review'] > 0) {{$score_total}}/5 @endif <span class="rate-text">{{$reviewData['review_text']}}</span>
        </span>
        <span class="review">
             @if($reviewData['total_review'] > 1)
                {{ __(":number Reviews",["number"=>$reviewData['total_review'] ]) }}
            @else
                {{ __(":number Review",["number"=>$reviewData['total_review'] ]) }}
            @endif
        </span>
    </div>
    @endif
    <div class="amenities clearfix">
        @if($row->phone)
            <span class="amenity total" data-toggle="tooltip"  title="{{ __("Phone") }}">
            <i class="input-icon field-icon icofont-phone  "></i> <a href="tel:{{$row->phone}}">{{$row->phone}}</a>
            </span>
        @endif
        @if($row->hours_open)
        <span class="amenity bed" data-toggle="tooltip" title="{{__("Open Hours")}}">
                <i class="input-icon field-icon icofont-wall-clock"></i> <span class="{{$row->isOpen ? 'text-success' : 'text-danger'}}">
                    {{$row->isOpen ? 'Abierto' : 'Cerrado'}}
                </span>
            </span>    
        @endif
    </div>
    </div>
        
        
        
    
</div>
