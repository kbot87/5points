<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class PortfolioImages extends Model
{
    use Resizable;

    public function portfolio()
    {
        return $this->belongsTo('App\Portfolios');
    }
}
