<?php

namespace App\Providers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*', function ($view)
        {

            $languages = DB::table('languages')->select([
                'code',
                'flag'
            ])
                ->where('status', 1)
                ->get();
            foreach ($languages as $language){
                $url = $_SERVER['REQUEST_URI'];
                $formattedUrl = str_replace($_SERVER['SERVER_NAME'],'', $_SERVER['SERVER_NAME'].$url);
                foreach ($languages as $lang) {
                    $formattedUrl = str_replace($lang->code, '', $formattedUrl);
                }
                if ($language->code != app()->getLocale()){
                    $language->url = $language->code.'/'.$formattedUrl;
                } else {
                    $language->url = $formattedUrl;
                }
                $language->url = rtrim($language->url, '/');
            }
            $view->with('languages', $languages );
        });
    }
}
