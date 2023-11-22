<?php

namespace App\Controllers;

use App\Models\m_rating;

class Rating extends BaseController
{
    public function data()
    {
        return view('rating/data');
    }  
}