<div class="container">

    <div class="bravo-list-locations @if(!empty($layout)) {{ $layout }} @endif @if($layout=='style_1') my-5 py-4 @endif">

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
                @php 
                $j=1;
                $corto=false;
                $DerechaAnterior=false;
                @endphp
                @foreach($rows as $key=>$row)

                    @php 

                    $size_col = 4;

                    if( !empty($layout) and (  $layout == "style_2" or $layout == "style_3" or $layout == "style_4" )){

                        $size_col = 4;

                    }else{


                        if (!$DerechaAnterior && !$corto && $j==1) {
                            $size_col = 8;
                        }

                        if (!$DerechaAnterior && !$corto && $j==2) {
                            $size_col = 4;
                        }

                        if ($DerechaAnterior && !$corto && $j==2) {
                            $size_col = 8;
                        }
                        if ($DerechaAnterior && !$corto && $j==1) {
                            $size_col = 4;
                        }
                        if ($corto) {
                            $size_col = 4;
                        }

                        if (count($rows)==$key+1) {
                            $size_col = "";
                            $size_col2 = "col-lg";
                        } else{
                            $size_col2 = "";
                        }

                    }

                    if (!isset($size_col2)) {
                        $size_col2='';
                    }

                    @endphp

                    <div class="col-lg-{{$size_col}} {{$size_col2}} col-md-6 {{$layout}}-column location-column">

                        @include('Location::frontend.blocks.list-locations.loop')

                    </div>

                    @php 
                        if (!$corto && $j==2) {
                            $j=0;
                            $corto=true;
                        }
                        if ($corto && $j==3){
                            $j=0;
                            $corto=false;
                            if ($DerechaAnterior) $DerechaAnterior=false;
                            if (!$DerechaAnterior) $DerechaAnterior=true;
                        }
                        $j++; 
                    @endphp
                @endforeach

            </div>

        </div>
            <button type="button" class="btn btn-primary mt-4 d-block d-md-none w-100 btn-mostrar-destinos" onclick="MostrarDestinos()">Mas destinos</button>
    </div>

</div>
