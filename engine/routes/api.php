<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'auth.verify'], function () {
    Route::prefix('column')->group(function () {
        Route::get('', [\App\Http\Controllers\ColumnController::class, 'get']);
        Route::post('', [\App\Http\Controllers\ColumnController::class, 'create']);
        Route::put('', [\App\Http\Controllers\ColumnController::class, 'batchUpdateColumns']);
        Route::delete('{id}', [\App\Http\Controllers\ColumnController::class, 'delete']);
    });
    Route::prefix('database')->group(function () {
        Route::get('', [\App\Http\Controllers\DatabaseDumpController::class, 'index']);
    });
    Route::get('list', [\App\Http\Controllers\CardController::class, 'getAll']);
});
