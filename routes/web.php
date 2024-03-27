<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\CategoryController;

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
});


// Route::get('categories','CategoryController@index')->name('categories.index');
Route::get('/categories', [CategoryController::class, 'index'])->name('categories.index');
Route::get('/categories/search', [CategoryController::class, 'search'])->name('categories.search');
Route::get('/categories/create', [CategoryController::class, 'create'])->name('categories.create');
Route::post('/categories/store', [CategoryController::class, 'store'])->name('categories.store');
Route::get('/categories/edit/{category}', [CategoryController::class, 'edit'])->name('categories.edit');
Route::put('/categories/update/{category}', [CategoryController::class, 'update'])->name('categories.update');
Route::delete('/categories/delete/{category}', [CategoryController::class, 'destroy'])->name('categories.destroy');


