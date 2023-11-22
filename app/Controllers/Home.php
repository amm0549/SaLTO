<?php

namespace App\Controllers;

use App\Models\m_rekap;

class Home extends BaseController
{
    public function __construct()
    {
        $this->m_rekap = new m_rekap();
    }
    public function index()
    {
        $data = [
            'jmltugas'      =>  $this->m_rekap->jml_tugas(),
            'tugasToday'    =>  $this->m_rekap->tugasToday(),
            'tugasMonth'    =>  $this->m_rekap->tugasMonth(),
            'tugasBelum'    =>  $this->m_rekap->tugasBelum(),
        ];
        return view('home', $data);
    }
}
