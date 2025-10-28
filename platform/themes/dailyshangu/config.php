<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

  'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function (Theme $theme): void {
        },
        
        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme): void {
            // You may use this event to set up your assets.

            $version = get_cms_version();

             $theme->asset()->container('footer')->usePath()->add('jquery', 'js/jquery-3.7.1.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap', 'js/bootstrap.bundle.min.js');
            $theme->asset()->container('footer')->usePath()->add('lazyload-js', 'js/lazysizes.min.js');
            $theme->asset()->container('footer')->usePath()->add('custom', 'js/main.js', ['jquery'], [], $version);

            $theme->asset()->usePath()->add('bootstrap-css', 'css/bootstrap.min.css');
            //$theme->asset()->usePath()->add('bootstrap-icons', 'fonts/bootstrap-icons.min.css');
            $theme->asset()->usePath()->add('style', 'style.css', [], [], $version);
            $theme->composer(['index', 'page', 'post'], function(View $view) {
                $view->withShortcodes();
            });

            if (function_exists('shortcode')) {
                $theme->composer(['index', 'page', 'post', 'custom-template'], function (View $view): void {
                    $view->withShortcodes();
                });
            }
        },
        

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function (Theme $theme): void {
            },
        ],
        
    ],
    
];
