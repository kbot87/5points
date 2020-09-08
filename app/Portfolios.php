<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portfolios extends Model
{
    public function getPortfolio()
    {

    }

    public function description()
    {
        return $this->hasMany('App\PortfolioDescriptions');
    }

    public function images()
    {
        return $this->hasMany('App\PortfolioImages');
    }
}
