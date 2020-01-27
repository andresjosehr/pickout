<?php

use Illuminate\Support\Facades\Route;



// Gastronomia

Route::group(['prefix'=>config('gastronomia.gastronomia_route_prefix')],function(){

    Route::get('/{slug}','GastronomiaController@detail')->name("gastronomia.detail");;// Detail

    Route::get('/search/searchForSelect2','GastronomiaController@searchForSelect2')->name("gastronomia.searchForSelect");;// Search for select 2

});

