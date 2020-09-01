<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArticleDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('article_descriptions', function (Blueprint $table) {
            $table->integer('article_id');
            $table->integer('language_id');
            $table->text('title');
            $table->longText('description');
            $table->text('meta_title');
            $table->longText('meta_description');
            $table->text('keys');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('article_descriptions');
    }
}
