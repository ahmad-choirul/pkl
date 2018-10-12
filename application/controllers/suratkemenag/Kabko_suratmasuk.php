<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kabko_suratmasuk extends CI_Controller {
	function __construct() 
    {
        parent::__construct();

		// benchmark aja...
		// if (1==2) 
		// {
		// 	$sections = array(
		// 		'benchmarks' => TRUE, 'memory_usage' => TRUE, 
		// 		'config' => FALSE, 'controller_info' => FALSE, 'get' => FALSE, 'post' => FALSE, 'queries' => FALSE, 
		// 		'uri_string' => FALSE, 'http_headers' => FALSE, 'session_data' => FALSE
		// 	); 
		// 	$this->output->set_profiler_sections($sections);
		// 	$this->output->enable_profiler(TRUE);
		// }

		$this->data = null;
	    $logged_in = $this->session->userdata('logged_in');
	    if(!isset($logged_in['id_rules']))
	    {
	    	redirect('/suratkemenag/auth/logout/');
	    }
		$this->login = $this->session->userdata('logged_in');
	}

//sekre
	function index()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_suratmasuk');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->add_fields('id_asalsurat','pengirim','nomor_surat','perihal','indeks_berkas','id_sifat','lampiran','id_user','file_suratmasuk','tanggal_surat','tanggal_rekam','kode_kabko');
		//if ($this->login['id_rules']==1002) { $crud->where('id_sifat <> 4'); } //rahsia
		$crud->set_relation('id_asalsurat', 'ref_asalsurat', 'asal_surat');
		//$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', '{klasifikasi3} | {nama_klasifikasi}');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->display_as('id','No.Agenda');
		$crud->display_as('id_asalsurat','Asal surat');
		//$crud->display_as('id_kodeklasifikasi','Kode klasifikasi');
		$crud->display_as('id_sifat','Sifat surat');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratmasuk','File surat masuk');
		$crud->columns('id','pengirim','nomor_surat','perihal','tanggal_surat','id_user');
		$crud->order_by('id','desc');
		$crud->required_fields('id_asalsurat','pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat','id_sifat','lampiran');
		$crud->unset_delete();

		$crud->set_field_upload('file_suratmasuk','file_suratmasuk');

		//tanggal rekam
		$crud->callback_add_field('tanggal_rekam',function(){
			return '<input id="field-tanggal_rekam" class="form-control" name="tanggal_rekam" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Tanggal Otomatis';
		});
		$crud->callback_edit_field('tanggal_rekam',function($value){
			return '<input id="field-tanggal_rekam" class="form-control" name="tanggal_rekam" type="hidden" value="'.$value.'" readonly>'.$value;
		});

		//id user = Perekam
		$crud->display_as('id_user','Perekam');
		$crud->callback_add_field('id_user',function(){
			return '<input id="field-id_user" class="form-control" name="id_user" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	
		$crud->callback_edit_field('id_user',function($value){
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { $hasil="Kosong"; }
			else if ($result->num_rows()) { $hasil= $result->row()->name; } else { $hasil="error query result"; }
			return '<input id="field-id_user" class="form-control" name="id_user" type="hidden" value="'.$value.'" readonly>'.$hasil;
		});
		$crud->callback_read_field('id_user', function ($value, $primary_key) {
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { return "Kosong"; }
			else if ($result->num_rows()) { return $result->row()->name; } else { return "error query result"; }
		});

		$crud->callback_add_field('kode_kabko',function(){
			return '<input id="field-kode_kabko" class="form-control" name="kode_kabko" type="hidden" value="'.$this->config->item('kode_kabko').'" readonly>'.$this->config->item('kode_kabko');
		});
		$crud->callback_edit_field('kode_kabko',function(){
			return '<input id="field-kode_kabko" class="form-control" name="kode_kabko" type="hidden" value="'.$this->config->item('kode_kabko').'" readonly>'.$this->config->item('kode_kabko');
		});

		//$crud->add_action('Cetak Disposisi', base_url().'disp.png', 'suratkemenag/suratmasuk/cetakdisp');
		$crud->add_action('Cetak Tanda Terima', base_url().'tt.png', 'suratkemenag/kabko_suratmasuk/cetaktt');
		$crud->add_action('Cetak Disposisi', base_url().'disp.png', '','ui-icon-image',array($this,'cetakdisp2'));

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/suratmasuk/suratmasuk';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function cetakdisp2($primary_key , $row)
	{
		if($row->id_sifat==1)
		{
			return site_url('suratkemenag/kabko_suratmasuk/cetakdispbiasa/').$primary_key;
		}
		else
		{
			return site_url('suratkemenag/kabko_suratmasuk/cetakdisp/').$primary_key;
		}
	}

	function carisemua()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_suratmasuk');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->order_by('id','DESC');
		//if ($this->login['id_rules']==1002) { $crud->where('id_sifat <> 4'); } //rahasia
		

		if($crud->getState()=='read'){
			$crud->set_relation('id_asalsurat', 'ref_asalsurat', 'asal_surat');
			$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
			$crud->set_relation('id_user', 'users', 'name');
		}

		$crud->callback_column('id_sifat',function($value){
			$result = $this->db->query("select * from ref_sifat where id=".$value);
			return $result->row()->nama_sifat;
		});
		
		$crud->display_as('id_asalsurat','Asal surat');
		$crud->display_as('id','Nomor Agenda');
		$crud->display_as('id_sifat','Sifat surat');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratmasuk','File surat masuk');
		$crud->columns('id','pengirim','nomor_surat','perihal','indeks_berkas','id_sifat','tanggal_surat');

		$crud->set_field_upload('file_suratmasuk','file_suratmasuk');

		//id user = Perekam
		$crud->display_as('id_user','Perekam');
		
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();

		$crud->add_action('Disposisi', base_url().'history.png', 'suratkemenag/kabko_disposisi/history');
		

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/suratmasuk/suratmasuk';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function cetakdisp()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh
// echo($this->data);
		$this->load->view('suratkemenag/print/disposisi',$this->data);
	}

	function cetakdispbiasa()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->view('suratkemenag/print/disposisibiasa',$this->data);
	}

	function cetaktt()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->view('suratkemenag/print/tt',$this->data);
	}

	function rekamlama()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_suratmasuk');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->order_by('id','desc');

		//$crud->columns('id','pengirim','nomor_surat','perihal','tanggal_surat','id_user');
		$crud->required_fields('id_asalsurat','pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat','id_sifat','lampiran');

		$crud->set_relation('id_asalsurat', 'ref_asalsurat', 'asal_surat');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');

		$crud->unset_delete();

		//id user = Perekam
		$crud->display_as('id_user','Perekam');
		$crud->callback_edit_field('id_user',function($value){
			return '<input id="field-id_user" class="form-control" name="id_user" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});
		$crud->callback_read_field('id_user', function ($value, $primary_key) {
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { return "Kosong"; }
			else if ($result->num_rows()) { return $result->row()->name; } else { return "error query result"; }
		});

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/suratmasuk/suratmasuk';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}
//sekre eof

//all
	function cari()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_suratmasuk_posisi');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->set_primary_key('id','v_suratmasuk_posisi');
		$crud->where('id_sifat <> 4');
		$crud->where('id_penerima_seksi',$this->login['id_seksi']);

		if($crud->getState()=='read'){
			$crud->set_relation('id_asalsurat', 'ref_asalsurat', 'asal_surat');
			$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
			$crud->set_relation('id_user', 'users', 'name');
		}

		$crud->callback_column('id_sifat',function($value){
			$result = $this->db->query("select * from ref_sifat where id=".$value);
			return $result->row()->nama_sifat;
		});
		$crud->display_as('id','Nomor Agenda');
		$crud->display_as('id_pemberi','Pemberi Disposisi');
		$crud->display_as('id_penerima','Penerima Disposisi');
		$crud->display_as('id_penerima_bidang','Bidang Penerima Disposisi');
		$crud->display_as('id_asalsurat','Asal surat');
		$crud->display_as('id_sifat','Sifat surat');
		$crud->display_as('file_suratmasuk','File surat masuk');
		$crud->columns('pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat');

		if($this->login['id_bidang']==1)
		{
			$crud->where('id_penerima_seksi', $this->login['id_seksi']);
		}

		
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();

		$crud->add_action('Disposisi', base_url().'history.png', 'suratkemenag/kabko_disposisi/history');
		$crud->order_by('id','desc');
		

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/suratmasuk/suratmasuk';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}
//all eof

}