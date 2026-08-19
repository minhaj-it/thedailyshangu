<?php

namespace Botble\Blog\Http\Controllers\API;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Media\Facades\RvMedia;

class SettingController extends BaseController
{
    /**
     * Get general site settings (logo, site title, theme color)
     *
     * @group Settings
     */
    public function general()
    {
        $logo = theme_option('logo');

        return $this
            ->httpResponse()
            ->setData([
                'site_title' => theme_option('site_title'),
                'logo' => $logo ? RvMedia::getImageUrl($logo) : null,
                'primary_color' => theme_option('primary_color', '#ff2b4a'),
            ])
            ->toApiResponse();
    }
}
