<?php

namespace Botble\Blog\Http\Resources;

use Botble\Blog\Models\Post;
use Botble\Media\Facades\RvMedia;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @mixin Post
 */
class PostResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'slug' => $this->slug,
            'description' => $this->description,
            'content' => $this->content,
            'image' => $this->image ? RvMedia::url($this->image) : null,
            // Both values come from the Custom Fields plugin (slugs
            // 'image_caption' and 'author_name'), not native columns —
            // get_field() looks them up by model + slug.
            'image_caption' => get_field($this->resource, 'image_caption'),
            'author' => ($authorName = get_field($this->resource, 'author_name'))
                ? ['name' => $authorName]
                : null,
            'categories' => CategoryResource::collection($this->categories),
            'tags' => TagResource::collection($this->tags),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
