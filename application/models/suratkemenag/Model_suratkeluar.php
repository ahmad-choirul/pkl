<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_suratkeluar extends CI_Model
{
	public function get_nomor($value)
	{
		$q="select x.id, x.buku, x.jenissurat, x.nomor_terkhir_js, y.nomor_terakhir_buku from
			(select js.id, js.buku, js.jenissurat, coalesce(jsm.nomor_terakhir,0) nomor_terkhir_js from
			(select * from ref_jenissurat) js
			left join
			(select id_jenissurat, max(nomor_surat) nomor_terakhir from t_suratkeluar group by id_jenissurat) jsm
			on (js.id=jsm.id_jenissurat)) x
			join
			(select a.buku, max(a.nomor_terkhir_js) nomor_terakhir_buku from
			(select js.id, js.buku, js.jenissurat, coalesce(jsm.nomor_terakhir,0) nomor_terkhir_js from
			(select * from ref_jenissurat) js
			left join
			(select id_jenissurat, max(nomor_surat) nomor_terakhir from t_suratkeluar group by id_jenissurat) jsm
			on (js.id=jsm.id_jenissurat)) a
			group by a.buku) y
			on x.buku=y.buku where x.id='".$value."'";
		$data['result']=$this->db->query($q);
		return $data['result'];
	}

}