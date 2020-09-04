<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;

class Blog extends Model
{
    public function articles()
    {
        return $this->hasMany('App\Articles');
    }

    public function getArticles()
    {
        $languageId = app()->setLocale('en');
        dd($languageId);
//        $articles = DB::table('articles')
//            ->select([
//                'main_image',
//                'id'
//            ])
//            ->selectRaw('SELECT title, description, meta_title, meta_description, keys FROM article_descriptions WHERE article_id = articles.id AND ')
//            ->selectRaw()
    }
}
