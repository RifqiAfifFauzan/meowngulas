<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\SlideController;


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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [FrontendController::class, 'index']);
Route::get('/detail-review/{slug}', [FrontendController::class, 'detailreview'])->name('detail-review');
Route::get('/detail-news/{slug}', [FrontendController::class, 'detailnews'])->name('detail-news');
Route::get('/home-review', [FrontendController::class, 'listreview'])->name('home-review');
Route::get('/home-news', [FrontendController::class, 'listnews'])->name('home-news');
Route::get('/home-genre', [FrontendController::class, 'listgenre'])->name('home-genre');
Route::get('/home-genre/{slug}', [FrontendController::class, 'showReviewByGenre'])->name('review-genre');
Route::get('/search', [FrontendController::class, 'search'])->name('search');

Auth::routes();

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
Route::resource('/genre', GenreController::class);
Route::resource('/review', ReviewController::class);
Route::resource('/news', NewsController::class);
Route::resource('/slide', SlideController::class);
