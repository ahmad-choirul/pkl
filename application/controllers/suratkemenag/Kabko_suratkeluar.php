<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Terimakasi telah menggunkan aplikasi ini
 *
 * Aplikasi ini dibuat untuk digratiskan dengan ijin sebelumnya
 *
 * Apabila anda membutuhkan asistensi silahkan kontak ke +6285645862323 (FITRI)
 *
 * Kami juga menerima pembuatan aplikasi untuk kepentingan komersial
 *
 * @category   AplikasiSurat
 * @author     Original Author <raihani.fitri@gmail.com>
 * @copyright  2017-2018
 * @version    AS-v0.1-KabKo
 *
 * MENYEBARKAN / MENCOPY / MEMASANG DI TEMPAT LAIN TANPA IJIN PEMBUAT ADALAH TIDAK TERPUJI
 *
 */
class Kabko_suratkeluar extends CI_Controller {
	function __construct() 
    {
        parent::__construct();

		// benchmark aja...
		if (1==2) 
		{
			$sections = array(
				'benchmarks' => TRUE, 'memory_usage' => TRUE, 
				'config' => FALSE, 'controller_info' => FALSE, 'get' => FALSE, 'post' => FALSE, 'queries' => FALSE, 
				'uri_string' => FALSE, 'http_headers' => FALSE, 'session_data' => FALSE
			); 
			$this->output->set_profiler_sections($sections);
			$this->output->enable_profiler(TRUE);
		}

		$this->data = null;
	    $logged_in = $this->session->userdata('logged_in');
	    if(!isset($logged_in['id_rules']))
	    {
	    	redirect('/auth/logout/');
	    }
		$this->login = $this->session->userdata('logged_in');
	}

//pengguna 
	function index()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		//if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh
		
		$this->load->library('grocery_CRUD');  

