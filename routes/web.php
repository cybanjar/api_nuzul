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
    return 'ok';
});

$router->post('/surat', 'SurahController@create');
$router->get('/surat', 'SurahController@index');
$router->get('/surat/{id}', 'SurahController@show');
$router->put('/surat/{id}', 'SurahController@update');
$router->delete('/surat/{id}', 'SurahController@destroy');

$router->post('/register', 'UserController@register');
$router->post('/login', 'UserController@login');

$router->post('/profile', 'ProfileController@create');