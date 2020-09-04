<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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
Route::group(
    [
        'prefix' => '{locale}',
        'where' => ['locale' => '[a-zA-Z]{2}'],
        'middleware' => 'setLocale'
    ],
    function () {
        Route::get('/', function () {
            return view('welcome');
        });

        Auth::routes();

        Route::get('/home', 'HomeController@index')->name('home');
        Route::get('/blog', 'BlogController@getArticles')->name('getArticles');
    }
);
// Add a Redirect route outside the group
Route::get('/', function () {
    return redirect(app()->getLocale());
});





Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});