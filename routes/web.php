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

Route::get('/', function () {
    return view('index');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/contact', [
    'uses' => 'HomeController@contact',
    'as' => 'contact'
]);

Route::get('/blog', [
    'uses' => 'HomeController@blog',
    'as' => 'blog'
]);
Route::get('/', [
    'uses' => 'HomeController@index',
    'as' => 'index'
]);
Route::get('/cursos', [
    'uses' => 'CursosController@index',
    'as' => 'index.cursos'
]);
Route::get('/cursos/add', [
    'uses' => 'CursosController@viewAdd',
    'as' => 'viewAdd.cursos'
]);