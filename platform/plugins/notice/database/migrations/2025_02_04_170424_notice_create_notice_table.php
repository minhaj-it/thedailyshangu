<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('notices')) {
            Schema::create('notices', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('notices_translations')) {
            Schema::create('notices_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('notices_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'notices_id'], 'notices_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('notices');
        Schema::dropIfExists('notices_translations');
    }
};
