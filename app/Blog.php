<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;

class Blog extends Model
{
    public function articles()
    {
        return $this->hasMany('App\Articles');
    }


}
