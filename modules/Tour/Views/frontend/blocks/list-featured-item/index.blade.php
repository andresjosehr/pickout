@if($list_item)
    <div class="bravo-featured-item {{$style ?? ''}}" style="background: #111;margin-top: 0; padding-top: 30px;position: relative;margin-bottom: 60px;">
        <div class="container">
            <div class="row">
                @foreach($list_item as $k=>$item)
                    <?php 
                    if (isset($item['icon_image'])) {
                        $image_url = get_file_url($item['icon_image'], 'full');
                    }
                     ?>
                    <div class="col-md-4" @if (isset($item['link']))  onclick="window.location.href = '{{$item['link']}}';" @endif style="cursor:pointer;">
                        <div class="featured-item" style="color: #fff;">
                            <div class="image">
                                @if(!empty($style) and $style == 'style2')
                                    <span class="number-circle" style="border-color: #ff6a3a;color: #ff6a3a;">{{$k+1}}</span>
                                @else
                                    @if (isset($item['icon_image'])) {
                                        <img src="{{$image_url}}" class="img-fluid">
                                    @endif
                                    @if (isset($item['icon'])) 
                                        <i style="font-size: 60px" class="{{ $item['icon'] }}"></i>
                                    @endif
                                @endif
                            </div>
                            <div class="content">
                                <h4 class="title" style="font-weight: bold;">
                                    {{$item['title']}}
                                </h4>
                                <div class="desc">{!! clean($item['sub_title']) !!}</div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            
        </div>
        <div class="triangle-5" style="width: 60px; height: 30px; border-top: solid 30px rgb(17, 17, 17); border-left: solid 30px transparent; border-right: solid 30px transparent; position: absolute; bottom: -29px; left: 0; right: 0; margin: auto;"></div>
    </div>
@endif