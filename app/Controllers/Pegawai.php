<?php

namespace App\Controllers;

use App\Models\m_pgw;

class Pegawai extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->m_pgw = new m_pgw();
    }
    public function index()
    {
        $data = [
            'pegawai'       =>  $this->m_pgw->allData(),
        ];
        return view('pgw/data', $data);
    }
    public function add()
    {
        $data = [
            'nama_pgw'       => $this->request->getPost('nama_pgw'),
            'pangkat'        => $this->request->getPost('pangkat'),
            'jabatan'        => $this->request->getPost('jabatan'),
            'status'         => $this->request->getPost('status'),
        ];
        $this->m_pgw->add($data);

        session()->setFlashdata('pesan', 'Data Berhasil disimpan!');
        return redirect()->to(base_url('Pegawai'));
    }
    public function edit($id_pgw)
    {
        $data = [
            'id_pgw'        => $id_pgw,
            'nama_pgw'      => $this->request->getPost('nama_pgw'),
            'pangkat'       => $this->request->getPost('pangkat'),
            'jabatan'       => $this->request->getPost('jabatan'),
            'status'        => $this->request->getPost('status'),
        ];
        $this->m_pgw->edit($data);

        session()->setFlashdata('pesan', 'Data Berhasil disimpan!');
        return redirect()->to(base_url('Pegawai'));
    }
}
