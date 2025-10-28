@php  
    use Botble\Base\Enums\BaseStatusEnum;
    use Botble\Blog\Repositories\Interfaces\CategoryInterface;
    use Botble\Blog\Repositories\Interfaces\PostInterface;
    $categoryRepo = app(CategoryInterface::class);
    $postRepo = app(PostInterface::class);
    
@endphp

   @if (is_plugin_active('blog'))

    <main class="container py-3">
        <!-- Ad Banner -->
        <div class="ad-banner text-center my-3">
           <img src="img/ad_728x90.jpg" alt="" class="img-fluid">
        </div>

        <!-- Trending Bar -->
        <div class="trending-bar d-flex align-items-center mb-4">
            <span class="trending-label">ট্রেন্ডিং</span>
            <div class="d-none d-md-flex flex-wrap">
                <a href="#">এইচএসসি পরীক্ষা</a><a href="#">ইরান ইসরায়েল সংঘাত</a><a href="#">ডেঙ্গু</a><a href="#">করোনাভাইরাস</a>
            </div>
        </div>

        <!-- Main Content Grid -->
          <div class="row g-4">
                <div class="col-md-9 border-right">
                     [featured-posts][/featured-posts]
                </div>
                <div class="col-md-3">

                    <div class="right-ads">
                        <img class="img-fluid" src="/ads3.png" alt="">
                    </div>

                    <div class="opinion-section mt-3">
                        <h4>মতামত</h4>
                        <a href="#">
                            <div class="opinion-item d-flex align-items-center gap-3">
                            <img src="https://placehold.co/100x100/e9ecef/495057?text=Author" class="-circle" alt="Dr. Sultan Mahmud Rana">
                            <div>
                                <h6>শৃঙ্খলা ফেরাতে রাষ্ট্রবিজ্ঞানীরা কী তত্ত্ব দেন</h6>
                                <p>ড. সুলতান মাহমুদ রানা</p>
                            </div>
                        </div>
                        </a>
                    </div>

                </div>
          </div>
          <div class="h-row"></div>

        <!-- topnews -->
        <section>
        <div class="topnews-area">
            <div class="row">
                <div class="col-md-9">
