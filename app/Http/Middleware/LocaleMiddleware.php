<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;

class LocaleMiddleware
{

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $languages = DB::table('languages')->select([
            'code'
        ])->get()->pluck('code')->toArray();

        if(in_array($request->segment(1), $languages)){
            app()->setLocale($request->segment(1));
        } else {
            app()->setLocale(config('app.locale'));
        }

        return $next($request);
    }
}