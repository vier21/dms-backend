<?php

namespace App\Controllers;

use App\Models\JadwalModel;
use App\Models\UsersModels;
use \Myth\Auth\Models\UserModel;

class AdminController extends BaseController {
    protected $jadwalModel;
    protected $userModel;
    
    public function __construct()
    {
        $this->jadwalModel = new JadwalModel();
        $this->userModel = new UserModel();
    }

    public function index(){
        $userdata = $this->userModel->findAll();
        $data = [
            "users" => $userdata
        ];

        return view('homeadmin',$data);
    }

    public function listJadwal(){
        
        $jadwal = $this->jadwalModel->getAllJadwal();
        $data = [
            'jadwal' => $jadwal
        ];
       
        return view('homeuser', $data);
    }

    public function editUser($id){
        $userModel = new UsersModels();

        $data['users'] = $userModel->find($id);
      

        if ($this->request->getMethod() === 'post'){
            
            $data = [
                'email' => $this->request->getVar('email'),
                'password_hash' => $this->request->getVar('password'),
                'perusahaan' => $this->request->getVar('perusahaan'),
                'npwp' => $this->request->getVar('npwp'),
                'kontak' => $this->request->getVar('kontak'),
            ];

            $userModel->update($id, $data);
            return redirect()->to('/admin');
        }

        return view('form/edituser', $data);
    }

    public function deleteUser($id)
    {
        $this->userModel->delete($id);
        return redirect()->to('/admin');
    }


}