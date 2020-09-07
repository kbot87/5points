<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArticleDescriptions extends Model
{
    public function article()
    {
        return $this->belongsTo('App\Articles');
    }

    public function language()
    {
        return $this->belongsTo('App\Language');
    }
}
