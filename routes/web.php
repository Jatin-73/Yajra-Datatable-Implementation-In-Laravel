<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'FrontController@dashboard')->name('front.dashboard');
Route::get('/order', 'FrontController@getstatus')->name('front.order');
Route::get('/email-tamplate', 'FrontController@getemplate')->name('front.email-tamplate');
Route::post('/email-tamplate', 'FrontController@storetamplate')->name('template-store');

Route::resource('manage-status', 'OrderStatusController');
Route::post('manage-status/update', 'OrderStatusController@update')->name('manage-status.update');
Route::get('manage-status/destroy/{id}', 'OrderStatusController@destroy');