<?php



namespace Modules\Space\Models;



use App\BaseModel;



class SpaceTranslation extends Space

{

    protected $table = 'bravo_space_translations';



    protected $fillable = [

        'title',

        'content',

        'faqs',

        'address',

        'extra_price',

        'menu',

        'hours_open'

    ];



    protected $slugField     = false;

    protected $seo_type = 'space_translation';



    protected $cleanFields = [

        'content'

    ];

    protected $casts = [

        'faqs'  => 'array',

        'extra_price'  => 'array',

        'menu' => 'array',

        'hours_open' => 'array'

    ];



    public function getSeoType(){

        return $this->seo_type;

    }

}