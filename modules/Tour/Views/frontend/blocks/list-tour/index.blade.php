@if($style_list === "modern_carousel")
    <div class="modern_carousel">
        {{-- <i class="far fa-hiking"></i> --}}
    </div>
@endif

<div class="bravo-list-tour {{$style_list}}">

    <div class="container">

        @if($title)

            <div class="title">

                <h2> 
                    <span>{{$title}}</span>
                </h2>

                @if(!empty($desc))

                    <div class="sub-title">

                        <h3 class="sub-title">{{$desc}}</h3>

                    </div>

                @endif

            </div>

        @endif

        <div class="list-item">

            @if($style_list === "normal")

                <div class="row">

                    @foreach($rows as $row)

                        <div class="col-lg-{{$col ?? 3}} col-md-6">

                            @include('Tour::frontend.layouts.search.loop-gird')

                        </div>

                    @endforeach

                </div>

            @endif

            @if($style_list === "carousel")

                <div class="owl-carousel carousel-default">

                    @foreach($rows as $row)

                        @include('Tour::frontend.layouts.search.loop-gird')

                    @endforeach

                </div>

            @endif

            @if($style_list === "box_shadow")

                <div class="row row-eq-height">

                    @foreach($rows as $row)

                        <div class="col-lg-{{$col ?? 4}} col-md-6 col-item">

                            @include('Tour::frontend.blocks.list-tour.loop-box-shadow')

                        </div>

                    @endforeach

                </div>

            @endif

            @if($style_list === "modern_carousel")

                <div class="owl-carousel modern_carousel">

                    @foreach($rows as $row)

                        @include('Tour::frontend.layouts.search.loop-gird')

                    @endforeach

                </div>

            @endif

        </div>

    </div>

</div>