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

use App\Models\Product;
use App\Models\UserLogin;

Route::get('/', function () {
    return view('welcome');
});

Route::get('login', array('uses' => 'LoginController@showLogin')) ;
Route::post('login', array('uses' => 'LoginController@doLogin')) ;

Route::get('logout', array('uses' => 'Controller@doLogout')) ;


Route::get('/shop', function () {
    if(!Auth::check()) {
        return redirect('api/login');
    }
});

/*
Route::get('/product/preInsert', 'ProductController@preInsert') ;
Route::post('/product/insert', 'ProductController@insert') ;

Route::get('/product/preEdit', 'ProductController@preEdit') ;
Route::post('/product/edit', 'ProductController@edit') ;

Route::get('/product/preDel', 'ProductController@preDel') ;
Route::post('/product/del', 'ProductController@del') ;
Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');
*/