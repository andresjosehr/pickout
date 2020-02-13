<?php
namespace Modules\Car\Blocks;

use Modules\Template\Blocks\BaseBlock;
use Modules\Car\Models\Car;
use Modules\Location\Models\Location;

class FeaturePoints extends BaseBlock
{
    function __construct()
    {
        $this->setOptions([
            'settings' => [
                [
                    'id'          => 'list_item',
                    'type'        => 'listItem',
                    'label'       => __('List Item(s)'),
                    'title_field' => 'title',
                    'settings'    => [
                        [
                            'id'        => 'title',
                            'type'      => 'input',
                            'inputType' => 'text',
                            'label'     => __('Title')
                        ],
                        [
                            'id'        => 'sub_title',
                            'type'      => 'input',
                            'inputType' => 'text',
                            'label'     => __('Description')
                        ],
                        [
                            'id'        => 'icon',
                            'type'      => 'input',
                            'inputType' => 'text',
                            'label'     => __('Icon')
                        ],
                        [
                            'id'        => 'link',
                            'type'      => 'input',
                            'inputType' => 'text',
                            'label'     => __('Link')
                        ],
                    ]
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
                            'value'   => 'style2',
                            'name' => __("Style 1")
                        ],
                        [
                            'value'   => 'style3',
                            'name' => __("Style 2")
                        ]
                    ]
                ],

            ]
        ]);
    }

    public function getName()
    {
        return __('Feature Points');
    }

    public function content($model = [])
    {
        return view('Tour::frontend.blocks.list-featured-item.index', $model);
    }
}
