<?php

namespace Modules\Gastronomia\Models;



use App\BaseModel;



class GastronomiaTranslation extends BaseModel

{

    protected $table = 'bravo_gastronomia_translations';

    protected $fillable = ['name', 'content','trip_ideas'];

    protected $seo_type = 'gastronomia_translation';

    protected $cleanFields = [

        'content'

    ];

    protected $casts = [

        'trip_ideas'  => 'array',

    ];

}

