<?php

use Illuminate\Http\Request;
//use App\Models\UserInfo;
//use App\Models\UserLogin;

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

/*
Route::middleware('auth:api')->get('/user', function (Request $request) {

    return $request->user();
}); */

/// Route::get('login', array('uses' => 'LoginController@showLogin')) ;
/// Route::post('/login', array('uses' => 'LoginController@doLogin')) ;

Route::post('login', 'LoginController@doLogin') ;

Route::get('logout', array('uses' => 'LoginController@doLogout')) ;

Route::get('/shop/show', 'ShopController@Show'); //->middleware('auth:api'); /shop/show
Route::get('/shop/fab_ric/{fab_ric}', 'ShopController@Show_fab_ric'); //->middleware('auth:api');
Route::get('/shop/type/{type}', 'ShopController@Show_type'); //->middleware('auth:api');
Route::get('/shop/show/{fab_ric}/{type}', 'ShopController@Show_fab_ric_and_type'); //->middleware('auth:api');

Route::get('/auth/create/{user_name}/{pass}', 'AuthController@createAuthenticate'); //->middleware('auth:api');
Route::get('/auth/get', 'AuthController@getAuthenticate');//->middleware('auth:api');


