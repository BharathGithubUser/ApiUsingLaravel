<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\User;
use Illuminate\Auth\Authenticatable;
class SignupApiController extends Controller
{
    use Authenticatable;
    public function processSignup(Request $signup_data){
        $validator = Validator::make($signup_data->all(), 
        [
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'phone'=>'required',
            'password'=>'required'
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors()->first();
            $result = array("resultCode"=>"Failure","errors"=>$errors);
            return $result;
        }


        else{
            User::create([
            'name' => $signup_data->name,
            'email' => $signup_data->email,
            'phone' => $signup_data->phone,
            'password' => bcrypt($signup_data->password)
            ]);
            $userData = User::where('email',$signup_data->email)->first();
            $result = array("resultCode"=>"Success","userData"=>$userData);
            return $result;
        }
        
    }
}
