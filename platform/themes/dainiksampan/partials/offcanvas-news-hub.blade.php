@php
    // সর্বশেষ প্রকাশিত ৫টি পোস্ট নিয়ে আসুন
    // আপনি চাইলে take(5) এর সংখ্যা পরিবর্তন করতে পারেন
    $latestPosts = collect();
    if (is_plugin_active('blog')) {
        $latestPosts = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)
            ->getModel()
            ->where('status', \Botble\Base\Enums\BaseStatusEnum::PUBLISHED)
            ->latest() // নতুন পোস্টগুলো আগে দেখাবে
            ->take(5)  // এখানে কয়টি পোস্ট দেখাতে চান তা দিন
            ->get();
    }
@endphp

<div class="offcanvas offcanvas-end" tabindex="-1" id="newsHubOffcanvas" aria-labelledby="newsHubOffcanvasLabel">
    <!-- Offcanvas Header -->
    <div class="offcanvas-header news-hub-header">
        <div id="newsHubOffcanvasLabel" class="offcanvas-title">
            {{-- সাইটের নাম ডাইনামিকভাবে আসবে Theme Options থেকে --}}
            <h5>{{ theme_option('site_title', config('app.name')) }}</h5>
            
            {{-- 'News' লিঙ্কটি আপনার ব্লগের মূল পেজে যাবে --}}
            <p class="powered-by">Latest <a href="{{ is_plugin_active('blog') ? get_blog_page_url() : url('/') }}">News</a></p>
        </div>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>

    <!-- Offcanvas Body with News List -->
    <div class="offcanvas-body p-0">
        @if ($latestPosts->isNotEmpty())
            <ul class="list-unstyled mb-0">
                {{-- লুপের মাধ্যমে প্রতিটি পোস্ট দেখান --}}
                @foreach ($latestPosts as $post)
                    <li>
                        <a href="{{ $post->url }}" class="news-list-item">
                            <div class="d-flex align-items-start px-3">
                                <img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" 
                                     alt="{{ $post->name }}" 
                                     class="news-image me-3">
                                <div>
                                    <p class="news-title mb-1">{{ $post->name }}</p>
                                    {{-- পোস্টটি কতক্ষণ আগে পাবলিশ হয়েছে তা দেখাবে --}}
                                    <small class="news-time">{{ $post->created_at->diffForHumans() }}</small>
                                </div>
                            </div>
                        </a>
                    </li>
                    
                    {{-- লুপের শেষ আইটেম ছাড়া বাকিগুলোর পর একটি <hr> দেখাবে --}}
                    @if (!$loop->last)
                        <hr class="my-0">
                    @endif
                @endforeach
            </ul>
        @else
            <p class="p-3 text-center">No recent news found.</p>
        @endif
    </div>
</div>