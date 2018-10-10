<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_chatroom extends CI_Model
{
	public function get_chatroom()
	{
		$q="select * from t_chatroom order by id desc";
		$data['result']=$this->db->query($q);
		return $data['result'];
	}

}