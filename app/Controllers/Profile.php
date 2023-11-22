<?php

namespace App\Controllers;

use App\Models\m_profile;

class Profile extends BaseController
{
    public function data()
    {
        return view('profile/data');
    }  
}