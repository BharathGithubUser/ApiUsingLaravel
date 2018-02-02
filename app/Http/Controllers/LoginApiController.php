<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
use App\LoginModel;
use Hash;
use Auth;
class LoginApiController extends Controller
{
    public function processLogin(Request $login_data){  
        $login = User::where('email',$login_data->email)->first();
        if($login)
        {
            if(Hash::check($login_data->password, $login->password, [])){
                    $Auth = array("resultCode"=>"Success","auth"=>"true");
                    return response()->json($Auth);
                    //return response()->json($login);
                }
            else{  
                $Auth = array("resultCode"=>"Failure","auth"=>"Invalid Password");
                return response()->json($Auth);
                //return back()->with('invalid_password','Invalid Password');
            }
        }
        else{  
            $Auth = array("resultCode"=>"Failure","auth"=>"Invalid Email");
            return response()->json($Auth);
            //return back()->with('invalid_password',"Invalid Email");
        }
    }
}
