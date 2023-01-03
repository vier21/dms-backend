<?php
namespace App\Models;

use CodeIgniter\Model;

class JadwalModel extends Model
{
    // ...
    protected $table = 'jadwal';
    
    protected $primaryKey = 'id_jadwal';
    protected $allowedFields = ['jam_datang','jam_berangakat','keterangan','nama_kapal', 'id_jadwal'];

    protected $validationRules = [
        'jam_datang'     => 'required',
        'jam_berangakat'  => 'required',
        'keterangan'     => 'required|max_length[50]',
        'nama_kapal'     => 'required',
    ];


    public function getAllJadwal(){
        return $this->findAll();
    }

    public function insertJadwal($data){
        $this->save($data);
    }

    public function deleteJadwal($id){
        $this->delete($id);
    }

    

   

}