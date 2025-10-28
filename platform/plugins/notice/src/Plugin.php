<?php

namespace Botble\Notice;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('Notices');
        Schema::dropIfExists('Notices_translations');
    }
}
