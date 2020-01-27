<?php

namespace Modules\Gastronomia\Controllers;



use App\Http\Controllers\Controller;

use Modules\Gastronomia\Models\Gastronomia;

use Illuminate\Http\Request;



class GastronomiaController extends Controller

{

    public $gastronomia;

    public function __construct(Gastronomia $gastronomia)

    {

        $this->gastronomia = $gastronomia;

    }



    public function index(Request $request)

    {



    }



    public function detail(Request $request, $slug)

    {

        $row = $this->gastronomia::where('slug', $slug)->where("status", "publish")->first();;

        if (empty($row)) {

            return redirect('/');

        }



        //Auth::user()->can('viewAny', Tour::class);





        $translation = $row->translateOrOrigin(app()->getLocale());

        $data = [

            'row' => $row,

            'translation' => $translation,

            'seo_meta' => $row->getSeoMetaWithTranslation(app()->getLocale(), $translation),

        ];

        $this->setActiveMenu($row);

        return view('Gastronomia::frontend.detail', $data);

    }



    public function searchForSelect2( Request $request ){

        $search = $request->query('search');

        $query = Gastronomia::select('bravo_gastronomias.*', 'bravo_gastronomias.name as title')->where("bravo_gastronomias.status","publish");

        if ($search) {

            $query->where('bravo_gastronomias.name', 'like', '%' . $search . '%');



            if( setting_item('site_enable_multi_lang') && setting_item('site_locale') != app_get_locale() ){

                $query->leftJoin('bravo_gastronomia_translations', function ($join) use ($search) {

                    $join->on('bravo_gastronomias.id', '=', 'bravo_gastronomia_translations.origin_id');

                });

                $query->orWhere(function($query) use ($search) {

                    $query->where('bravo_gastronomia_translations.name', 'LIKE', '%' . $search . '%');

                });

            }



        }

        $res = $query->orderBy('id', 'desc')->limit(20)->get()->toTree();

        if(!empty($res) and count($res)){

            $list_json = [];

            $traverse = function ($gastronomias, $prefix = '') use (&$traverse, &$list_json) {

                foreach ($gastronomias as $gastronomia) {

                    $translate = $gastronomia->translateOrOrigin(app()->getLocale());

                    $list_json[] = [

                        'id' => $gastronomia->id,

                        'title' => $prefix . ' ' . $translate->name,

                    ];

                    $traverse($gastronomia->children, $prefix . '-');

                }

            };

            $traverse($res);

            $this->sendSuccess(['data'=>$list_json]);

        }

        return $this->sendError(__("Gastronomia not found"));

    }

}

