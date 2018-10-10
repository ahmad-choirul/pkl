<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_chat extends CI_Model
{
	public function get_chatroom()
	{
		$q="select * from t_chatroom order by id desc";
		$data['result']=$this->db->query($q);
		return $data['result'];
	}

	public function get_chatpersonal($id_kirim,$id_terima)
	{
		$q="select * from v_chatpersonal where kt= 11 or tk=22  order by id desc";
		$data['result']=$this->db->query($q);
		return $data['result'];
	}
}