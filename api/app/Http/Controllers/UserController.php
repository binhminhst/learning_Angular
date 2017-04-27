<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
//use App\Http\Controllers\Controller;
use App\Models\UserInfo;
//use Illuminate\Support\Facades\Hash;


class UserController extends  BaseController{

    public function viewInfomation(Request $request, $id){
        $response = [];
        $statusCode = 200;
       //echo "Test:". Hash::make("123456"); die;
        $id = intval($id);

            $user = UserInfo::find($id);
            if ($user) {
                $response['user'] = $user;
                $response['success'] = true;
            } else {
                $statusCode = 404;
                $response['success'] = false;
                $response['error'] = "Not find user";
            }


        return response()->json($response, $statusCode);

    } // viewInfomations

}
