@if($row->banner_image_id)
    <div class="bravo_banner" style="background-image: linear-gradient(0deg,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.2)),url('{{$row->getBannerImageUrlAttribute('full')}}') !important">
    	<div class="background-filter-banner-location"></div>
    	<h2 class="text-center location-name">{{$translation->name}}</h2>
    </div>
@endif

