<div class="offcanvas offcanvas-end" tabindex="-1" id="categoryMenuOffcanvas" aria-labelledby="categoryMenuOffcanvasLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="categoryMenuOffcanvasLabel">ক্যাটাগরি</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body p-0">
        {{-- ডাইনামিক মেনু এখানে রেন্ডার হবে। আমরা একটি কাস্টম ভিউ ব্যবহার করব --}}
        {!!
            Menu::renderMenuLocation('category-menu', [
                'view' => 'category-menu-nodes',
            ])
        !!}
    </div>
</div>