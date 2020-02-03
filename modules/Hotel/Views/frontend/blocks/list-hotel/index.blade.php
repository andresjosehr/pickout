<style type="text/css">
    .list-hotel-dark {
        background: #1e1e1e;
        padding: 20px;
        margin-bottom: 0px;
    }
    .list-hotel-dark h2.title {
        color: #fff;
    }
    .list-hotel-dark .sub-title {
        color: #d5d5d5 !important;
    }
    .list-hotel-dark .item-loop {
        background: #fff;
    }
    .list-hotel-dark .bravo-list-hotel.layout_carousel {
        margin: 0 !important;
    }

    #car1{
        position: relative;
    }

    #car1 .owl-nav {
        display: block !important;
        position: absolute;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
        width: 100%;
    }
    #car1 .owl-next{
        position: absolute;
        right: -42px;
        margin-left: 0;
        margin-top: -30px;
        background: transparent;
        border: 0
    }
    #car1 .owl-next span{
        color: #fff;
        font-size: 72px;
    }
     #car1 .owl-prev{
        position: absolute;
        left: -42px;
        margin-left: 0;
        margin-top: -30px;
        background: transparent;
        border: 0;
     }

     #car1 .owl-prev span{
        color: #fff;
        font-size: 72px;
     }
     #car1 .list-item{
        position: relative;
     }
     *:focus {
        outline: none !important;
    }
    .triangle-4 {
      width: 60px;
        height: 30px;
        border-top: solid 30px rgb(255,255,255);
        border-left: solid 30px transparent;
        border-right: solid 30px transparent;
        position: absolute;
        top: -1px;
        right: 0;
        left: 0;
        margin: auto !important;
    }
    .triangle-5 {
      width: 60px;
        height: 30px;
        border-top: solid 30px rgb(30, 30, 30);
        border-left: solid 30px transparent;
        border-right: solid 30px transparent;
        position: absolute;
        bottom: -29px;
        left: 0;
        right: 0;
        margin: auto;
    }

    
    @media (min-width: 1200px) {
        #car1 .owl-carousel.owl-drag .owl-item {
            width: 266.25px !important;
        }
    }
</style>
<div class="container-fluid list-hotel-dark" id="car1"> 
    <div class="triangle-4"></div>
    <div class="triangle-5"></div>

    <div class="container"  style="max-width: 100% !important;">
    
        <div class="bravo-list-hotel layout_{{$style_list}}">
            
            @if($title)

            <h2 class="title text-center font-weight-bold" style="padding-top: 30px;">

                {{$title}}

            </h2>

            @endif

            @if($desc)

                <h3 class="sub-title text-center">

                    {{$desc}}

                </h3>

            @endif

            <div class="list-item">

                @if($style_list === "normal")

                    <div class="row">

                        @foreach($rows as $row)

                            <div class="col-lg-{{$col ?? 3}} col-md-6">

                                @include('Hotel::frontend.layouts.search.loop-grid')

                            </div>

                        @endforeach

                    </div>

                @endif

                @if($style_list === "carousel")

                    <div class="owl-carousel">

                        @foreach($rows as $row)

                            @include('Hotel::frontend.layouts.search.loop-grid')

                        @endforeach

                    </div>

                @endif

                <div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div>

            </div>

        </div>

    </div>

</div>