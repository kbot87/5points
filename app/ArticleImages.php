<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class ArticleImages extends Model
{

    use Resizable;

    public function article()
    {
        return $this->belongsTo('App\Articles');
    }
}
