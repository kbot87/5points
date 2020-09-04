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
    }

    public function getArticle($title)
    {
        $blog = new Articles();
        $articles = $blog->getArticleByTitle($title);

        dd($articles);
    }


}
