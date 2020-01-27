<div class="container">

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

                <div class="owl-carousel">

                    @foreach($rows as $row)

                        @include('Space::frontend.layouts.search.loop-gird')

                    @endforeach

                </div>

            @endif

        </div>

    </div>

</div>