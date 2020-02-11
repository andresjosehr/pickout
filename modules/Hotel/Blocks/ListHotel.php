<?php
namespace Modules\Hotel\Blocks;

use Modules\Template\Blocks\BaseBlock;
use Modules\Hotel\Models\Hotel;
use Modules\Location\Models\Location;

class ListHotel extends BaseBlock
{
    function __construct()
    {
        $this->setOptions([
            'settings' => [
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
                    'label'     => __('Number Item'),
                    "default" => "5",
                ],
                [
                    'id'            => 'style',
                    'type'          => 'radios',
                    'label'         => __('Style'),
                    'values'        => [
                        [
                            'value'   => 'normal',
                            'name' => __("Normal")
                        ],
                        [
                            'value'   => 'carousel',
                            'name' => __("Slider Carousel")
                        ],
                        [
                            'value'   => 'modern_carousel',
                            'name' => __("Modern Carousel")
                        ]
                    ]
                ],
                [
                    'id'      => 'location_id',
                    'type'    => 'select2',
                    'label'   => __('Filter by Location'),
                    'select2' => [
                        'ajax'  => [
                            'url'      => url('/admin/module/location/getForSelect2'),
                            'dataType' => 'json'
                        ],
                        'width' => '100%',
                        'allowClear' => 'true',
                        'placeholder' => __('-- Select --')
                    ],
                    'pre_selected'=>url('/admin/module/location/getForSelect2?pre_selected=1')
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
                            'value'   => 'title',
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
                        [
                            'value'   => 'destacados',
                            'name' => __("Destacados")
                        ],
                        [
                            'value'   => 'ofertas',
                            'name' => __("Ofertas")
                        ],
                        [
                            'value'   => 'mas_visto',
                            'name' => __("Lo mas visto")
                        ],
                    ],
                    "selectOptions"=> [
                        'hideNoneSelectedText' => "true"
                    ]
                ],
                //[
                 //   'type'=> "checkbox",
                  //  'label'=>__("Only featured items?"),
                   // 'id'=> "is_featured",
                    //'default'=>true
                //]
            ]
        ]);
    }

    public function getName()
    {
        return __('Hotel: List Items');
    }

    public function content($model = [])
    {
        $model_hotel = Hotel::select("bravo_hotels.*")->with(['location','translations','hasWishList', 'termsByAttributeInListingPage']);
        if(empty($model['order'])) $model['order'] = "id";
        if(empty($model['order_by'])) $model['order_by'] = "desc";
        if(empty($model['number'])) $model['number'] = 5;
        if (!empty($model['location_id'])) {
            $location = Location::where('id', $model['location_id'])->where("status","publish")->first();
            if(!empty($location)){
                $model_hotel->join('bravo_locations', function ($join) use ($location) {
                    $join->on('bravo_locations.id', '=', 'bravo_hotels.location_id')
                        ->where('bravo_locations._lft', '>=', $location->_lft)
                        ->where('bravo_locations._rgt', '<=', $location->_rgt);
                });
            }
        }

        if(!empty($model['order_by']) && $model['order_by']=="destacados")
        {
            $model_hotel->where('is_featured',1);
            $model_hotel->orderBy("bravo_hotels.".$model['order'], "desc");
        }

        if(!empty($model['order_by']) && $model['order_by']=="ofertas")
        {
            $model_hotel->where('sale_price',"!=", null); 
            $model_hotel->where('sale_price',"!=", 0.00);
            $model_hotel->orderBy("bravo_hotels.".$model['order'], "desc");
        }

        if(!empty($model['order_by']) && $model['order_by']!="destacados" && $model['order_by']!="ofertas")
        {
            $model_hotel->orderBy("bravo_hotels.".$model['order'], $model['order_by']);
        }

        $model_hotel->where("bravo_hotels.status", "publish");
        $model_hotel->with('location');
        $model_hotel->groupBy("bravo_hotels.id");
        $list = $model_hotel->limit($model['number'])->get();
        $data = [
            'rows'       => $list,
            'style_list' => $model['style'],
            'title'      => $model['title'],
            'desc'       => $model['desc'],
        ];
        return view('Hotel::frontend.blocks.list-hotel.index', $data);
    }
}
