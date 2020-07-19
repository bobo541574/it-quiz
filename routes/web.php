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

// Welcome
Route::get('/welcome', function () {
    return view('welcome');
});

// Dashboard
Route::get('/dashboard', function () {
    return view('template.dashboard');
});

// Temlpate
Route::get('/template', function () {
    return view('template');
})->name('template');


// Controller

//FrontEnd Start





// Route::get('/', function () {
//     return view('front.homepage');
// })->name('home');

// Route::get('/', 'FrontendController@getCourses');




// Route::group(['middleware'=>['role:user']],function(){

// Route::get('/frontlevel','FrontendController@getlevels');

// Route::get('/frontcourse', function(){
// 	return view('level');
// })->name('frontcourse');

// });






Route::get('/', 'FrontendController@getCourses')->name('homepage');
//FrontEnd End

Route::get('/aboutus', function(){
	return view('front.aboutus');
	})->name('aboutus');

Route::get('/contactus', function(){
	return view('front.contactus');
	})->name('contactus');

// Route::get('/result', function(){
// 	return view('front.userresult');
// 	})->name('result');


Route::get('/accessdenied', function(){
 	return view('front.useraccessdeniedpage');
 })->name('accessdenied');


Route::get('/result/{uid}/', 'ResultController@index')->name('getuserresult');

Route::post('/userresult', 'FrontendController@userResult')->name('userresult');


Route::group(['middleware'=>['role:user|admin']],function(){

	Route::get('/frontlevel','FrontendController@getlevels')->name('frontlevel');

	Route::get('/getquestions/{cid}/{lid}', 'FrontendController@getquestions')->name('getquestions');

	Route::post('/checkresult','FrontendController@checkresult')->name('checkresult');

	/*Route::get('/result', function(){
	return view('front.result');
	})->name('result');*/

	Route::get('/navcourse', 'FrontendController@getNavCourses')->name('getNavCourses');

});



Route::group(['middleware'=>['role:admin']],function(){

// Category 
Route::resource('/category','CategoryController');
// End Category

//Level View
Route::resource('/level','LevelController');
//End Level View

// Categorylevel
Route::resource('/categorylevel','CategoryLevelController');
// End Categorylevel

// Question
Route::resource('/question', 'QuestionController');
//End Question

});


Route::get('/sendemail', 'SendEmailController@index');
Route::post('/sendemail/send', 'SendEmailController@send');

//Route::post('/login','Auth.LoginController')->name('login');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
