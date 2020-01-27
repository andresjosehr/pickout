<?php

namespace Modules\Gastronomia;



use Illuminate\Support\ServiceProvider;

use Modules\ModuleServiceProvider;



class ModuleProvider extends ModuleServiceProvider

{



    public function boot(){

        $this->loadMigrationsFrom(__DIR__ . '/Migrations');

    }

    /**

     * Register bindings in the container.

     *

     * @return void

     */

    public function register()

    {

        $this->app->register(RouterServiceProvider::class);

    }





    public static function getAdminMenu()

    {

        return [

            'gastronomia'=>[

                "position"=>46,

                'url'        => 'admin/module/gastronomia',

                'title'      => __("Gastronomia"),

                'icon'       => 'icon ion-ios-restaurant',

                'permission' => 'gastronomia_view',

            ]

        ];

    }

    public static function getTemplateBlocks(){

        return [

            'list_gastronomias'=>"\\Modules\\Gastronomia\\Blocks\\ListGastronomias",

        ];

    }

}

