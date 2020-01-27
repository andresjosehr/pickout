<?php

namespace Modules\Gastronomia\Admin;



use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use Modules\AdminController;

use Modules\Gastronomia\Models\Gastronomia;

use Modules\Gastronomia\Models\GastronomiaTranslation;



class GastronomiaController extends AdminController

{

    public function __construct()

    {

        $this->setActiveMenu('admin/module/gastronomia');

        parent::__construct();

    }



    public function index(Request $request)

    {

        $this->checkPermission('gastronomia_view');

        $listGastronomia = Gastronomia::query() ;

        if (!empty($search = $request->query('s'))) {

            $listGastronomia->where('name', 'LIKE', '%' . $search . '%');

        }

        $listGastronomia->orderBy('created_at', 'asc');

        $data = [

            'rows'        => $listGastronomia->get()->toTree(),

            'row'         => new Gastronomia(),

            'translation' => new GastronomiaTranslation(),

            'breadcrumbs' => [

                [

                    'name' => __('Gastronomia'),

                    'url'  => 'admin/module/gastronomia'

                ],

                [

                    'name'  => __('All'),

                    'class' => 'active'

                ],

            ]

        ];

        return view('Gastronomia::admin.index', $data);

    }



    public function edit(Request $request, $id)

    {

        $this->checkPermission('gastronomia_update');

        $row = Gastronomia::find($id);

        $translation = $row->translateOrOrigin($request->query('lang'));

        if (empty($row)) {

            return redirect('admin/module/gastronomia');

        }

        $data = [

            'translation' => $translation,

            'enable_multi_lang'=>true,

            'row'         => $row,

            'parents'     => Gastronomia::get()->toTree(),

            'breadcrumbs' => [

                [

                    'name' => __('Gastronomia'),

                    'url'  => 'admin/module/gastronomia'

                ],

                [

                    'name'  => __('Edit'),

                    'class' => 'active'

                ],

            ]

        ];

        return view('Gastronomia::admin.detail', $data);

    }



    public function store( Request $request, $id ){

        $this->checkPermission('gastronomia_update');



        if($id>0){

            $row = Gastronomia::find($id);

            if (empty($row)) {

                return redirect(route('gastronomia.admin.index'));

            }

        }else{

            $row = new Gastronomia();

            $row->status = "publish";

        }



        $row->fill($request->input());

        $res = $row->saveOriginOrTranslation($request->input('lang'),true);



        if ($res) {

            if($id > 0 ){

                return back()->with('success',  __('Gastronomia updated') );

            }else{

                return redirect(route('gastronomia.admin.edit',$row->id))->with('success', __('Gastronomia created') );

            }

        }

    }



    public function getForSelect2(Request $request)

    {

        $pre_selected = $request->query('pre_selected');

        $selected = $request->query('selected');



        if($pre_selected && $selected){

            if(is_array($selected))

            {

                $items = Gastronomia::select('id', 'name as text')->whereIn('id',$selected)->take(50)->get();

                return response()->json([

                    'items'=>$items

                ]);

            }else{

                $item = Gastronomia::find($selected);

            }

            if(empty($item)){

                return response()->json([

                    'text'=>''

                ]);

            }else{

                return response()->json([

                    'text'=>$item->name

                ]);

            }

        }



        $q = $request->query('q');

        $query = Gastronomia::select('id', 'name as text')->where("status","publish");

        if ($q) {

            $query->where('name', 'like', '%' . $q . '%');

        }

        $res = $query->orderBy('id', 'desc')->limit(20)->get();

        return response()->json([

            'results' => $res

        ]);

    }



    public function editBulk(Request $request)

    {

        $ids = $request->input('ids');

        $action = $request->input('action');

        if (empty($ids) or !is_array($ids)) {

            return redirect()->back()->with('error', __("Select at least 1 item!"));

        }

        if (empty($action)) {

            return redirect()->back()->with('error', __('Select an Action!'));

        }

        if ($action == "delete") {

            foreach ($ids as $id) {

                $query = Gastronomia::where("id", $id);

                if (!$this->hasPermission('gastronomia_manage_others')) {

                    $query->where("create_user", Auth::id());

                    $this->checkPermission('gastronomia_delete');

                }

                $query->first();

                if(!empty($query)){

                    $query->delete();

                }

            }

        } else {

            foreach ($ids as $id) {

                $query = Gastronomia::where("id", $id);

                if (!$this->hasPermission('gastronomia_manage_others')) {

                    $query->where("create_user", Auth::id());

                    $this->checkPermission('gastronomia_update');

                }

                $query->update(['status' => $action]);

            }

        }

        return redirect()->back()->with('success', __('Updated success!'));

    }

}

