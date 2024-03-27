<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryApiController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/categories', [CategoryApiController::class, 'index'])->name('categoriesApi.index'); //get data api with paginate
Route::get('/categories/search', [CategoryApiController::class, 'search'])->name('categoriesApi.search'); //get data and search + paginate
Route::post('/categories/store', [CategoryApiController::class, 'store'])->name('categoriesApi.store');
Route::get('/categories/show/{category}', [CategoryApiController::class, 'show'])->name('categoriesApi.show');
Route::put('/categories/update/{category}', [CategoryApiController::class, 'update'])->name('categoriesApi.update');
Route::delete('/categories/delete/{category}', [CategoryApiController::class, 'destroy'])->name('categoriesApi.destroy');
