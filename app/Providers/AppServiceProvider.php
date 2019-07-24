<?php

namespace App\Providers;

use App\Front\Menu;
use App\Front\Item;
use App\Front\Setting;
use App\Front\Subitem;
use App\front\Subject;
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

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
//        view()->share('settings', Setting::get());
        view()->share('menus', Menu::get());
        view()->share("items", Item::get());
        view()->share('subitems', Subitem::get());
//        view()->share('subjects', Subject::get());

    }
}
