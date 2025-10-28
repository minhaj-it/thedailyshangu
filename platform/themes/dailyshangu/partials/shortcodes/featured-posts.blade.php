@if (is_plugin_active('blog'))
    @php
        // ধাপ ১: আমরা একটু বেশি পোস্ট আনব (যেমন ১৫টি), যাতে হাতে বিকল্প থাকে।
        $allFeaturedPosts = \Botble\Blog\Models\Post::query()
            ->where('posts.is_featured', 1)
            ->where('posts.status', \Botble\Base\Enums\BaseStatusEnum::PUBLISHED)
            ->leftJoin('custom_fields', function ($join) {
                $join->on('posts.id', '=', 'custom_fields.use_for_id')
                    ->where('custom_fields.slug', '=', 'sort_order');
            })
            // *** গুরুত্বপূর্ণ: কালেকশনে ব্যবহারের জন্য custom_fields.value সিলেক্ট করতে হবে ***
            ->select('posts.*', 'custom_fields.value')
            ->orderByRaw("CAST(COALESCE(NULLIF(custom_fields.value, ''), 9999) AS UNSIGNED) ASC")
            ->orderBy('posts.created_at', 'DESC')
            ->limit(15) // বেশি করে পোস্ট আনা হলো
            ->get();

        // ধাপ ২: পোস্টগুলোকে দুটি গ্রুপে ভাগ করা হচ্ছে।
        [$sortedPosts, $regularPosts] = $allFeaturedPosts->partition(function ($post) {
            // যাদের 'value' (Sort Order) আছে এবং খালি নয়, তারা $sortedPosts গ্রুপে যাবে।
            return !empty($post->value);
        });

        // ধাপ ৩: ডুপ্লিকেট Sort Order ফেলে দিয়ে ইউনিক পোস্ট নেওয়া হচ্ছে।
        $uniqueSortedPosts = $sortedPosts->unique('value');

        // ধাপ ৪: ইউনিক সর্টেড পোস্ট এবং সাধারণ পোস্টগুলোকে একত্রিত করে সেরা ৪টি নেওয়া হচ্ছে।
        $posts = $uniqueSortedPosts->merge($regularPosts)->take(3);

    @endphp

@if($posts->isNotEmpty())
<div class="read-more-box">
<h4 class="fw-bold">আরও পড়ুন</h4>
<div class="row mini-card-0">
     @foreach($posts as $post)
<div class="col-sm-6 col-6 col-md-4">
    <a href="{{ $post->url }}" class="text-decoration-none text-dark">
        <div class="card mb-3">
            <div class="cate-two-zoom">
                <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="card-img-top fixed-img-two " alt="{{ $post->name }}">
            </div>
            <div class="card-body p-2">
                <h4 class="news-title-two"> {{ $post->name }} </h4>
            </div>
        </div>
    </a>
</div>
 @endforeach
</div>
</div>
@endif
@endif