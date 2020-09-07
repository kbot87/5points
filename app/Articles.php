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
                'articles.slug',
                'articles.id',
                'article_images.path',
                'article_descriptions.title',
                'article_descriptions.description',
                'article_descriptions.meta_title',
                'article_descriptions.meta_description',
                'article_descriptions.keys'
                ])
            ->leftJoin('article_images', 'articles.id', 'article_images.article_id')
            ->leftJoin('article_descriptions', 'articles.id', 'article_descriptions.article_id')
            ->where('article_descriptions.language_id', $languageId)
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
            ->selectRaw('SELECT title, meta_title FROM article_descriptions WHERE article_id = articles.id AND language_id = '.$languageId)
            ->leftJoin('article_descriptions', 'articles.id', 'article_descriptions.article_id')
            ->orderBy('articles.sort')
            ->get();

        return $articles;
    }

    public function getArticleBySlug($slug)
    {
        $languageId = Language::getLanguageId(app()->getLocale());
        $article = DB::table('articles')
            ->select([
                'articles.main_image',
                'articles.slug',
                'articles.id',
                'article_images.path',
                'article_descriptions.title',
                'article_descriptions.description',
                'article_descriptions.meta_title',
                'article_descriptions.meta_description',
                'article_descriptions.keys'
            ])
            ->where('articles.slug', $slug)
            ->where('article_descriptions.language_id', $languageId)
            ->leftJoin('article_images', 'articles.id', 'article_images.article_id')
            ->leftJoin('article_descriptions', 'articles.id', 'article_descriptions.article_id')
            ->first();

        return $article;
    }
}