@php
$categoryId = 9;
$category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
$postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 6);}
@endphp
    <div class="row topnews">
        @if (!empty($category) && $postCategories->count())
            @foreach ($postCategories as $post)
            <div class="col-md-4 tpcard">
                <a href="{{ $post->url }}">
                    <div class="d-flex flex-column gap-3 border-bottom">
                    <!-- Horizontal News Card 1 -->
                    <div class="card news-card-sm">
                        <div class="card-body d-flex gap-3 align-items-center">
                            <div class="flex-grow-1">
                            <h5 class="card-title">{{ $post->name }} </h5>
                            </div>
                            <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                        </div>
                    </div>
                <!-- Horizontal News Card 2 -->
                </div>
                </a>
            </div>
        @endforeach
    @endif
    </div>
                </div>
                <div class="col-md-3">
                    <!-- ads -->
                    <div class="right-ads">
                        <img class="img-fluid" src="img/ad_300x6000.jpg" alt="">
                    </div>

                </div>
            </div>
        </div>
        </section>
        <!-- জাতীয়তা -->
        <section class="cat-one">
            <div class="row g-4">
                <!-- Left Column (Main Story) -->
                <div class="col-md-9">

                        <div class="row">
                            @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                            @endphp
                            <div class="opinion-section mt-3">
                                <h4><a href="{{ $category->url }}">{{ $category->name }} </a></h4>
                            </div>

                            <div class="col-lg-7 border-right">
                                @php $firstPost = $postCategories->first(); @endphp
                                @if ($firstPost)
                                <div class="bg-cat-news card mb-3">
                                    <a href="{{ $firstPost->url }}">
                                        <div class="cate-two-zoom5">
                                           <img src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $firstPost->name }}" class="img-fluid">
                                        </div>
                                        <h3 class="pt-3">{{ $firstPost->name }} </h3>
                                        <p class="mt-2"> {{ Str::limit($firstPost->description, 130) }} </p>
                                    </a>
                                </div>
                                @endif
                            </div>
                            <!-- Middle Column (Secondary Stories) -->
                            <div class="col-lg-5">
                                <div class="d-flex flex-column gap-3">
                                     @foreach ($postCategories->skip(1) as $post)
                                    <!-- Horizontal News Card 1 -->
                                    <div class="card news-card border-bottom pb-3 img-hover-zoom">
                                        <div class="card-body d-flex gap-3 align-items-center">
                                            <div class="flex-grow-1">
                                                <a href="{{ $post->url }}">
                                                    <h5 class="card-title">{{ $post->name }}</h5>
                                                </a>
                                            </div>
                                            <a href="{{ $post->url }}">
                                                <div class="cate-two-zoom6">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                     @endforeach
                               
                                </div>
                            </div>
                        </div>
                </div>

                <!-- Right Column (Ad and Opinion) -->
                <div class="col-lg-3 border-left mt-5">
                    <!-- Bootstrap News Tab Section with Hover Effects -->
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
                                    <!-- News Item -->
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">আমাদের অনেক আগেই বিচ্ছেদ হওয়ার কথা ছিল : কাজল</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/nrb.webp" class="img-fluid fixed-img " alt="news1">
                                        </div>
                                    </div>
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">ভয়াবহ সড়ক দুর্ঘটনায় প্রাণ হারালেন অভিনেত্রী মাহির ভাই</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/iran.webp" class="img-fluid fixed-img " alt="news2">
                                        </div>
                                    </div>
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">‘পরিচালক বলেছে এটা লাগবেই, চাইলেও না করতে পারিনি’</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/nrb.webp" class="img-fluid fixed-img " alt="news3">
                                        </div>
                                    </div>
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">‘মামলাটা উঠাতে চাই, দেশ শান্তিতে রাখতে চাই’</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/nrb.webp" class="img-fluid fixed-img " alt="news4">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- জনপ্রিয় -->
                            <div class="tab-pane fade" id="popular" role="tabpanel" aria-labelledby="popular-tab">
                                <div class="d-flex flex-column gap-3">
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">জনপ্রিয়: তারকাদের বিয়ে ও বিচ্ছেদের খবর</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/nrb.webp" class="img-fluid fixed-img " alt="news5">
                                        </div>
                                    </div>
                                    <div class="d-flex lat-tab gap-2 border-bottom pb-2">
                                        <div class="flex-grow-1">
                                            <a href="#" class="news-title">জনপ্রিয়: রাজনীতি ও নেতাদের বিতর্ক</a>
                                        </div>
                                        <div class="img-hover-zoom-tb">
                                            <img src="img/nrb.webp" class="img-fluid fixed-img " alt="news6">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- More Button -->
                        <div class="text-center mt-3">
                            <a href="#" class="btn btn-primary d-md-block">আরও</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <div class="h-row"></div>

        <!-- সারাদেশ -->
        <section class="cat-two">
            <div class="cat-two-area my-4">
                 @php
                    $categoryId = 9;
                    $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                    if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                    $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                    @endphp
                    <div class="row g-4">
                        <div class="opinion-section mt-3">
                            <h4><a href="{{ $category->url }}">{{ $category->name }} </a></h4>
                        </div>
                        <!-- Featured News (Left) -->
                        <div class="col-lg-9 border-right">
                            @php $firstPost = $postCategories->first(); @endphp
                                    @if ($firstPost)
                            <div class="card ">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <a href="{{ $firstPost->url }}" class="d-block cate-two-zoom-big">
                                            <img src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $firstPost->name }}" class="img-fluid">
                                        </a>
                                    </div>
                                    <div class="col-md-6 d-flex flex-column justify-content-center">
                                        <a href="{{ $firstPost->url }}" class="text-decoration-none text-dark">
                                            <h3 class="fw-bold news-title-two-big">{{ $firstPost->name }}</h4>
                                        </a>
                                        <p class="text-muted small">
                                            {{ Str::limit($firstPost->description, 130) }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            @endif

                            <!-- News Cards (Grid) -->
                                <div class="row g-4 mt-3">
                                    @foreach ($postCategories->skip(1) as $post)
                                    <!-- News Item -->
                                    <div class="col-sm-6 col-6 col-md-4 border-right">
                                        <a href="{{ $post->url }}" class="text-decoration-none text-dark">
                                            <div class="card border-0 h-100">
                                                <div class="cate-two-zoom">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                                </div>
                                                <div class="card-body p-2">
                                                    <h4 class="news-title-two">{{ $post->name }} </h4>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                
                                </div>
                        </div>

                        <!-- Right Ad -->
                        <div class="col-lg-3">
                            {!! dynamic_sidebar('ads-1') !!}
                        </div>
                    </div>
            </div>
             <div class="h-row"></div>
        </section>

        <!-- খেলা -->
        <section class="cat-four">
            <div class="row">
                @php
                    $categoryId = 9;
                    $category = $categoryRepo->getFirstBy([
                        'status' => BaseStatusEnum::PUBLISHED,
                        'id' => $categoryId,
                    ]);
                    $postCategories = collect();
                    if ($category) {
                        $allRelatedCategoryIds = array_unique(array_merge(
                            $categoryRepo->getAllRelatedChildrenIds($categoryId),
                            [$categoryId]
                        ));
                        $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 7);
                    }
                    $firstPost = $postCategories->get(0);
                    $middlePosts = $postCategories->slice(1, 3); // index 1, 2, 3
                    $rightPosts = $postCategories->slice(4, 3);  // index 4, 5, 6
                    @endphp
                <div class="opinion-section mt-3">
                     @if ($category)
                    <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                    @endif
                </div>
                <div class="col-lg-4 border-right">
                     @if ($firstPost)
                        <div class="bg-cat-news card mb-3">
                            <a href="{{ $firstPost->url }}">
                                <div class="cate-two-zoom5">
                                    <img src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $firstPost->name }}" class="img-fluid">
                                </div>
                                <h4 class="pt-3"> {{ $firstPost->name }} </h4>
                                <p class="mt-2">{{ Str::limit($firstPost->description, 130) }}</p>
                            </a>
                        </div>
                     @endif
                </div>
                <!-- Middle Column (Secondary Stories) -->
                <div class="col-lg-4 border-right">
                    <div class="d-flex flex-column gap-3">
                       @foreach ($middlePosts as $post)
                        <div class="card news-card border-bottom pb-3 img-hover-zoom">
                            <div class="card-body d-flex gap-3 ">
                                <div class="flex-grow-1">
                                    <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                </div>
                                <a href="{{ $post->url }}">
                                   <div class="cate-two-zoom6">
                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <!-- right -->
                 <div class="col-lg-4">
                    <div class="d-flex flex-column gap-3">
                        <!-- Horizontal News Card 1 -->
                       @foreach ($rightPosts as $post)
                        <div class="card news-card border-bottom pb-3 img-hover-zoom">
                            <div class="card-body d-flex gap-3 ">
                                <div class="flex-grow-1">
                                    <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                </div>
                                <a href="{{ $post->url }}">
                                   <div class="cate-two-zoom6">
                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>

        <!-- Ad Banner -->
        <div class="ad-banner text-center my-3">
           <img src="img/ad_728x90.jpg" alt="" class="img-fluid">
        </div>

        <!-- বিনোদন -->
        <section class="cat-four">
            <div class="row">
                 @php
                    $categoryId = 9;
                    $category = $categoryRepo->getFirstBy([
                        'status' => BaseStatusEnum::PUBLISHED,
                        'id' => $categoryId,
                    ]);
                    $postCategories = collect();
                    if ($category) {
                        $allRelatedCategoryIds = array_unique(array_merge(
                            $categoryRepo->getAllRelatedChildrenIds($categoryId),
                            [$categoryId]
                        ));
                        $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 7);
                    }
                   $firstPost = $postCategories->slice(0, 3); // index 0,1,2
                    $middlePosts = $postCategories->slice(3, 1); // index 3
                    $rightPosts = $postCategories->slice(4, 3); // index 4,5,6
                    @endphp

                <div class="opinion-section mt-3">
                     @if ($category)
                    <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                    @endif
                </div>
               
                <!-- 1st left -->
                <div class="col-lg-4 border-right">
                    <div class="d-flex flex-column gap-3">
                            @foreach($firstPost as $post)
                            <div class="card news-card border-bottom pb-3 img-hover-zoom">
                            <div class="card-body d-flex gap-3 ">
                                <div class="flex-grow-1">
                                    <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                </div>
                                <a href="{{ $post->url }}">
                                   <div class="cate-two-zoom6">
                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <!-- midal -->
                 <div class="col-lg-4 border-right">
                 
                     @foreach ($middlePosts as $post)
                        <div class="bg-cat-news card mb-3">
                            <a href="{{ $post->url }}">
                                <div class="cate-two-zoom5">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                </div>
                                <h4 class="pt-3"> {{ $post->name }} </h4>
                                <p class="mt-2">{{ Str::limit($post->description, 130) }}</p>
                            </a>
                        </div>
                     @endforeach
                </div>
                <!-- right -->
                 <div class="col-lg-4">
                    <div class="d-flex flex-column gap-3">
                        @foreach ($rightPosts as $post)
                        <div class="card news-card border-bottom pb-3 img-hover-zoom">
                            <div class="card-body d-flex gap-3 ">
                                <div class="flex-grow-1">
                                    <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                </div>
                                <a href="{{ $post->url }}">
                                   <div class="cate-two-zoom6">
                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
         <div class="h-row mb-5"></div>

          <!-- অর্থনীতি -->
        <section class="cat-two">
            <div class="cat-two-area my-4">
                @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                            @endphp
                <div class="opinion-section mt-3">
                        @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                </div>

                <!-- News Cards (Grid) -->
                <div class="row g-4 mt-3">
                    @foreach ($postCategories as $post)
                    <div class="col-sm-6 col-6 col-md-3 border-right">
                        <a href="{{ $post->url }}" class="text-decoration-none text-dark">
                            <div class="card border-0 h-100">
                                <div class="cate-two-zoom">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid card-img-top fixed-img-two">
                                </div>
                                <div class="card-body p-2">
                                    <h4 class="news-title-two">{{ $post->name }}</h4>
                                </div>
                            </div>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
             <div class="h-row"></div>
        </section>

        <!-- রাজনীতি -->
        <section class="cat-one">
            <div class="row g-4">
                <!-- Left Column (Main Story) -->
                <div class="col-md-8">
                    @php
                    $categoryId = 9;
                    $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                        if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                    $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                    @endphp
                        <div class="row">
                            <div class="opinion-section mt-3">
                               @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                            </div>
                            <div class="col-lg-6 border-right">
                                @php $firstPost = $postCategories->first(); @endphp
                                @if ($firstPost)
                                <div class="bg-cat-news card mb-3">
                                    <a href="{{ $firstPost->url }}">
                                        <div class="cate-two-zoom5">
                                            <img src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $firstPost->name }}" class="img-fluid">
                                        </div>
                                        <h4 class="pt-3">{{ $firstPost->name }}</h4>
                                        <p class="mt-2">{{ Str::limit($firstPost->description, 130) }}</p>
                                    </a>
                                </div>
                                 @endif

                            </div>
                            <!-- Middle Column (Secondary Stories) -->
                            <div class="col-lg-6">
                                <div class="d-flex flex-column gap-3">
                                    <!-- Horizontal News Card 1 -->
                                  @foreach ($postCategories->skip(1) as $post)
                                    <div class="card news-card border-bottom pb-3 img-hover-zoom">
                                        <div class="card-body d-flex gap-3 ">
                                            <div class="flex-grow-1">
                                                <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                            </div>
                                            <a href="{{ $post->url }}">
                                            <div class="cate-two-zoom6">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                </div>

                <!-- Right Column (Ad and Opinion) -->
                <div class="col-lg-4 border-left ">
                    @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 3);}
                            @endphp
                    <div class="opinion-section mt-3">
                        @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                     </div>
                      <div class="d-flex flex-column gap-3">
                        @foreach ($postCategories as $post)
                            <div class="card news-card border-bottom pb-3 img-hover-zoom">
                                        <div class="card-body d-flex gap-3 ">
                                            <div class="flex-grow-1">
                                                <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                            </div>
                                            <a href="{{ $post->url }}">
                                            <div class="cate-two-zoom6">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        

         <!-- লাইফস্টাইল -->
        <section class="cat-two">
            <div class="cat-two-area my-4">
                @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                            @endphp
                <div class="opinion-section mt-3">
                        @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                </div>

                <!-- News Cards (Grid) -->
                <div class="row g-4 mt-3">
                    @foreach ($postCategories as $post)
                    <div class="col-sm-6 col-6 col-md-3 border-right">
                        <a href="{{ $post->url }}" class="text-decoration-none text-dark">
                            <div class="card border-0 h-100">
                                <div class="cate-two-zoom">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid card-img-top fixed-img-two">
                                </div>
                                <div class="card-body p-2">
                                    <h4 class="news-title-two">{{ $post->name }}</h4>
                                </div>
                            </div>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
             <div class="h-row"></div>
        </section>

         <!-- জবস -->
        <section class="cat-two">
            <div class="cat-two-area my-4">
                <div class="row g-4">
                    @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 4);}
                            @endphp
                    <div class="opinion-section mt-3">
                       @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                    </div>
                    <!-- Featured News (Left) -->
                    <div class="col-lg-8 border-right">
                         @php $firstPost = $postCategories->first(); @endphp
                                @if ($firstPost)
                                <div class="card ">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <a href="{{ $firstPost->url }}" class="d-block cate-two-zoom-big">
                                                <img src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="{{ $firstPost->name }}" class="img-fluid w-100">
                                            </a>
                                        </div>
                                        <div class="col-md-6 d-flex flex-column justify-content-center">
                                            <a href="{{ $firstPost->url }}" class="text-decoration-none text-dark">
                                                <h3 class="fw-bold news-title-two-big">{{ $firstPost->name }}</h4>
                                            </a>
                                            <p class="text-muted small">
                                                {{ Str::limit($firstPost->description, 130) }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                          @endif

                        <div class="row g-4 mt-3">
                            @foreach ($postCategories->skip(1) as $post)
                    <!-- News Item -->
                    <div class="col-sm-6 col-6 col-md-4 border-right">
                        <a href="{{ $post->url }}" class="text-decoration-none text-dark">
                            <div class="card border-0 h-100">
                                <div class="cate-two-zoom">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                </div>
                                <div class="card-body p-2">
                                    <h4 class="news-title-two">{{ $post->name }} </h4>
                                </div>
                            </div>
                        </a>
                    </div>
                    @endforeach
                        </div>
                    </div>

                    <!-- Right Ad -->
                    <div class="col-lg-4">
                                           @php
                            $categoryId = 9;
                            $category = $categoryRepo->getFirstBy(['status' => BaseStatusEnum::PUBLISHED,'id' => $categoryId,]);
                             if ($category) {$allRelatedCategoryIds = array_unique(array_merge($categoryRepo->getAllRelatedChildrenIds($categoryId),[$categoryId]));
                            $postCategories = $postRepo->getByCategory($allRelatedCategoryIds, 0, 3);}
                            @endphp
                    <div class="opinion-section mt-3">
                        @if ($category)
                        <h4><a href="{{ $category->url }}">{{ $category->name }} </a> </h4>
                        @endif
                     </div>
                      <div class="d-flex flex-column gap-3">
                        @foreach ($postCategories as $post)
                            <div class="card news-card border-bottom pb-3 img-hover-zoom">
                                        <div class="card-body d-flex gap-3 ">
                                            <div class="flex-grow-1">
                                                <a href="{{ $post->url }}"><h5 class="card-title">{{ $post->name }}</h5></a>
                                            </div>
                                            <a href="{{ $post->url }}">
                                            <div class="cate-two-zoom6">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-fluid">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                        @endforeach
                    </div>
                    </div>
                </div>
            </div>
             <div class="h-row"></div>
        </section>
    </main>
     @endif