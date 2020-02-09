
@if($style_list === "modern_carousel")
    <div class="modern_carousel_gastro_ico">
        <i class="far fa-utensils"></i>
    </div>
@endif

<div class="container @if($style_list === "modern_carousel") modern_carousel_gastro_parent @endif">

    <div class="bravo-list-space layout_{{$style_list}}">

        @if($title)

        <h2 class="title">

            {{$title}}

        </h2>

        @endif

        @if($desc)

            <h3 class="sub-title">

                {{$desc}}

            </h3>

        @endif

        <div class="list-item">

            @if($style_list === "normal")

                <div class="row">

                    @foreach($rows as $row)

                        <div class="col-lg-{{$col ?? 3}} col-md-6">

                            @include('Space::frontend.layouts.search.loop-gird')

                        </div>

                    @endforeach

                </div>

            @endif

            @if($style_list === "carousel")

                <div class="owl-carousel carousel-default">

                    @foreach($rows as $row)

                        @include('Space::frontend.layouts.search.loop-gird')

                    @endforeach

                </div>

            @endif

            @if($style_list === "modern_carousel")

                <div class="owl-carousel modern_carousel_gastro">

                    @foreach($rows as $row)

                        @include('Space::frontend.layouts.search.loop-gird')

                    @endforeach

                </div>

            @endif

        </div>

    </div>

</div>