<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Language extends Model
{
    public function articleDescriptions()
    {
        return $this->hasMany('App\ArticleDescriptions');
    }

    static function getLanguageId($locale)
    {
        $languageId = DB::table('languages')
            ->select(['id'])
            ->where('code', $locale)
            ->where('status', 1)
            ->first();

        return $languageId->id;
    }
}
