<?php

namespace App\Controllers;

use App\Models\m_rating;

class Survey extends BaseController
{
    public function data()
    {
        return view('survey/data');
    }  
}