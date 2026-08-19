<?php

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
// Add this inside the SAME Route::group(['prefix' => 'api/v1', ...]) block
// that already has your posts/categories routes, so it ends up reachable
// at the same base URL your Next.js app already uses
// (NEXT_PUBLIC_API_URL + "/menu/{location}").

use App\Http\Controllers\Api\MenuController;

Route::prefix('v1')->group(function () {
    Route::get('menu/{location}', [MenuController::class, 'show']);
});
