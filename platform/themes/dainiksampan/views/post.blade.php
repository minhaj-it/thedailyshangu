{{-- প্রথমে মূল পোস্টটি দেখানোর জন্য Theme::partial ব্যবহার করুন --}}
{!! Theme::partial('post-layout', ['article' => $post]) !!}

{{-- একটি বিভাজক যোগ করুন যাতে পোস্টগুলো আলাদা দেখায় --}}
<div class="container">
    <hr class="my-5 no-print">
</div>

{{-- এখন রিলেটেড পোস্টগুলো একই লেআউটে দেখান --}}
@php
    // পুরনো কোড: $relatedPosts = get_related_posts($post->id, 3);
    // এটি ট্যাগের উপর ভিত্তি করে কাজ করে। আমরা এখন ক্যাটাগরির উপর ভিত্তি করে পোস্ট আনব।

    // প্রথমে বর্তমান পোস্টের ক্যাটাগরিটি নিন
    $category = $post->first_category;
    $relatedPosts = collect(); // ডিফল্টভাবে একটি খালি কালেকশন তৈরি করুন

    // যদি পোস্টের কোনো ক্যাটাগরি থাকে, তাহলেই কেবল কোয়েরি চালান
    if ($category) {
        $relatedPosts = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)
            ->getModel()
            ->where('id', '!=', $post->id) // বর্তমান পোস্টটি বাদ দিন
            ->where('status', \Botble\Base\Enums\BaseStatusEnum::PUBLISHED) // শুধুমাত্র পাবলিশড পোস্ট দেখান
            ->whereHas('categories', function ($query) use ($category) {
                $query->where('categories.id', $category->id); // একই ক্যাটাগরির পোস্ট খুঁজুন
            })
            ->latest() // নতুন পোস্টগুলো আগে দেখান
            ->take(3) // সর্বোচ্চ ৩টি পোস্ট নিন
            ->get();
    }
@endphp

@if ($relatedPosts->isNotEmpty())
    <div class="related-posts-full-layout container mb-5 no-print">
         <h2 class="text-center mb-4 border-bottom pb-2">এই ক্যাটাগরির আরও পোস্ট</h2>
    </div>

    @foreach ($relatedPosts as $relatedItem)
        {{-- প্রতিটি রিলেটেড পোস্টের জন্য আমাদের বানানো partial-টি লোড করুন --}}
        {!! Theme::partial('post-layout', ['article' => $relatedItem]) !!}

        {{-- শেষ আইটেম ছাড়া বাকিগুলোর পর একটি বিভাজক যোগ করুন --}}
        @if (!$loop->last)
            <div class="container">
                <hr class="my-5 no-print">
            </div>
        @endif
    @endforeach
@endif