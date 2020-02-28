@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="item-loop py-3 px-4 {{$wrap_class ?? ''}}" itemscope itemtype="http://schema.org/Hotel" style='padding: 10px 18px !important;box-shadow: 0 5px 5px rgba(0,0,0,0.07) !important;'>
    @if($row->is_featured == "1")
        <div class="featured">
            {{__("Featured")}}
        </div>
    @endif
    <div class='row'>
    	<div class='col-5 px-2'>
		    <div class="thumb-image ">
		        <a @if(!empty($blank)) target="_self" @endif href="{{$row->getDetailUrl()}}">
		            @if($row->image_url)
		                @if(!empty($disable_lazyload))
		                    <img src="{{$row->image_url}}" class="img-responsive" alt="">
		                @else
		                    {!! get_image_tag($row->image_id,'medium',['class'=>'img-responsive','alt'=>$translation->title]) !!}
		                @endif
		            @endif
		        </a>
		        @if($row->star_rate)
		            <div class="star-rate star-rate-default">
		                <div class="list-star">
		                    <ul class="booking-item-rating-stars">
		                        @for ($star = 1 ;$star <= $row->star_rate ; $star++)
		                            <li><i class="fa fa-star"></i></li>
		                        @endfor
		                    </ul>
		                </div>
		            </div>
		        @endif
		        <div class="service-wishlist {{$row->isWishList()}}" data-id="{{$row->id}}" data-type="{{$row->type}}">
		            <i class="fa fa-heart"></i>
		        </div>
		    </div>
		</div>
		<div class='col-7 px-2'>
		    <div class="location  location_modern_carousel">
		        @if(!empty($row->location->name))
		            @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
		            <i class="icofont-paper-plane"></i>
		            {{$location->name ?? ''}}
		        @endif
		    </div>
		    <div class="item-title pl-0 p-0">
		        <a @if(!empty($blank)) target="_self" @endif href="{{$row->getDetailUrl()}}" itemprop='name' style='font-weight: 700;'>
		            @if($row->is_instant)
		                <i class="fa fa-bolt d-none"></i>
		            @endif
		            {{$translation->title}}
		        </a>
		        @if($row->discount_percent)
		            <div class="sale_info">{{$row->discount_percent}}</div>
		        @endif
		    </div>
		    <div class="location location-default pl-0">
		        @if(!empty($row->location->name))
		            @php $location =  $row->location->translateOrOrigin(app()->getLocale()) @endphp
		            <i class="icofont-paper-plane"></i>
		            {{$location->name ?? ''}}
		        @endif
		    </div>
		    @if(setting_item('hotel_enable_review'))
		    <?php
		    $reviewData = $row->getScoreReview();
		    $score_total = $reviewData['score_total'];
		    ?>
		    <div class="service-review service-review-normal pl-0 pt-1" style='font-size: 13px;'>
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
		    <div class="info info-normal pl-0">
		        <div class="g-price">
		            <div class="prefix">
		                <span class="fr_text">{{__("from")}}</span>
		            </div>
		            <div class="price">
		                <span class="text-price">{{ $row->display_price }} <span class="unit">{{__("/night")}}</span></span>
		            </div>
		        </div>
		    </div>
		    <div class="info-hover pl-0" style="display: none;">
		            <div class="service-review">
		                <span class="rate">
		                    @if($reviewData['total_review'] > 0) {{$score_total}}/5 @endif <span class="rate-text">{{$row->termsByAttributeInListingPage[0]->name}}</span>
		                </span>
		            </div>
		            <div class="info">
		                <div class="g-price">
		                    <div class="prefix">
		                        <span class="fr_text">{{__("from")}}</span>
		                    </div>
		                    <br>
		                    <div class="price">
		                        <span class="text-price">{{ $row->display_price }} <span class="unit">{{__("/night")}}</span></span>
		                    </div>
		                </div>
		            </div>
		            @if($row->star_rate)
		                <div class="star-rate">
		                    <div class="list-star">
		                        <ul class="booking-item-rating-stars">
		                            @for ($star = 1 ;$star <= $row->star_rate ; $star++)
		                                <li><i class="fa fa-star"></i></li>
		                            @endfor
		                        </ul>
		                    </div>
		                </div>
		            @endif
		            <div class="div-redirect"></div>
		    </div>
		    <div class='content-map text-right'>
		    	<p style='font-size: 12px;width: 75%;line-height: .9;float: right;'>Añade fechas para ver los precios</p>
		    </div>
		</div>
    </div>
</div>