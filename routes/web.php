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

Route::get('/', function () {
    return view('welcome');
})->name('welcome');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/about-us', 'PagesController@aboutUs')->name('about-us');
Route::get('/contact-us', 'PagesController@contact')->name('contact-us');
Route::get('/blog', 'BlogController@getArticles')->name('article-list');
Route::get('/blog/{slug}', 'BlogController@getArticle')->name('getArticle');
// Add a Redirect route outside the group



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});