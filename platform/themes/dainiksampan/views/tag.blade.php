@php Theme::set('section-name', $tag->name) @endphp

@if ($posts->isNotEmpty())
    @foreach ($posts as $post)
   <main class="container py-3">
    <div class="row">
        <div class="col">
             <!-- Ad Banner -->
            <div class="ad-banner text-center my-3">
            <img src="img/ad_728x90.jpg" alt="" class="img-fluid">
            </div>
        
        <header class="pb-3 mb-4 border-bottom">
            <h3 class="display-4 fw-bold section-title">{{ $tag->name }}</h3>
            <p>{{ $tag->description }}</p>
        </header>
        </div>
    </div>

    <div class="row">
         <div class="col-md-2"></div>
            <div class="col-md-7">
                 @if ($posts->isNotEmpty())
                @if (is_plugin_active('blog'))
                    <!-- all news -->
                    <div class="row cat-serice">
                       
                        @foreach ($posts as $post_category)
                            @if ($loop->index < 1)
                                <div class="col-md-12 cover-card mb-2 border-right">
                                    <a href="{{ $post_category->url  }}">
                                        <div class="d-flex flex-column border-bottom pb-3">
                                        <!-- Horizontal News Card 1 -->
                                        <div class="card news-card">
                                            <div class="card-body d-flex">
                                                <div class="flex-grow-1">
                                                <h4 class="card-title">{{ $post_category->name }} </h4>
                                                </div>
                                                <div class="cover-news-zoom1">
                                                    <img src="{{ RvMedia::getImageUrl($post_category->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="" alt="Adviser">
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
                
                 <!-- Latest News Section -->
                <h3 class="pb-2 mb-3 border-bottom fw-bold">সর্বশেষ</h3>
                <div class="d-flex flex-column gap-3">
                   @foreach (get_latest_posts(4, []) as $post)              
                        <a href="{{ $post->url }}" class="news-item latest-news-item d-flex align-items-center mb-3">
                            <div class="news-image-wrapper">
                                <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="Latest 1">
                            </div>
                            <div class="ms-3">
                                <h6 class="news-title mb-0"><span class="news-title-link-latest"> {{ $post->name }} </span></h6>
                            </div>
                        </a>
                    @endforeach
            </div>
        </div>

   </main>
    @endforeach
    <div class="page-pagination text-right">
        {!! $posts->links() !!}
    </div>
@else
    <div class="alert alert-warning">
        <p class="mb-0">{{ __('There is no data to display!') }}</p>
    </div>
@endif
