<?php

namespace Botble\Notice\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\Notice\Models\Notice;

class NoticeServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/notice')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();
            
            if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Notice::class, [
                    'name',
                ]);
            }
            
            DashboardMenu::default()->beforeRetrieving(function () {
                DashboardMenu::registerItem([
                    'id' => 'cms-plugins-notice',
                    'priority' => 5,
                    'parent_id' => null,
                    'name' => 'plugins/notice::notice.name',
                    'icon' => 'ti ti-box',
                    'url' => route('notice.index'),
                    'permissions' => ['notice.index'],
                ]);
            });
            
            \SlugHelper::registerModule(Notice::class, 'notice');
            \SlugHelper::setPrefix(Notice::class, 'notice');
    }
}
