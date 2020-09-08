<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PortfolioDescriptions extends Model
{
    public function portfolio()
    {
        return $this->belongsTo('App\Portfolios');
    }
}
