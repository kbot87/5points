<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArticleImages extends Model
{
    public function article()
    {
        return $this->belongsTo('App\Articles');
    }
}
