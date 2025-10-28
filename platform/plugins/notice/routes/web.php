<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Notice\Http\Controllers\NoticeController;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['prefix' => 'notices', 'as' => 'notice.'], function () {
        Route::resource('', NoticeController::class)->parameters(['' => 'notice']);
       
    });
});
