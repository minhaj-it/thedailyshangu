<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

// Reverts 2026_08_17_000000_add_image_caption_to_table_posts.php.
// image_caption is now handled by the Custom Fields plugin instead of a
// native column — run this only if that earlier migration was already
// applied (i.e. `php artisan migrate` was run before switching approach).
return new class () extends Migration {
    public function up(): void
    {
        if (Schema::hasColumn('posts', 'image_caption')) {
            Schema::table('posts', function (Blueprint $table): void {
                $table->dropColumn('image_caption');
            });
        }
    }

    public function down(): void
    {
        Schema::table('posts', function (Blueprint $table): void {
            $table->string('image_caption', 400)->nullable()->after('image');
        });
    }
};
