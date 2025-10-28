@php Theme::set('section-name', $category->name) @endphp
 <main class="container py-3">
    <div class="row">
        <div class="col">
             <!-- Ad Banner -->
            <div class="ad-banner text-center my-3">
           {!! dynamic_sidebar('center-ads-4') !!}
            </div>
        
        <header class="pb-3 mb-4 border-bottom">
            <h1 class="display-4 fw-bold section-title">{{ $category->name }}</h1>
            <nav class="main-nav">
                <ul class="nav">
                @foreach(get_categories([11]) as $child)
                    @if($child->parent_id == $category->id)
                        <li class="nav-item"><a href="{{ $child->url }}" class="nav-link"> {{$child->name}} </a></li>
                    @endif
                @endforeach 
                </ul>
            </nav>
        </header>
        </div>
    </div>
        <div class="row">
            <div class="col-md-9">
                 @if ($posts->isNotEmpty())
                @if (is_plugin_active('blog'))
                    <!-- cover cat -->
                    @foreach ($posts as $post_category)
                            @if ($loop->index <1)
                     <a href="{{ $post_category->url  }}" class="card single-cat">
                            <div class="row ">
                           <!-- covernews -->
                             <div class="col-md-6">
                                <div class="cat-main-headline mb-3 ">
                                    <h2> {{ $post_category->name }}</h2>
                                    <p class="mt-2"> {{ Str::limit($post_category->description, 170) }}</p>
                                    <!-- <button class="tag-button">অন্তর্বর্তীকালীন সরকার</button> -->
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="cover-news-zoom">
                                    <img class="lazyload img-fluid" data-src="{{ RvMedia::getImageUrl($post_category->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="">
                                </div>
                            </div>
                        </div>
                    </a>
                    @endif
                     @endforeach
                    <div class="h-row"></div>
                    <!-- all news -->
                    <div class="row cat-serice">
                        @foreach ($posts as $post_category)
                            @if ($loop->index >= 1)
                                <div class="col-md-6 cover-card mb-2 border-right">
                                    <a href="{{ $post_category->url  }}">
                                        <div class="d-flex flex-column border-bottom pb-3">
                                        <!-- Horizontal News Card 1 -->
                                        <div class="card news-card">
                                            <div class="card-body d-flex">
                                                <div class="flex-grow-1">
                                                <h4 class="card-title">{{ $post_category->name }} </h4>
                                                </div>
                                                <div class="cover-news-zoom1">
                                                    <img data-src="{{ RvMedia::getImageUrl($post_category->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="lazyload" alt="{{ $post_category->name }}">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Horizontal News Card 2 -->
                                        </div>
                                    </a>
                                </div>
                                 @endif 
                            @endforeach
                    </div>
                     <div class="page-pagination text-right">
                        {!! $posts->links() !!}
                    </div>
                    @else
                    <div class="alert alert-warning">
                        <p class="mb-0">{{ __('There is no data to display!') }}</p>
                    </div>
                    @endif
                @endif
            </div>
            <div class="col-md-3">
               {!! dynamic_sidebar('ads-1') !!}
                 <!-- Latest News Section -->
                <h3 class="pb-2 mb-3 border-bottom fw-bold">সর্বশেষ</h3>
                <div class="d-flex flex-column gap-3">
                   @foreach (get_latest_posts(4, []) as $post)              
                        <a href="{{ $post->url }}" class="news-item latest-news-item d-flex align-items-center mb-3">
                            <div class="news-image-wrapper">
                                <img data-src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="lazyload" alt="{{ $post->name }}">
                            </div>
                            <div class="ms-3">
                                <h6 class="news-title mb-0"><span class="news-title-link-latest"> {{ $post->name }} </span></h6>
                            </div>
                        </a>
                    @endforeach
            </div>
        </div>
  </main>
