<div class="container">

    <div class="bravo-list-locations @if(!empty($layout)) {{ $layout }} @endif">

        <h2 class="title">

            {{$title}}

        </h2>

        @if(!empty($desc))

            <h3 class="sub-title">

                {{$desc}}

            </h3>

        @endif

        <div class="list-item">

            <div class="row">

                @foreach($rows as $key=>$row)

                    <?php

                    $size_col = 4;

                    if( !empty($layout) and (  $layout == "style_2" or $layout == "style_3" or $layout == "style_4" )){

                        $size_col = 4;

                    }else{

                        if($key == 0){

                            $size_col = 8;

                        }

                    }

                    ?>

                    <div class="col-lg-{{$size_col}} col-md-6">

                        @include('Location::frontend.blocks.list-locations.loop')

                    </div>

                @endforeach

            </div>

        </div>

    </div>

</div>