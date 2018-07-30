<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
use App\UserModel;
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
          if ($post_image->hasFile('imageFile')) {
              $baseUrl="http://localhost:8000/images/";
              $imageName = $post_image->imageFile->getClientOriginalName();//Getting the Image Name along with the extension.
              $post_image->imageFile->move(public_path('images'), $imageName);//Moving the Image file from /tmp/phpd...to images directory
              $imageUrl=$baseUrl.$imageName;
              $user = new User;
              $user_id = $user->where('email',$post_image->email)->first();
              $user_record = User::find($user_id->id);
              $user_record->image=$imageUrl;
              $user_record->save();
              $result = array("resultCode"=>"Success","message"=>"successfully updated the image!");
              return response()->json($result);
            }
        }
    }
}
