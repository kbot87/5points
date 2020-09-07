<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use TCG\Voyager\Traits\Resizable;

class Blog extends Model
{

    use Resizable;
    public function articles()
    {
        return $this->hasMany('App\Articles');
    }


}
