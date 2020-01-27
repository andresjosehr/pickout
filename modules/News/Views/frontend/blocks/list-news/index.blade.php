<div class="bravo-list-news">

    <div class="container">

        @if($title)

            <div class="title">

                <h2>{{$title}}</h2>

                @if(!empty($desc))

                    <div class="sub-title">

                        <h3 class="sub-title">{{$desc}}</h3>

                    </div>

                @endif

            </div>

        @endif

        <div class="list-item">

            <div class="row">

                @foreach($rows as $row)

                    <div class="col-lg-4 col-md-6">

                        @include('News::frontend.blocks.list-news.loop')

                    </div>

                @endforeach

            </div>

        </div>

    </div>

</div>