@if (is_plugin_active('blog')) 
<div class="tabnews-area">
    <!-- Tabs -->
    <ul class="nav nav-tabs justify-content-center nav-justified" id="newsTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="latest-tab" data-bs-toggle="tab" data-bs-target="#latest" type="button" role="tab" aria-controls="latest" aria-selected="true">সর্বশেষ</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="popular-tab" data-bs-toggle="tab" data-bs-target="#popular" type="button" role="tab" aria-controls="popular" aria-selected="false">জনপ্রিয়</button>
        </li>
    </ul>

    <!-- Tab Content -->
    <div class="tab-content border border-top-0 p-3" id="newsTabContent">
        <!-- সর্বশেষ -->
        <div class="tab-pane fade show active" id="latest" role="tabpanel" aria-labelledby="latest-tab">
            <div class="d-flex flex-column gap-3">
                @foreach (get_latest_posts(4, []) as $post)
                <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                    <div class="flex-grow-1">
                        <a href="{{ $post->url }}" class="news-title">{{ $post->name }}</a>
                    </div>
                    <div class="img-hover-zoom-tb">
                        <img data-src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" width="150" class="lazyload img-fluid fixed-img " alt="{{ $post->name }}">
                    </div>
                </div>
                    @endforeach
            </div>
        </div>

        <!-- জনপ্রিয় -->
        <div class="tab-pane fade" id="popular" role="tabpanel" aria-labelledby="popular-tab">
            <div class="d-flex flex-column gap-3">
                @foreach (get_latest_posts(4, []) as $post)
                <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                    <div class="flex-grow-1">
                        <a href="{{ $post->url }}" class="news-title">{{ $post->name }}</a>
                    </div>
                    <div class="img-hover-zoom-tb">
                        <img data-src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" width="150" class="lazyload img-fluid fixed-img " alt="{{ $post->name }}">
                    </div>
                </div>
                    @endforeach
            </div>
        </div>
    </div>

    <!-- More Button -->
    <div class="text-center mt-3">
        <a href="/latest-news" class="btn btn-primary d-md-block">আরও</a>
    </div>
</div>
@endif