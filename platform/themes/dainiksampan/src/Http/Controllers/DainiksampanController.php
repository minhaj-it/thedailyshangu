<?php

namespace Theme\Dainiksampan\Http\Controllers;

use Botble\Theme\Http\Controllers\PublicController;

class DainiksampanController extends PublicController
{
    public function getIndex()
    {
        return parent::getIndex();
    }

    public function getView(?string $key = null, string $prefix = '')
    {
        return parent::getView($key);
    }

    public function getSiteMapIndex(string $key = null, string $extension = 'xml')
    {
        return parent::getSiteMapIndex();
    }
}
