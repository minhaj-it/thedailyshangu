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
                                <li class="nav-item">
                                    <a href="{{ $child->url }}" class="nav-link">{{ $child->name }}</a>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </nav>
            </header>
        </div>
    </div>

    <section class="cat-one">
        <div class="row g-4">
            <!-- Left Column -->
            <div class="col-md-9">
                @if ($posts->isNotEmpty())
                    {{-- Main Cover News --}}
                    @php $firstPost = $posts->first(); @endphp
                    <div class="row">
                        <div class="col-md-8">
                            <div class="cover-news99 mb-4">
                                <a href="{{ $firstPost->url }}">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="title-cover">
                                                <h1>{{ $firstPost->name }}</h1>
                                                <p>{{ Str::limit($firstPost->description, 80) }}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="img-cover">
                                                <img class="lazyload img-fluid"
                                                     data-src="{{ RvMedia::getImageUrl($firstPost->image, 'featured', false, RvMedia::getDefaultImage()) }}"
                                                     alt="{{ $firstPost->name }}">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="tab-pane fade show active">
                                <div class="d-flex flex-column gap-3 semi-top">
                                    @foreach ($posts->skip(1)->take(3) as $sidePost)
                                        <div class="semi-news d-flex lat-tab gap-2 pb-2">
                                            <div class="flex-grow-text">
                                                <a href="{{ $sidePost->url }}" class="news-title">
                                                    {{ Str::limit($sidePost->name, 80) }}
                                                </a>
                                            </div>
                                            <div class="img-hover-zoom-tb">
                                                <a href="{{ $sidePost->url }}">
                                                    <img class="lazyload img-fluid fixed-img"
                                                         data-src="{{ RvMedia::getImageUrl($sidePost->image, 'small', false, RvMedia::getDefaultImage()) }}"
                                                         alt="{{ $sidePost->name }}">
                                                </a>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <!-- Right Column -->
                    <div class="col-md-3 border-left">
                        <div class="box-content text-center pb-3">
                            {!! dynamic_sidebar('ads-2') !!}
                        </div>
                    </div>
        </div>
    </section>

     <div class="row mt-5">
            <div class="col-md-9 mx-auto">
                <div class="row cat-serice">
                    {{-- News List --}}
                <div class="opinion-section">
                        <h4><a href="#"> {{ $category->name }} বিভাগের সব খবর </a></h4>
                   </div>
                    <div id="news-container" class="row cat-serice mt-4">
                        @foreach ($posts->skip(4) as $item)
                          

                            <div class="col-md-6 cover-card mb-2 border-right">
                               <div class="d-flex flex-column gap-3 list-card">
                                <!-- Horizontal News Card 1 -->
                                <div class="card news-card border-bottom pb-3 img-hover-zoom">
                                    <div class="card-body d-flex gap-3 align-items-center">
                                        <a href="{{ $item->url }}">
                                            <div class="cate-two-zoom6">
                                                <img data-src="{{ RvMedia::getImageUrl($item->image, 'medium', false, RvMedia::getDefaultImage()) }}"
                                                         class="lazyload"
                                                         alt="{{ $item->name }}">
                                            </div>
                                        </a>
                                        <div class="flex-grow-1">
                                            <a href="{{ $item->url }}">
                                                <h5 class="card-title">{{ $item->name }}</h5>
                                            </a>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            </div>
                        @endforeach
                    </div>

                    {{-- Load More Button --}}
                    @if ($posts->hasMorePages())
                        <div class="text-center mt-4">
                            <button id="load-more" class="btn btn-primary px-4 py-2" 
                                    data-next-page="{{ $posts->currentPage() + 1 }}">
                                আরও খবর দেখুন
                            </button>
                        </div>
                    @endif

                @else
                    <div class="alert alert-warning mt-4">
                        {{ __('No posts found in this category!') }}
                    </div>
                @endif
                </div>
                

            </div>
            
        </div>
</main>

{{-- ✅ AJAX Load More Script --}}
<script>
    document.addEventListener('DOMContentLoaded', function () {
        let loadBtn = document.getElementById('load-more');
        if (!loadBtn) return;

        loadBtn.addEventListener('click', function () {
            let button = this;
            let nextPage = button.getAttribute('data-next-page');
            let url = "{{ request()->url() }}" + '?page=' + nextPage;

            button.disabled = true;
            button.innerText = 'লোড হচ্ছে...';

            fetch(url)
                .then(response => response.text())
                .then(data => {
                    let parser = new DOMParser();
                    let html = parser.parseFromString(data, 'text/html');
                    let newItems = html.querySelectorAll('#news-container .cover-card');

                    if (newItems.length > 0) {
                        newItems.forEach(item => {
                            document.getElementById('news-container').appendChild(item);
                        });

                        let next = html.querySelector('#load-more');
                        if (next) {
                            button.setAttribute('data-next-page', next.getAttribute('data-next-page'));
                            button.disabled = false;
                            button.innerText = 'আরও খবর দেখুন';
                        } else {
                            button.remove();
                        }
                    } else {
                        button.remove();
                    }
                })
                .catch(() => {
                    button.innerText = 'লোড ব্যর্থ! আবার চেষ্টা করুন';
                    button.disabled = false;
                });
        });
    });
</script>
