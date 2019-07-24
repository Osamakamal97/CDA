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

use App\Front\Arpage;
use App\Front\Enpage;

Route::namespace('FrontEnd')->prefix('')->group(function () {
    Route::get('/', ['as' => 'home', 'uses' => 'HomepageController@index']);
    Route::get('/home', ['as' => 'home', 'uses' => 'HomepageController@index']);
    Route::get('/home/{id?}', ['as' => 'front.home', 'uses' => 'HomepageController@home']);


    Route::get('/subjects/{id?}', ['as' => 'front.subjects', 'uses' => 'HomepageController@subject']);
    Route::get('/registration/{id?}', ['as' => 'front.registrations', 'uses' => 'HomepageController@home']);
    Route::get('/teachers', ['as' => 'front.teachers', 'uses' => 'HomepageController@teachers']);
    Route::get('/facilities/{id?}', ['as' => 'front.facilities', 'uses' => 'HomepageController@contact']);
    Route::get('/services/{id?}', ['as' => 'front.services', 'uses' => 'HomepageController@home']);
    Route::get('/contacts', ['as' => 'front.contacts', 'uses' => 'HomepageController@contact']);
    Route::get('/map',['as'=>'front.map','uses'=>'HomepageController@map']);


    Route::get('/application', ['as' => 'front.application', 'uses' => 'HomepageController@application']);
    Route::post('/application', ['as' => 'front.store.application', 'uses' => 'HomepageController@storeApplication']);
    Route::get('/advertisings', ['as' => 'front.advertisings', 'uses' => 'HomepageController@advertisings']);
    Route::get('/advertisings/{id?}', ['as' => 'front.advertising', 'uses' => 'HomepageController@advertising']);
    Route::get('/news', ['as' => 'front.news', 'uses' => 'HomepageController@news']);
    Route::get('/news/{id?}', ['as' => 'front.single.news', 'uses' => 'HomepageController@singleNews']);


    Route::get('/subjects/{id?}', ['as' => 'front.subjects', 'uses' => 'HomepageController@subject']);
    Route::get('/service/{id?}', ['as' => 'front.service', 'uses' => 'HomepageController@service']);
    Route::get('/teachers/{id?}', ['as' => 'front.profile', 'uses' => 'HomepageController@profile']);


});

Route::get('lang/{lang}', function ($lang) {
    session()->has('lang') ? session()->forget('lang') :'';
    $lang == 'ar' ? session()->put('lang', 'ar') : session()->put('lang', 'en');
    return back();
})->name('lang');




Route::group(['prefix'=>'admin' ,'namespace'=>'BackEnd'],function (){

    route::get('/','HomeController@index')->name('admin.home');
    route::resource('admins','AdminsController');
    route::resource('menus','MenusController');
    route::resource('menus/{menu}/items','ItemsController');
    route::resource('items/{item}/subitems','SubItemsController')->except(['show']);
    route::resource('arpages','ArPagesController');
    route::resource('enpages','EnPagesController');
    route::resource('messages','MessagesController')->only(['index','edit','destroy']);
    route::post('messages/{id}','MessagesController@replay')->name('messages.replay');

    route::resource('applications','ApplicationsController')->only(['index','edit','destroy']);
    route::post('applications/{id}','ApplicationsController@replay')->name('applications.replay');

    route::resource('settings','SettingsController')->only(['edit','update']);





    Route::get('lang/{lang}', function ($lang) {
        session()->has('lang') ? session()->forget('lang') :'';
        $lang == 'ar' ? session()->put('lang', 'ar') : session()->put('lang', 'en');
        return back();
    })->name('lang');



});

//
//Route::get('/',function(){
//
//});
