<?php

namespace App\Http\Controllers\BackEnd;


use App\Front\Admin;
use App\Http\Requests\BackEnd\Admins\StoreRequest;
use Illuminate\Support\Facades\Hash;

class AdminsController extends BackEndController
{
    //
    public function __construct(Admin $model)
    {
        parent::__construct($model);
    }


    public function store(StoreRequest $request){
        $requestArray = $request->all();
        $requestArray['password']=Hash::make($requestArray['password']);
        $this->model->create($requestArray);


        return redirect()->route('admins.create');
    }




}
