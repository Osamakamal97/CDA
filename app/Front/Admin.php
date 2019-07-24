<?php

namespace App\Front;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Admin extends Model
{
    //

    protected $table='admins';
    protected $fillable = ['type','name','password','email','active','image'];

/*
 * each admin has many permissions
 */
    public function permissions(){
        return $this->belongsToMany('App\Front\Permission','adminpermissions','admin_id','permission_id');
    }
}