		$crud = new grocery_CRUD();
		$crud->set_table('t_suratkeluar');
		$crud->display_as('id_tujuansurat','Tujuan Surat');
		$crud->display_as('id_sifat','Sifat Surat');
		$crud->display_as('id_kodeklasifikasi','Klasifikasi');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratkeluar','File Surat Keluar');
		$crud->display_as('id_jenissurat','Jenis Surat');
		$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'BUKU {buku} | {jenissurat}','buku in (1,2,3,'.$this->login['id_seksi'].')','id ASC');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
		$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', '{klasifikasi3} | {nama_klasifikasi}');
		$crud->set_field_upload('file_suratkeluar','file_suratkeluar');


		$crud->order_by('id','desc');

		$crud->where('id_user',$this->login['id']);
		$crud->where('nomor_surat',null);

		//tanggal rekam
		$crud->callback_add_field('tanggal_rekam',function(){
			return '<input id="field-tanggal_rekam" class="form-control" name="tanggal_rekam" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Otomatis';
		});
		$crud->callback_edit_field('tanggal_rekam',function($value){
			return '<input id="field-tanggal_rekam" class="form-control" name="tanggal_rekam" type="hidden" value="'.$value.'" readonly>'.$value;
		});

		//nomor_surat
		$crud->callback_add_field('nomor_surat',function(){
			return '<input id="field-nomor_surat" class="form-control" name="nomor_surat" type="hidden" value="" readonly>Otomatis';
		});
		$crud->callback_edit_field('nomor_surat',function($value){
			return '<input id="field-nomor_surat" class="form-control" name="nomor_surat" type="hidden" value="'.$value.'" readonly>'.$value;
		});
		//status_BO
		$crud->callback_add_field('status_BO',function(){
			return '<input id="field-status_BO" class="form-control" name="status_BO" type="hidden" value="0" readonly>Otomatis';
		});
		$crud->callback_edit_field('status_BO',function($value){
			return '<input id="field-status_BO" class="form-control" name="status_BO" type="hidden" value="'.$value.'" readonly>'.$value;
		});

		//catatan_BO
		$crud->callback_add_field('catatan_BO',function(){
			return '<input id="field-catatan_BO" class="form-control" name="catatan_BO" type="hidden" value="" readonly>Otomatis';
		});
		$crud->callback_edit_field('catatan_BO',function($value){
			return '<input id="field-catatan_BO" class="form-control" name="catatan_BO" type="hidden" value="'.$value.'" readonly>'.$value;
		});

		//kode_kabko
		$crud->callback_add_field('kode_kabko',function(){
			return '<input id="field-kode_kabko" class="form-control" name="kode_kabko" type="hidden" value="'.$this->config->item('kode_kabko').'" readonly>'.$this->config->item('kode_kabko');
		});
		$crud->callback_edit_field('kode_kabko',function($value){
			return '<input id="field-kode_kabko" class="form-control" name="kode_kabko" type="hidden" value="'.$value.'" readonly>'.$value;
		});

		//id user = Perekam
		$crud->display_as('id_user','Perekam');
		$crud->callback_add_field('id_user',function(){
			return '<input id="field-id_user" class="form-control" name="id_user" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	
		$crud->callback_edit_field('id_user',function($value){
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { $hasil="Kosong"; }
			else if ($result->num_rows()) { $hasil = $result->row()->name; } else { $hasil="error query result"; }
			return '<input id="field-id_user" class="form-control" name="id_user" type="hidden" value="'.$value.'" readonly>'.$hasil;
		});
		$crud->callback_read_field('id_user', function ($value, $primary_key) {
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { return "Kosong"; }
			else if ($result->num_rows()) { return $result->row()->name; } else { return "error query result"; }
		});

		//id_klasifikasi dihilangkan.
		$crud->required_fields('id_tujuansurat','id_sifat','id_user','id_jenissurat','penerima','perihal','indeks_surat','lampiran','file_suratkeluar','tanggal_rekam','tanggal_surat','kode_kabko');

		$crud->add_fields(array('id_tujuansurat','penerima','id_jenissurat','id_kodeklasifikasi','perihal','indeks_surat','id_sifat','lampiran','tanggal_surat','id_user','file_suratkeluar','tanggal_rekam','nomor_surat','status_BO','catatan_BO','kode_kabko')); 
		$crud->edit_fields(array('id_tujuansurat','penerima','id_jenissurat','id_kodeklasifikasi','perihal','indeks_surat','id_sifat','lampiran','tanggal_surat','id_user','file_suratkeluar','tanggal_rekam','status_BO','catatan_BO','kode_kabko'));

		$crud->columns('penerima','perihal','indeks_surat','id_sifat','catatan_BO');

		$crud->callback_before_insert(array($this,'insertsuratkeluar'));
		//$crud->callback_after_insert(array($this, 'insertsuratkeluarafter'));

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
		
	}

	function insertsuratkeluar($post_array) {
		if($post_array['id_jenissurat']>5)
		{
			$result = $this->db->query("select COALESCE(max(nomor_surat),0)+1 nomax from t_suratkeluar where id_jenissurat=".$post_array['id_jenissurat']);
			$post_array['nomor_surat'] = $result->row()->nomax;
			$post_array['status_BO'] = '1';
			$post_array['catatan_BO'] = 'Generate by System';
			$post_array['tanggal_surat'] = date("Y-m-d");
		}
		 
		return $post_array;
	}   

	function insertsuratkeluarafter($post_array,$primary_key) {

		 return true; 
	}          


	function daftar()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		//if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh
		
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('t_suratkeluar');
		$crud->where('id_seksi',$this->login['id_seksi']);
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->display_as('id_tujuansurat','Tujuan Surat');
		$crud->display_as('id_sifat','Sifat Surat');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratkeluar','File Surat Keluar');
		$crud->display_as('id_jenissurat','Jenis Surat');
		$crud->display_as('id_kodeklasifikasi','Kode Klasifikasi');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
		$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
		$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

		$crud->unset_add();
		$crud->unset_delete();
		$crud->unset_edit();

		$crud->order_by('id','desc');

		//id user = Perekam
		$crud->display_as('id_user','Perekam');

		$crud->field_type('status_BO','dropdown',
		array('0' => 'Tidak Setuju', '1' => 'Setuju'));

		$crud->columns('id_jenissurat','penerima','perihal','indeks_surat','tanggal_surat','id_sifat','nomor_surat');

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
		
	}
//pengguna eof

