<?php

namespace App;

use GuzzleHttp\Psr7\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Articles extends Model
{
    public function blog()
    {
        return $this->belongsTo('App\Blog');
    }

    public function description()
    {
        return $this->hasMany('App\ArticleDescriptions');
    }

    public function images()
    {
        return $this->hasMany('App\ArticleImages');
    }


    public function getArticles()
    {
        $languageId = Language::getLanguageId(app()->getLocale());

        $articles = DB::table('articles')
            ->select([
                'articles.main_image',
                'articles.id',
                'article_images.path'
            ])
            ->selectRaw('SELECT title, description, meta_title, meta_description, keys FROM article_descriptions WHERE article_id = articles.id AND language_id = '.$languageId->id)
            ->leftJoin('article_images', 'articles.id', 'article_images.article_id')
            ->orderBy('articles.sort')
            ->get();

        return $articles;
    }

    public function getMainPageArticles()
    {
        $languageId = Language::getLanguageId(app()->getLocale());

        $articles = DB::table('articles')
            ->select([
                'articles.main_image',
                'articles.id',
                'article_images.path'
            ])
            ->selectRaw('SELECT title, meta_title FROM article_descriptions WHERE article_id = articles.id AND language_id = '.$languageId->id)
            ->orderBy('articles.sort')
            ->get();

        return $articles;
    }

    public function getArticleByTitle($title)
    {

    }
}
