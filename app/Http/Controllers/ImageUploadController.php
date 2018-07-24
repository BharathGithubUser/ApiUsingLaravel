<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
use Validator;

class ImageUploadController extends Controller
{
  function index(Request $post_image) {
      $validator = Validator::make($post_image->all(),
      [
          'email'=>'required',
          'imageFile'=>'required'
      ]);

      if ($validator->fails()) {
          $errors = $validator->errors()->first();
          $result = array("resultCode"=>"Failure","errors"=>$errors);
          return response()->json($result);
      }

      else {
          $baseUrl="http://localhost/AuthChecking/public/images/";
          $imageName = time().'.'.$post_image->imageFile->getClientOriginalExtension();//Getting the Image Name.
          $post_image->imageFile->move(public_path('images'), $imageName);//Moving the Image file from /tmp/phpd...to images directory
          $imageUrl=$baseUrl.$imageName;
          $user = User::where('email',$post_image->email)->get();
          $user->image=$imageUrl;
          $user->save();
          $result = array("resultCode"=>"Success","message"=>"successfully updated the image!");
          return response()->json($result);
      }
    }
}
