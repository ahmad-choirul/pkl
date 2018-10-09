<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_auth extends CI_Model
{
	// Read data using username and password
	public function login($data) {

		$q="select * from users where username='".$data['username']."' AND password='".$data['password']."' AND status=1";
		$data['result']=$this->db->query($q);
		return $data['result'];
	}

		
}