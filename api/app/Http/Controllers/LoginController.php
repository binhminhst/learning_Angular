<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Validator;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use App\Models\UserLogin;
use App\Models\UserInfo;
use App\User;
use Ixudra\Curl\Facades\Curl;

class LoginController extends  BaseController{


    public function showLogin(){
        if(Auth::check()) {
           // Create token
            echo 'aa';
        }
        else{
            return view('frmLogin');
        }

    } // frmLogin

    public function doLogin(Request $request){
                $userLogin = new UserLogin();
                $user = new User();

                $respone = [];
                $respone['status'] = '';
                $respone['message'] = '';

                $data = $request->all();

                // Create a Curl
                 $curlService = new \Ixudra\Curl\CurlService();

                $rules = array('input_email' => 'required',
                               'input_password' => 'required|min:5'
                              );
                /// \Log::debug($request);

                $messages = $this->modifine_messages_error();

                $loginValidator = Validator::make($data, $rules, $messages);

                 if ($loginValidator->fails()) {
                     $errors = $loginValidator->errors()->all();
                     $respone['status'] = 0 ;
                     $respone['message'] = $errors ;
                     return $respone ; //view('doLogin')->with("show_error",  $errors );
                 }
                 else {
                         $userdata = array("email" => $request->input_email, "password" => $request->input_password);
                         if (Auth::attempt($userdata)) {
                             //User::reguard();

                             $respone['status'] = 1;
                             $respone['message'] = 'Login Success';

                             return $respone ;

                            // $str_request_token = 'http://localhost/learning_laravel_api/public/api/auth/create/'.$request->input_email.'/'.$request->input_password;
                            // $response_token = Curl::to($str_request_token)->get();
                            /* if($response_token){
                                 return $response_token ;
                             }
                             else{
                                 return false; //view('doLogin')->with("show_error", array('Please login'));
                             } */
                         } else {
                             $respone['status'] = 1;
                             $respone['message'] = 'User or password not exist';
                             return $respone ; //view('doLogin')->with("show_error", array('User hoac password khong chinh xac'));
                         }
                 }
    } // doLogin


    public function modifine_messages_error()
    {
        return $messages_error = [
                                    'input_email.required'    => 'Vui long nhap Email.',
                                    'input_password.required'    => 'Vui long nhap Password.',
                                    'input_password.min'         => 'Password phai dai hon 5 ky tu.',
                                 ];

    }
}
