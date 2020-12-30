<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return 'Ok';
});

$router->post('/surat', 'SurahController@create');
$router->get('/surat', 'SurahController@index');
$router->get('/surat/{id}', 'SurahController@show');
$router->put('/surat/{id}', 'SurahController@update');
$router->delete('/surat/{id}', 'SurahController@destroy');

$router->post('/register', 'UserController@register');
$router->post('/login', 'UserController@login');

$router->post('/profile', 'ProfileController@create');
$router->post('/posting', 'PostingController@create');
$router->get('/posting', 'PostingController@index');
$router->get('/posting/{id}', 'PostingController@show');
$router->put('/posting/{id}', 'PostingController@update');
$router->delete('/posting/{id}', 'PostingController@destroy');