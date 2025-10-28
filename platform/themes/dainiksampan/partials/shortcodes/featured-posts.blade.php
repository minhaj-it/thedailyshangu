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
        {{-- প্রথম পোস্টটি বড় আকারে দেখানোর জন্য --}}
        @if(isset($posts[0]))
            <a href="{{ $posts[0]->url }}" class="card" >
                <div class="row">
                    <div class="col-md-6">
                        <div class="main-headline mb-3 ">
                            <h1>{{ $posts[0]->name }} </h1>
                            <p class="mt-2">{{ Str::limit($posts[0]->description, 150) }}</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="cover-news-zoom">
                            <img src="{{ RvMedia::getImageUrl($posts[0]->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $posts[0]->name }}" class="img-fluid">
                        </div>
                    </div>
                </div>
            </a>
        @endif

        <div class="h-row"></div>
        <div class="row cover-area">
            {{-- দ্বিতীয় পোস্ট থেকে বাকি পোস্টগুলো দেখানোর জন্য --}}
            @foreach($posts->slice(1, 2) as $post)
                <div class="col-md-6 cover-card mb-2">
                    <a href="{{ $post->url }}" class="">
                        <div class="d-flex flex-column">
                            <div class="card news-card">
                                <div class="card-body d-flex ">
                                    <div class="flex-grow-1">
                                        <h5 class="card-title">{{ $post->name }}</h5>
                                        <p class="card-text d-none d-sm-block">{{ Str::limit($post->description, 50) }} </p>
                                    </div>
                                    <div class="cover-news-zoom1">
                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="img-fluid" alt="{{ $post->name }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    @endif
@endif