<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;


class AuthController extends  BaseController{

                public function createAuthenticate(Request $request, $user_name, $pass){
                             // lấy thông tin từ các request gửi lên

                            $infoUser = array('email' => $user_name, 'password' => $pass);
                            // xác nhận thông tin người dùng gửi lên có hợp lệ hay không
                            if (! $token = JWTAuth::attempt($infoUser)) {
                                return response()->json(['error' => 'Email or password invalid'], 401);
                            }
                             // Trả về Token đã đăng ký
                             //echo response()->json(compact('token'));

                            return $token;

                } // createAuthenticate

                public function getAuthenticate(Request $request){

                            if (! $infoUser = JWTAuth::parseToken()->authenticate()) {
                                return response()->json(['User not found'], 404);
                            }
                            //echo $token = JWTAuth::getToken(); // Lay nguyen chuoi Token
                            echo response()->json(compact('infoUser'));
                } // getAuthenticate

} // class
