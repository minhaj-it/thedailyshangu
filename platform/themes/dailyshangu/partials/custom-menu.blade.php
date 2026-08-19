{{--
    Place at: platform/themes/<your-theme-name>/partials/custom-menu.blade.php

    Botble's default menu partial (platform/core/menu/resources/views/partials/default.blade.php)
    builds an HTML <ul>. This does the same walk over $menu_nodes but builds a
    JSON array instead — reusing Botble's own name/url/target resolution per node
    (custom link, page, post category, tag — whatever was configured in the
    admin panel) instead of guessing menu_nodes' database columns directly.

    Nested children are handled by recursively calling Menu::generateMenu()
    with this same view, then json_decode-ing that string back into an array —
    so a menu of any depth comes out as one nested JSON structure.
--}}
@php
    $__items = [];

    foreach ($menu_nodes as $row) {
        $__children = [];

        if ($row->has_child) {
            $__childJson = \Botble\Menu\Facades\Menu::generateMenu([
                'slug' => $menu->slug,
                'parent_id' => $row->id,
                'view' => 'custom-menu',
            ]);

            $__decoded = json_decode((string) $__childJson, true);
            $__children = is_array($__decoded) ? $__decoded : [];
        }

        $__items[] = [
            'id' => $row->id,
            'name' => $row->title,
            'url' => $row->url,
            'target' => $row->target,
            'children' => $__children,
        ];
    }

    echo json_encode($__items);
@endphp