//sekre
	function responsekre()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('t_suratkeluar');
		$crud->order_by('id','desc');
		$crud->where('tanggal_rekam is not null');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->display_as('id_tujuansurat','Tujuan Surat');
		$crud->display_as('id_sifat','Sifat Surat');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratkeluar','File Surat Keluar');
		$crud->display_as('id_kodeklasifikasi','Klasifikasi');
		$crud->display_as('id_jenissurat','Jenis Surat');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
		$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', 'klasifikasi3');
		$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
		$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

		$crud->where('nomor_surat is null');
		$crud->unset_add();
		$crud->unset_delete();
		$crud->unset_edit();

		$crud->required_fields('catatan_BO','status_BO');

		//id user = Perekam
		$crud->display_as('id_user','Perekam');
		
		$crud->callback_read_field('id_user', function ($value, $primary_key) {
			$result = $this->db->query("select * from users where id=".$value);
			if ($value==0) { return "Kosong"; }
			else if ($result->num_rows()) { return $result->row()->name; } else { return "error query result"; }
		});


		$crud->callback_column('file_suratkeluar', function ($value, $row) {
			if ($value!=null) {	$file='<a href= "'.base_url().'file_suratkeluar/'.$value.'">Download</a>'; }
			else { $file = ''; }
			return $file.' | <a href= "'.base_url().'kabko_suratkeluar/bericatatan/edit/'.$row->id.'">Catatan</a>'.' | <a href= "'.base_url().'kabko_suratkeluar/berinomor/edit/'.$row->id.'">Nomor</a>';
		});

		$crud->edit_fields(array('catatan_BO'));
		$crud->display_as('catatan_BO','Catatan');
		$crud->display_as('status_BO','Status');

		$crud->field_type('status_BO','dropdown',
		array('0' => 'Tidak Setuju', '1' => 'Setuju'));

		$crud->columns('id_jenissurat','penerima','perihal','indeks_surat','tanggal_surat','id_sifat','id_user','id_kodeklasifikasi','file_suratkeluar','catatan_BO');

		//tanggal surat
	
		$crud->callback_edit_field('tanggal_surat',function($value){
			return '<input id="field-tanggal_surat" class="form-control" name="tanggal_surat" type="hidden" value="'.date("Y-m-d").'" readonly>'.date("Y-m-d");
		});

		$crud->callback_edit_field('nomor_surat',function($value, $primary_key){
			$result = $this->db->query("select id_jenissurat from t_suratkeluar where id='".$primary_key."'");
			$js = $result->row(0);

			$this->load->model('Model_suratkeluar');
			$nb = $this->Model_suratkeluar->get_nomor($js->id_jenissurat)->result();
			$rnb = $nb[0]->nomor_terakhir_buku+1;
			//echo $nb[0]->nomor_terakhir_buku;
			return '<input id="field-nomor_surat" class="form-control" name="nomor_surat" type="text" value="'.$rnb.' " readonly> Nomer Terakhir :'.$nb[0]->nomor_terakhir_buku;
		});

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
		
	}

	function daftarsekre()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('t_suratkeluar');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->order_by('id','desc');
		$crud->display_as('id_tujuansurat','Tujuan Surat');
		$crud->display_as('id_sifat','Sifat Surat');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratkeluar','File Surat Keluar');
		$crud->display_as('id_jenissurat','Jenis Surat');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
		$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
		$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

		$crud->where('nomor_surat is not null');
		
		$crud->unset_add();
		$crud->unset_delete();
		$crud->unset_edit();

		$crud->order_by('id','desc');

		//id user = Perekam
		$crud->display_as('id_user','Perekam');

		$crud->field_type('status_BO','dropdown',
		array('0' => 'Tidak Setuju', '1' => 'Setuju'));

		$crud->columns('id_jenissurat','penerima','perihal','indeks_surat','tanggal_surat','id_sifat','id_user','nomor_surat');

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
		
	}

	function berinomor()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		try{
			$this->load->library('grocery_CRUD');  
			
			$crud = new grocery_CRUD();
			$crud->set_table('t_suratkeluar');
			$crud->where('kode_kabko',$this->config->item('kode_kabko'));
			//$crud->edit_fields(array('nomor_surat','tanggal_surat'));
			$crud->required_fields('nomor_surat','tanggal_surat');

			$crud->field_type('id_kodeklasifikasi', 'readonly');
			$crud->field_type('id_tujuansurat', 'readonly');
			$crud->field_type('penerima', 'readonly');
			$crud->field_type('id_jenissurat', 'readonly');
			$crud->field_type('perihal', 'readonly');
			$crud->field_type('indeks_surat', 'readonly');
			$crud->field_type('tanggal_rekam', 'readonly');
			$crud->field_type('id_sifat', 'readonly');
			$crud->field_type('lampiran', 'readonly');
			$crud->field_type('id_user', 'readonly');
			$crud->field_type('file_suratkeluar', 'readonly');
			$crud->field_type('catatan_BO', 'readonly');
			$crud->field_type('status_BO', 'readonly');
			$crud->field_type('kode_kabko', 'readonly');
			
			$crud->display_as('id_tujuansurat','Tujuan Surat');
			$crud->display_as('id_sifat','Sifat Surat');
			$crud->display_as('id_user','Perekam');
			$crud->display_as('file_suratkeluar','File Surat Keluar');
			$crud->display_as('id_kodeklasifikasi','Klasifikasi');
			$crud->display_as('id_jenissurat','Jenis Surat');
			$crud->display_as('catatan_BO', 'Catatan');
			$crud->display_as('status_BO', 'Status');
			$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
			$crud->set_relation('id_user', 'users', 'name');
			$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
			$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', 'klasifikasi3');
			$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
			$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

			$crud->order_by('id','ASC');

			$crud->where('nomor_surat is null');
			$crud->where('tanggal_surat <='.date('Y-m-d'));
			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_read();
			$crud->unset_list();

			//tanggal surat
		
			$crud->callback_edit_field('tanggal_surat',function($value){
				return '<input id="field-tanggal_surat" class="form-control" name="tanggal_surat" type="hidden" value="'.date("Y-m-d").'" readonly>'.date("Y-m-d");
			});

			//id user = Perekam
			$crud->display_as('id_user','Perekam');
			$crud->callback_read_field('id_user', function ($value, $primary_key) {
				$result = $this->db->query("select * from users where id=".$value);
				if ($value==0) { return "Kosong"; }
				else if ($result->num_rows()) { return $result->row()->name; } else { return "error query result"; }
			});

			$crud->callback_edit_field('nomor_surat',function($value, $primary_key){
				$result = $this->db->query("select id_jenissurat from t_suratkeluar where id='".$primary_key."'");
				$js = $result->row(0);

				$this->load->model('Model_suratkeluar');
				$nb = $this->Model_suratkeluar->get_nomor($js->id_jenissurat)->result();
				$rnb = $nb[0]->nomor_terakhir_buku+1;
				//echo $nb[0]->nomor_terakhir_buku;
				return '<input id="field-nomor_surat" class="form-control" name="nomor_surat" type="text" value="'.$rnb.' " readonly> Nomer Terakhir :'.$nb[0]->nomor_terakhir_buku;
			});
			$crud->columns('id_jenissurat','penerima','perihal','tanggal_surat','id_sifat','id_user');

			$output = $crud->render();

			$data['main_page'] = 'suratkeluar/suratkeluar';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('default',$output);
		} catch(Exception $e) {
		if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
		{ redirect('/kabko_suratkeluar/responsekre'); }
		else
		{
		    show_error($e->getMessage());
		}
		}
	}

	function bericatatan()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		try{
			$this->load->library('grocery_CRUD');  
			
			$crud = new grocery_CRUD();
			$crud->set_table('t_suratkeluar');
			//$crud->edit_fields(array('nomor_surat','tanggal_surat'));
			$crud->required_fields('catatan_BO');

			$crud->field_type('id_kodeklasifikasi', 'readonly');
			$crud->field_type('id_tujuansurat', 'readonly');
			$crud->field_type('penerima', 'readonly');
			$crud->field_type('id_jenissurat', 'readonly');
			$crud->field_type('perihal', 'readonly');
			$crud->field_type('indeks_surat', 'readonly');
			$crud->field_type('tanggal_rekam', 'readonly');
			$crud->field_type('id_sifat', 'readonly');
			$crud->field_type('lampiran', 'readonly');
			$crud->field_type('id_user', 'readonly');
			$crud->field_type('file_suratkeluar', 'readonly');
			$crud->field_type('nomor_surat', 'readonly');
			$crud->field_type('tanggal_surat', 'readonly');
			$crud->field_type('status_BO', 'readonly');
			$crud->field_type('kode_kabko', 'readonly');
			
			$crud->display_as('id_tujuansurat','Tujuan Surat');
			$crud->display_as('id_sifat','Sifat Surat');
			$crud->display_as('id_user','Perekam');
			$crud->display_as('file_suratkeluar','File Surat Keluar');
			$crud->display_as('id_kodeklasifikasi','Klasifikasi');
			$crud->display_as('id_jenissurat','Jenis Surat');
			$crud->display_as('catatan_BO', 'Catatan');
			$crud->display_as('status_BO', 'Status');
			$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');
			$crud->set_relation('id_user', 'users', 'name');
			$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
			$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', 'klasifikasi3');
			$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
			$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

			$crud->order_by('id','ASC');

			$crud->where('nomor_surat is null');
			$crud->where('tanggal_surat <='.date('Y-m-d'));
			$crud->unset_add();
			$crud->unset_delete();
			$crud->unset_read();
			$crud->unset_list();

			
			$output = $crud->render();

			$data['main_page'] = 'suratkeluar/suratkeluar';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('default',$output);
		} catch(Exception $e) {
		if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
		{ redirect('/kabko_suratkeluar/responsekre'); }
		else
		{
		    show_error($e->getMessage());
		}
		}
	}

	function carisemua()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_suratkeluar');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));

		$crud->where('nomor_surat is not null');
		$crud->where('id_user is not null');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		//$crud->unset_read();
		if($crud->getState()=='read'){
			$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
			$crud->display_as('id_tujuansurat', 'Tujuan Surat');
			$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
			$crud->display_as('id_jenissurat', 'Jenis Surat');
			$crud->set_relation('id_bidang', 'ref_bidang', 'nama_bidang');
			$crud->display_as('id_bidang', 'Bidang');
			$crud->set_relation('id_seksi', 'ref_seksi', 'nama_seksi');
			$crud->display_as('id_seksi', 'Seksi');
			$crud->set_relation('id_jabatan', 'ref_jabatan', 'jabatan');
			$crud->display_as('id_jabatan', 'Jabatan');

		}

		$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', 'klasifikasi3');
		$crud->display_as('id_kodeklasifikasi', 'Kode Klasifikasi');

		$crud->display_as('id_user', 'Konseptor');
		$crud->display_as('id_sifat', 'Sifat');

		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');

		$crud->columns('id_kodeklasifikasi','penerima','perihal','tanggal_surat','id_sifat','id_user');

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
		
	}

	function rekap()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh
		
		if($this->input->post('tanggal_surat')!=null)
		{ redirect('kabko_suratkeluar/rekapprint/'.$this->input->post('tanggal_surat').'/print'); }
			
		$this->data['data']['main_page'] = 'suratkeluar/rekap';
		$this->load->view('default',$this->data);
	}

	function rekapprint()
	{
		if($this->login['id_rules']==1001) { redirect('/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_suratkeluar');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		//$crud->where('id_sifat <> 4');
		$crud->where('tanggal_surat',$this->uri->segment(3));
		
		$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
		$crud->set_relation('id_user', 'users', 'name');
		$crud->display_as('id_jenissurat', 'Jenis Surat');
		$crud->display_as('id_user', 'Perekam');
		$crud->
		columns('nomor_surat','tanggal_surat','id_jenissurat','penerima','id_user','tanggal_rekam');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_list();
		

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
	}
//sekre eof

//all
	function cari()
	{

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_suratkeluar');
		$crud->set_primary_key('id','v_suratkeluar');

		$crud->where('nomor_surat is not null');
		$crud->where('v_suratkeluar.id_bidang',$this->login['id_bidang']);

		if($this->login['id_bidang']==1)
		{
			$crud->where('v_suratkeluar.id_seksi', $this->login['id_seksi']);
		}

		$crud->set_field_upload('file_suratkeluar','file_suratkeluar');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		//$crud->unset_read();

		if($crud->getState()=='read'){
			$crud->set_relation('id_tujuansurat', 'ref_asalsurat', 'asal_surat');
			$crud->display_as('id_tujuansurat', 'Tujuan Surat');
			$crud->set_relation('id_jenissurat', 'ref_jenissurat', 'jenissurat');
			$crud->display_as('id_jenissurat', 'Jenis Surat');
			$crud->set_relation('id_bidang', 'ref_bidang', 'nama_bidang');
			$crud->display_as('id_bidang', 'Bidang');
			$crud->set_relation('id_seksi', 'ref_seksi', 'nama_seksi');
			$crud->display_as('id_seksi', 'Seksi');
			$crud->set_relation('id_jabatan', 'ref_jabatan', 'jabatan');
			$crud->display_as('id_jabatan', 'Jabatan');

		}

		$crud->set_relation('id_kodeklasifikasi', 'm_kodeklasifikasi', 'klasifikasi3');
		$crud->display_as('id_kodeklasifikasi', 'Kode Klasifikasi');
		$crud->display_as('id_user', 'Konseptor');
		$crud->display_as('id_sifat', 'Sifat');

		$crud->set_relation('id_user', 'users', 'name');
		$crud->set_relation('id_sifat', 'ref_sifat', 'nama_sifat');

		$crud->columns('nomor_surat','id_kodeklasifikasi','penerima','perihal','tanggal_surat','id_sifat','id_user');

		$output = $crud->render();

		$data['main_page'] = 'suratkeluar/suratkeluar';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('default',$output);
	}
//all eof

}