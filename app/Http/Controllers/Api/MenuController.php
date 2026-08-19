<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Botble\Menu\Facades\Menu;

class MenuController extends Controller
{
    /**
     * GET /api/v1/menu/{location}
     *
     * Botble's REST API has no built-in endpoint for menus (Appearance ->
     * Menus in the admin panel) — only Blade rendering via Menu::renderMenuLocation().
     * This reuses that same documented, public method so name/url/target resolution
     * for every menu-item type (custom link, page, post category, tag) stays exactly
     * what the admin panel configured — we just swap the output format to JSON
     * instead of an HTML <ul>, via the custom-menu Blade view below.
     *
     * $location is the menu's "Display location" slug from the admin panel —
     * typically "main-menu", "header-menu", or "footer-menu"
     * (Appearance -> Menus -> [edit menu] -> Display location).
     */
    public function show(string $location)
    {
        $json = Menu::renderMenuLocation($location, [
            'theme' => true,
            'view' => 'custom-menu',
        ]);

        $items = json_decode((string) $json, true);

        return response()->json([
            'error' => false,
            'data' => is_array($items) ? $items : [],
            'message' => null,
        ]);
    }
}
