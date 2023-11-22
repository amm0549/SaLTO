<?php

namespace App\Models;

use CodeIgniter\Model;

class m_rekap extends Model
{
    public function allData()
    {
        return $this->db->table('tugas')
            ->orderBy('nost', 'ASC')
            ->get()->getResultArray();
    }
    public function detailData($id)
    {
        return $this->db->table('tugas')
            ->where('id', $id)
            ->orderBy('id', 'ASC')
            ->get()->getRowArray();
    }
    // proses CRUD 
    public function add($data)
    {
        $this->db->table('tugas')->insert($data);
    }
    public function edit($data)
    {
        $this->db->table('tugas')
            ->where('id', $data['id'])
            ->update($data);
    }
    public function delete_data($data)
    {
        $this->db->table('tugas')
            ->where('id', $data['id'])
            ->delete($data);
    }
    public function jml_tugas()
    {
        return $this->db->table('tugas')->countAll();
    }
    public function tugasToday()
    {
        $today = date("Y-m-d");
        return $this->db->table('tugas')
            ->where('startst', $today)
            ->countAllResults();
    }
    public function tugasMonth()
    {
        $month = date("m");
        return $this->db->table('tugas')
            ->where('MONTH(startst)', $month)
            ->countAllResults();
    }
    public function tugasBelum()
    {
        $yet = 'belum';
        return $this->db->table('tugas')
            ->where('stattugas', $yet)
            ->countAllResults();
    }

}
