<?php

namespace App\Http\Controllers;

use App\Articles;
use App\Portfolios;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $blog = new Articles();
        $portfolio = new Portfolios();

        $articles = $blog->getMainPageArticles();
        $portfolios = $portfolio->getPortfolio();

        return view('home');
    }
}
