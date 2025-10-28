<div class="read-more-box">
<h5 class="fw-bold">আরও পড়ুন</h5>
<ul>
     @foreach ($posts->take(3) as $post)
    <li><a href="{{ $post->url }}">{{ $post->name }}</a></li>
     @endforeach
</ul>
</div>