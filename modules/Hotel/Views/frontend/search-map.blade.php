@extends('layouts.app',['container_class'=>'container-fluid','header_right_menu'=>true])
@section('head')
    <link href="{{ asset('module/hotel/css/hotel.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <style type="text/css">
        .bravo_topbar, .bravo_footer {
            display: none
        }
    </style>
@endsection
@section('content')
<style>
	.loader-map-search{
		position: absolute;
		width: 100%;
		height: 100%;
		background:rgba(255, 255, 255, 0.63);
		z-index: 99;
		display: none;
	}
	.middle-div{
		display: table-cell;
		vertical-align: middle;
	}
	.loader-container{
		width: 160px !important;
		margin: 0 auto;
		background: white;
		border-radius: 5px;
		border: 1px solid #00000038;box-shadow: 0 2px 4px rgba(0,0,0,0.2);
	}
	.span-loader{
		font-size: 11px;
		margin-top: 10px;
		display: block;
		font-weight: bold;
	}
</style>
    <div class="bravo_search_tour bravo_search_space">
        <div class="row w-100 h-100 mx-0 px-0">
            <div class="col-xl-2 col-lg-3 col-md-3 d-md-block bravo_form_search_map bravo_form_search_map-1 w-100 h-100 px-0 overflow-auto">
            	<div class="loader-map-search d-md-none" style="position: fixed;">
            		<div class="text-center w-100 d-table h-100">
            			<div class="middle-div">
            				<div class="w-100 py-3 loader-container">
            					<div class="spinner-border" role="status">
								  <span class="sr-only">Loading...</span>
								</div>
								<div>
									<span class="span-loader">Cargando alojamientos</span>
								</div>
            				</div>
            			</div>
            		</div>
            	</div>
            	<h3 class='px-2 filtrar-por'>Filtrar por</h3>
            	<span onclick="HideFiltrosResponsive();" class="close-search-map-responsive" style="display: none;"><i class="far fa-times text-dark"></i></span>
                @include('Hotel::frontend.layouts.search-map.form-search-map')
            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 d-none d-md-block bravo_search_map w-100 h-100 px-0 overflow-auto">
            	<div class="loader-map-search" style="position: fixed;">
            		<div class="text-center w-100 d-table h-100">
            			<div class="middle-div">
            				<div class="w-100 py-3 loader-container">
            					<div class="spinner-border" role="status">
								  <span class="sr-only">Loading...</span>
								</div>
								<div>
									<span class="span-loader">Cargando alojamientos</span>
								</div>
            				</div>
            			</div>
            		</div>
            	</div>
                <div class="results_item">
                    <div class="listing_items">
                        @include('Hotel::frontend.layouts.search-map.list-item')
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-5 col-md-5 col-12 bravo_search_map w-100 h-100 px-0">
                <div class="results_map p-0">
                    <div class="map-loading d-none">
                        <div class="st-loader"></div>
                    </div>
                    <div id="bravo_results_map" class="results_map_inner h-100"></div>
                    {{-- <div id="marker_details" class="marker_details"></div> --}}
                </div>
            </div>
        </div>
        <button onclick="MostrarFiltrosResponsive();" type="button" class="btn btn-primary btn-filtrar-map p-absolute d-block d-md-none rounded-pill"> 
        	<i class="fas fa-search text-white"></i> Filtrar
        </button>
    </div>
@endsection

@section('footer')
    {!! App\Helpers\MapEngine::scripts() !!}
    <script>
    	function MostrarFiltrosResponsive() {
    		$('.bravo_form_search_map-1').fadeIn(200);
    	}

    	function HideFiltrosResponsive() {
    		$('.bravo_form_search_map-1').fadeOut(200);
    	}
        var bravo_map_data = {
            markers:{!! json_encode($markers) !!}
        };
    </script>
    <script type="text/javascript" src="{{ asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset('module/hotel/js/hotel-map.js?_ver='.config('app.version')) }}"></script>
@endsection