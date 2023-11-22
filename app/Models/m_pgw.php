<?php

namespace App\Models;

use CodeIgniter\Model;

class m_pgw extends Model
{
    public function allData()
    {
        return $this->db->table('pgwbidang')
            ->orderBy('id_pgw', 'ASC')
            ->get()->getResultArray();
    }
    public function add($data)
    {
        $this->db->table('pgwbidang')->insert($data);
    }
    public function edit($data)
    {
        $this->db->table('pgwbidang')
            ->where('id_pgw', $data['id_pgw'])
            ->update($data);
    }

    public function delete_data($data)
    {
        $this->db->table('pgwbidang')
            ->where('id_pgw', $data['id_pgw'])
            ->delete($data);
    }
    public function jml_pgwbidang()
    {
        return $this->db->table('pgwbidang')->countAll();
    }
}
