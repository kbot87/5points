<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function aboutUs()
    {
        return view('about-us');
    }


    public function contact()
    {
        return view('contact');
    }
}
