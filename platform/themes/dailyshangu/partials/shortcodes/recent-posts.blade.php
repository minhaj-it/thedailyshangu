


<header class="pb-3 mb-4 border-bottom mt-5">
            <h3 class="display-4 fw-bold section-title">আজকের খবর </h3>
           
        </header>
<div class="container">
   
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


</div>