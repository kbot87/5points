<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * The path to the "home" route for your application.
     *
     * @var string
     */
    public const HOME = '/home';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
//    public function map()
//    {
//        $this->mapApiRoutes();
//
//        $this->mapWebRoutes();
//
//        //
//    }
    public function map(Request $request)
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes($request);

        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
//    protected function mapWebRoutes()
//    {
//        Route::middleware('web')
//            ->namespace($this->namespace)
//            ->group(base_path('routes/web.php'));
//    }

    protected function mapWebRoutes(Request $request)
    {
        $languages = DB::table('languages')->select([
            'code'
        ])->get()->pluck('code')->toArray();
        if(in_array($request->segment(1), $languages)){
            $locale = $request->segment(1);
        }else{
            $locale = null;
        }

        Route::group([
            'middleware' => 'web',
            'namespace' => $this->namespace,
            'prefix' => $locale
        ], function ($router) {
            require base_path('routes/web.php');
        });
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
            ->middleware('api')
            ->namespace($this->namespace)
            ->group(base_path('routes/api.php'));
    }
}
