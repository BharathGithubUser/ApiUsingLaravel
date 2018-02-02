<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StaticDataApiController extends Controller
{
	//public $data = array('1' =>'RecyclerViewData','2' =>'Fetched Successfully', '3' => 'Got from Server');
	public function __construct(){
		$this->data = array('1' =>'RecyclerViewData','2' =>'Fetched Successfully', '3' => 'Got from Server');
	}

    public function index(){
    	return $this->data;
    }

    public function show($showData){
    	$self = new StaticDataApiController;
		if(array_key_exists($showData,$self->data)){
			//return $this->data[$showData]; //gives value for the particular key
			$result = array($showData => $self->data[$showData]);
			return $result;
		}else{
			$result = array("error" => "Oops no data found!");
			return $result;
		}
    }
}
