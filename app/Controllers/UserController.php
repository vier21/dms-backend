<?php

namespace App\Controllers;

use App\Models\JadwalModel;

class UserController extends BaseController
{
    protected $jadwalModel;
    
    public function __construct()
    {
        $this->jadwalModel = new JadwalModel();
    }

    public function index()
    {
        $jadwal = $this->jadwalModel->getAllJadwal();
        $data = [
            'jadwal' => $jadwal
        ];
       
        return view('homeuser', $data);
    }

    public function inputJadwal()
    {

        $rules = $this->jadwalModel->validationRules;
        
        if ($this->request->getMethod() === 'post' && $this->validate($rules)){
            $data = [
                'nama_kapal' => $this->request->getVar('nama_kapal'),
                'jam_berangakat' => $this->request->getVar('jam_berangakat'),
                'jam_datang' => $this->request->getVar('jam_datang'),
                'keterangan' => $this->request->getVar('keterangan'),
                'id_user' => $this->request->getVar('id_user'),
            ];
    
            $this->jadwalModel->insert($data);
            return redirect()->to('/user');
            
        }
        return view('form/jadwal');
    }

    public function editJadwal($id){

        $data['jadwal'] = $this->jadwalModel->find($id);
        $rules = $this->jadwalModel->validationRules;

        if ($this->request->getMethod() === 'post' && $this->validate($rules)){
            
            $data = [
                'nama_kapal' => $this->request->getVar('nama_kapal'),
                'jam_berangakat' => $this->request->getVar('jam_berangakat'),
                'jam_datang' => $this->request->getVar('jam_datang'),
                'keterangan' => $this->request->getVar('keterangan'),
               
            ];

            $this->jadwalModel->update($id,$data);
            return redirect()->to('/user');
        }

        return view('form/edit',$data);

    }

    public function jadwalUser($user_id){
        $jadwal = $this->jadwalModel->getAllJadwalById($user_id);
        $data = [
            'jadwaluser' => $jadwal,
        ];

        return view('homejadwal',$data);

    }

    public function deleteJadwal($id)
    {
        $this->jadwalModel->deleteJadwal($id);
        return redirect()->to('/');
    }

    

    public function admin()
    {
        return view('homeadmin');
    }
}
