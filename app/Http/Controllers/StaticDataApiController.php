<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StaticDataApiController extends Controller
{
	//public $data = array('1' =>'RecyclerViewData','2' =>'Fetched Successfully', '3' => 'Got from Server');
	public function __construct(){
		$this->content = array('1' =>'Introduction','2' =>'GetStarted', '3' => 'Syllabus', '4' => 'Programming Languages', '5' => "Modern Technologies");
		foreach ($this->content as $key => $value) {
			$this->result[] = ['sno' => $key , 'Data' => $value];
		}
		$this->data = array("Topics"=> $this->result);
	}
 
    public function index(){
    	return $this->data;
    }

    public function show($showData){	
    	$self = new StaticDataApiController;
		if(!empty($self->data["Topics"][$showData-1])){
			/**Referred something from this link 
			*https://stackoverflow.com/questions/29308898/how-do-i-extract-data-from-json-with-php
			*/
			$result = $self->data["Topics"][$showData-1];
			return $result;
		}else{
			$result = array("error" => "Oops no data found!");
			return $result;
		}
    }
}
