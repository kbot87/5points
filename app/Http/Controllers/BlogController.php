<?php

namespace App\Http\Controllers;

use App\Articles;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function getArticles()
    {
        $blog = new Articles();
        $articles = $blog->getArticles();
dd($articles);
        return view('blog', compact('articles'));
    }

    public function getArticle($slug)
    {
        $blog = new Articles();
        $article = $blog->getArticleBySlug($slug);

        return view('article', compact('article'));
    }


}
