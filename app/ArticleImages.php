<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Traits\Resizable;

class ArticleImages extends Model
{

    use Resizable;

    public function article()
    {
        return $this->belongsTo('App\Articles');
    }

    public function getArticleImages($articleId)
    {
        $images = DB::table('article_images')
            ->where('article_id', $articleId)
            ->get();

        return $images;
    }
}
