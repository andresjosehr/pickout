<?php

namespace Modules\Gastronomia\Blocks;



use Modules\Template\Blocks\BaseBlock;

use Modules\Gastronomia\Models\Gastronomia;



class ListGastronomias extends BaseBlock

{

    function __construct()

    {

        $list_service = [];

        foreach (get_bookable_services() as $key => $service) {

            $list_service[] = ['value'   => $key,

                               'name' => ucwords($key)

            ];

        }

        $this->setOptions([

            'settings' => [

                [

                    'id'            => 'service_type',

                    'type'          => 'checklist',

                    'listBox'          => 'true',

                    'label'         => "<strong>".__('Service Type')."</strong>",

                    'values'        => $list_service,

                ],

                [

                    'id'        => 'title',

                    'type'      => 'input',

                    'inputType' => 'text',

                    'label'     => __('Title')

                ],

                [

                    'id'        => 'desc',

                    'type'      => 'input',

                    'inputType' => 'text',

                    'label'     => __('Desc')

                ],

                [

                    'id'        => 'number',

                    'type'      => 'input',

                    'inputType' => 'number',

                    'label'     => __('Number Item')

                ],

                [

                    'id'            => 'layout',

                    'type'          => 'radios',

                    'label'         => __('Style'),

                    'values'        => [

                        [

                            'value'   => 'style_1',

                            'name' => __("Style 1")

                        ],

                        [

                            'value'   => 'style_2',

                            'name' => __("Style 2")

                        ],

                        [

                            'value'   => 'style_3',

                            'name' => __("Style 3")

                        ],

                        [

                            'value'   => 'style_4',

                            'name' => __("Style 4")

                        ]

                    ]

                ],

                [

                    'id'            => 'order',

                    'type'          => 'radios',

                    'label'         => __('Order'),

                    'values'        => [

                        [

                            'value'   => 'id',

                            'name' => __("Date Create")

                        ],

                        [

                            'value'   => 'name',

                            'name' => __("Title")

                        ],

                    ],

                ],

                [

                    'id'            => 'order_by',

                    'type'          => 'radios',

                    'label'         => __('Order By'),

                    'values'        => [

                        [

                            'value'   => 'asc',

                            'name' => __("ASC")

                        ],

                        [

                            'value'   => 'desc',

                            'name' => __("DESC")

                        ],

                    ],

                ],

                [

                    'id'           => 'custom_ids',

                    'type'         => 'select2',

                    'label'        => __('List Gastronomia by IDs'),

                    'select2'      => [

                        'ajax'     => [

                            'url'      => route('gastronomia.admin.getForSelect2'),

                            'dataType' => 'json'

                        ],

                        'width'    => '100%',

                        'multiple' => "true",

                    ],

                    'pre_selected' => route('gastronomia.admin.getForSelect2', [

                        'pre_selected' => 1

                    ])

                ],

                [

                    'type'=> "checkbox",

                    'label'=>__("Link to gastronomia detail page?"),

                    'id'=> "to_gastronomia_detail",

                    'default'=>false

                ]

            ]

        ]);

    }



    public function getName()

    {

        return __('List Gastronomias');

    }



    public function content($model = [])

    {

        if(empty($model['order'])) $model['order'] = "id";

        if(empty($model['order_by'])) $model['order_by'] = "desc";

        if(empty($model['number'])) $model['number'] = 5;

        if (empty($model['service_type']))

            return '';

        $model_gastronomia = Gastronomia::query()->with(['translations']);

        $model_gastronomia->where("status","publish");

        if(!empty( $model['custom_ids'] )){

            $model_gastronomia->whereIn("id",$model['custom_ids']);

        }

        $model_gastronomia->orderBy($model['order'], $model['order_by']);

        $list = $model_gastronomia->limit($model['number'])->get();

        $data = [

            'rows'         => $list,

            'title'        => $model['title'],

            'desc'         => $model['desc'] ?? "",

            'service_type' => $model['service_type'],

            'layout'       => !empty($model['layout']) ? $model['layout'] : "style_1",

            'to_gastronomia_detail'=>$model['to_gastronomia_detail'] ?? ''

        ];

        return view('Gastronomia::frontend.blocks.list-gastronomias.index', $data);

    }

}