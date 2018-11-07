<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Msuratdinas extends CI_Model {

	public function getSurat($id)
	{
    // $query = $this->db->get_where('t_suratdinas', array('id' => $id));
    // $rows = $query->result();
    // return $rows;
    return $this->db->get_where('t_suratdinas', array('id' => $id))->row_array();
	}
}
 
/* End of file Madd.php */
/* Location: ./application/models/Madd.php */