<?php

namespace Botble\Slug\Services;

use Botble\Slug\Facades\SlugHelper;
use Botble\Slug\Models\Slug;
use Illuminate\Support\Str;

class SlugService
{
    public function create(?string $name, int|string|null $slugId = 0, $model = null): ?string
    {
        //$slug = Str::slug($name, '-', ! SlugHelper::turnOffAutomaticUrlTranslationIntoLatin() ? 'en' : false);
 $slug = $this->utf8Slug($name);
        $index = 1;
        $baseSlug = $slug;

        $prefix = null;
        if (! empty($model)) {
            $prefix = SlugHelper::getPrefix($model);
        }

        while ($this->checkIfExistedSlug($slug, $slugId, $prefix)) {
            $slug = apply_filters(FILTER_SLUG_EXISTED_STRING, $baseSlug . '-' . $index++, $baseSlug, $index, $model);
        }

        if (empty($slug)) {
            $slug = time();
        }

        return apply_filters(FILTER_SLUG_STRING, $slug, $model);
    }
protected function utf8Slug($string)
{
    // বাংলা, হিন্দি বা অন্য UTF-8 ভাষা সাপোর্ট করে
    return trim(preg_replace('/\s+/u', '-', $string));
}
    protected function checkIfExistedSlug(?string $slug, int|string|null $slugId, ?string $prefix): bool
    {
        return Slug::query()
            ->where([
                'key' => $slug,
                'prefix' => $prefix,
            ])
            ->where('id', '!=', $slugId)
            ->exists();
    }
}
