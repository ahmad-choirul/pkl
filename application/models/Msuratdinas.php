<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Msuratdinas extends CI_Model {

	public function getSurat($id)
	{
    // $query = $this->db->get_where('t_suratdinas', array('id' => $id));
    // $rows = $query->result();
    // return $rows;
		$this->db->select('t_suratdinas.*, m_kodeklasifikasi.*, m_ppk.nama as nama_pkk, datediff(tanggal_akhir,tanggal_awal)+1 as lama, data_pegawai.pangkat, data_pegawai.*');
		$this->db->join('m_kodeklasifikasi', 'm_kodeklasifikasi.id = t_suratdinas.kode_devisi');
		$this->db->join('m_ppk', 'm_ppk.id = t_suratdinas.id_ppk');
		$this->db->join('data_pegawai', 'data_pegawai.id_pegawai = t_suratdinas.id_pegawai');
		return $this->db->get_where('t_suratdinas', array('t_suratdinas.id' => $id))->row_array();
	}
}

/* End of file Madd.php */
/* Location: ./application/models/Madd.php */