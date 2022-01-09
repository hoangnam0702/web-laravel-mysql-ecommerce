<?php

use App\Http\Controllers\Api\CartController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\CheckoutController;
use App\Http\Controllers\Api\HomeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::resource('/home', HomeController::class);
Route::resource('/category', CategoryController::class);

Route::get('cart', [CartController::class, 'cartList']);
Route::post('cart', [CartController::class, 'addToCart']);
Route::post('cart/update-cart', [CartController::class, 'updateCart']);
Route::delete('cart/{id}', [CartController::class, 'removeCart']);
Route::get('cart/clear', [CartController::class, 'clearAllCart']);

Route::get('checkout', [CheckoutController::class, 'checkout']);
Route::get('buynow/{id}', [CheckoutController::class, 'buyNow']);
Route::get('buynow-checkout/{id}', [CheckoutController::class, 'buyNowCheckout']);

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
