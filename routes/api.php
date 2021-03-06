<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/v1/login','LoginApiController@processLogin');
Route::post('/v1/signup','SignupApiController@processSignup');
Route::post('/v1/image_upload','ImageUploadController@index');
Route::resource('/v1/getSampleData','StaticDataApiController');
