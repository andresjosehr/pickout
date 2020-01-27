<?php

use Illuminate\Support\Facades\Route;



Route::get('/','GastronomiaController@index')->name('gastronomia.admin.index');



Route::match(['get'],'/create','GastronomiaController@create')->name('gastronomia.admin.create');

Route::match(['get'],'/edit/{id}','GastronomiaController@edit')->name('gastronomia.admin.edit');



Route::post('/store/{id}','GastronomiaController@store')->name('gastronomia.admin.store');



Route::get('/getForSelect2','GastronomiaController@getForSelect2')->name('gastronomia.admin.getForSelect2');

Route::post('/bulkEdit','GastronomiaController@bulkEdit')->name('gastronomia.admin.bulkEdit');

