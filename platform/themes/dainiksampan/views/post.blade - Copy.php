@php
use App\Helpers\Helper;
    Theme::set('section-name', $post->name);
    $post->loadMissing('metadata');
@endphp
  <main class="container py-3">
        <div class="row">
            <div class="col">
                <!-- Ad Banner -->
                <div class="ad-banner text-center my-3 no-print">
                    {!! dynamic_sidebar('ads-1') !!}
                </div>
            </div>
        </div>
        <div class="row g-4">
            <!-- Left Column: Main Article Content -->
            <div class="col-lg-8">
                <!-- ID="article-content" is added here -->
                <div class="article-container" id="article-content"> 
                    <p class="mb-2">
                    @if ($post->first_category?->name)
                        <span class="post-category">
                            <a href="{{ $post->first_category->url }}" class="text-primary fw-bold mb-2">{{ $post->first_category->name }}</a>
                        </span>
                    @endif
                    </p>
                    <h1 class="mb-3 fs-2 fw-bold">{{ $post->name }}</h1>
                    <div class="d-flex flex-wrap justify-content-between align-items-center border-top border-bottom py-2 mb-4">
                        <div class="article-meta d-flex align-items-center">
                            <img src="https://i.ibb.co/L5kP8J8/author-icon.png" alt="author" width="50" class="me-2">
                            <div>
                                <strong> {{ $post->author->name }}</strong><br>
                                <small>
                                    {!! Helper::bn_date_time($post->created_at->format('l j F Y h:i ')) !!}
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="post__content">
                        <img class="img-fluid news-img mb-3" src="{{ RvMedia::getImageUrl($post->image, 'orginal2', false, RvMedia::getDefaultImage()) }}" alt="">
                            <div class="ck-content mb-5">{!! BaseHelper::clean($post->content) !!}</div>
                            @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post)))
                                {!! render_object_gallery($galleries, ($post->first_category ? $post->first_category->name : __('Uncategorized'))) !!}
                            @endif
                            <br>
                            <section class="new-item-shar">
                             
                                {!! Theme::renderSocialSharing($post->url, SeoHelper::getDescription(), $post->image) !!}
                            </section>
                            <br>
                        </div>
                    <div class="mt-4 pt-3 border-top no-print">
                        <div class="article-tags">
                        <span class="post__tags">
                            @foreach ($post->tags as $tag)
                                <a href="{{ $tag->url }}" class="btn">{{ $tag->name }}</a>@if (!$loop->last) @endif
                            @endforeach
                        </span>
                        </div>
                    </div>
                </div>

                <!-- readmor -->
                 <div class="related-news no-print">
                    <div class="h-row"></div>
                     <h4 class="border-bottom pb-3">আরও</h4>
                     <div class="row g-4 mt-3">
                         @php $relatedPosts = get_related_posts($post->id, 3); @endphp
                        @if ($relatedPosts->isNotEmpty())
                         @foreach ($relatedPosts as $relatedItem)
                            <!-- News Item -->
                            <div class="col-sm-6 col-6 col-md-4 border-right">
                                <a href="{{ $relatedItem->url }}" class="text-decoration-none text-dark">
                                    <div class="card border-0 h-100">
                                        <div class="cate-two-zoom">
                                             {{-- {{ RvMedia::image($relatedItem->image, $relatedItem->name, 'thumb') }} --}}
                                            <img src="{{ RvMedia::getImageUrl( $relatedItem->image) }}" class="card-img-top fixed-img-two " alt="News 1">
                                        </div>
                                        <div class="card-body p-2">
                                            <h4 class="news-title-two">{{ $relatedItem->name }}</h4>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                       @endif
                        </div>
                 </div>
            </div>
            <!-- Right Column: Ads and Sticky Widget (no-print class added) -->
            <div class="col-lg-4 no-print">
                <div class="mb-4">
                    {!! dynamic_sidebar('ads-1') !!}
                </div>
                <div class="sidebar-sticky-wrapper mt-5">
                    <div class="pt-3 ">
                         {!! Theme::partial('sidebar') !!}
                    </div>
                    
                </div>
            </div>
        </div>
  </main>

