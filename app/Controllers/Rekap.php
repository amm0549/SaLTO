<?php

namespace App\Controllers;

use App\Models\m_rekap;
use App\Models\m_pgw;


class Rekap extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->m_rekap = new m_rekap();
        $this->m_pgw = new m_pgw();
    }
    public function index()
    {
        $data = [
            'title'         => 'salto',
            'data_rekap'    =>    $this->m_rekap->allData(),
            'data_pgw'      =>    $this->m_pgw->allData(),
        ];
        return view('rekap/get', $data);
    }
    public function data()
    {
        $data = [
            'title'         => 'salto',
            'data_rekap'    =>    $this->m_rekap->allData(),
            'data_pgw'      =>    $this->m_pgw->allData(),
        ];
        return view('rekap/data', $data);
    }
    public function edit($id)
    {
        $data = [
            'title'         => 'salto',
            'id'            => $id,
            'data_tugas'    =>  $this->m_rekap->detailData($id),
            'data_pgw'      =>  $this->m_pgw->allData(),
        ];
        return view('rekap/edit', $data);

        session()->setFlashdata('pesan', 'Data Berhasil diedit!');
        return redirect()->to(base_url('rekap/data'));
    }
    public function add()
    {
        // retrieving files
        $filelap = $this->request->getFile('filelap');

        $data = [
            'kategori'      => $this->request->getPost('kategori'),
            'nost'          => $this->request->getPost('nost'),
            'namast'        => $this->request->getPost('namast'),
            'tglst'         => $this->request->getPost('tglst'),
            'startst'       => $this->request->getPost('startst'),
            'endst'         => $this->request->getPost('endst'),
            'ketua'         => $this->request->getPost('ketua'),
            'anggota1'      => $this->request->getPost('anggota1'),
            'hari_tugas1'   => $this->request->getPost('hari_tugas1'),
            'anggaran1'     => $this->request->getPost('anggaran1'),
            'anggota2'      => $this->request->getPost('anggota2'),
            'hari_tugas2'   => $this->request->getPost('hari_tugas2'),
            'anggaran2'     => $this->request->getPost('anggaran2'),
            'anggota3'      => $this->request->getPost('anggota3'),
            'hari_tugas3'   => $this->request->getPost('hari_tugas3'),
            'jenisdl'       => $this->request->getPost('jenisdl'),
            'stattugas'     => $this->request->getPost('stattugas'),
            'nolap'         => $this->request->getPost('nolap'),
            'filest'        => $this->request->getPost('filest'),
            'filekm'        => $this->request->getPost('filekm'),
            'filelap'       => $filelap,
            'tgllap'        => $this->request->getPost('tgllap'),
            'simpulan'      => $this->request->getPost('simpulan'),
            'saran'         => $this->request->getPost('saran'),

            // $namefilelap = $filelap->getRandomName($filelap),
            // moving files to permanent directory
            // $filelap->move('public/uploads/filelap', $namefilelap),
    
        ];        
        $this->m_rekap->add($data);

        session()->setFlashdata('pesan', 'Data Berhasil disimpan!');
        return redirect()->to(base_url('rekap/data'));
    }
    public function delete($id)
    {
        $data = [
            'id'        => $id,
        ];
        $this->m_rekap->delete_data($data);

        session()->setFlashdata('pesan', 'Data Berhasil dihapus!');
        return redirect()->to(base_url('rekap/data'));
    }

    public function detail($id)
    {
        $data = [
            'title' => 'salto - detail penugasan',
            'id'            => $id,
            'data_tugas'    =>  $this->m_rekap->detailData($id),
            'data_pgw'      =>  $this->m_pgw->allData(),
        ];

        return view('rekap/detail', $data);

        // if book does not exist
        if(empty($data['id'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Penugasan yang Anda cari tidak ditemukan.');
        }
    }
}