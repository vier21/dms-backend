<?php
namespace App\Models;

use CodeIgniter\Model;

class UsersModels extends Model {

    protected $table          = 'users';
    protected $primaryKey     = 'id';
   
    protected $allowedFields  = [
        'email','password_hash','npwp' , 'kontak' , 'perusahaan'
    ];
}
