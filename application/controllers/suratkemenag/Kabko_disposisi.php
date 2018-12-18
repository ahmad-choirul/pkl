<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kabko_disposisi extends CI_Controller {
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
	    	redirect('suratkemenag/auth/logout/');
	    }
		$this->login = $this->session->userdata('logged_in');
	}

//sekre
	function index()
	{
		if($this->login['id_rules']==1001) { redirect('suratkemenag//errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('suratkemenag//errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('suratkemenag//errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('suratkemenag//errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('v_suratmasuk_posisi');
		$crud->set_primary_key('id','v_suratmasuk_posisi');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->where('id_penerima', null);
		//$crud->where ('id_sifat <> 1'); //surat biasa
		//$crud->set_relation('id_sifat','ref_sifat','nama_sifat');
		$crud->order_by('id','ASC');

		$crud->callback_column('id_sifat',function($value){
			$result = $this->db->query("select * from ref_sifat where id=".$value);
			return $result->row()->nama_sifat;
		});

		$crud->columns('id','pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat','tanggal_rekam','id_sifat');

		$crud->display_as('id','No Agenda');
		$crud->display_as('nomor_surat','Nomor Surat');
		$crud->display_as('indeks_berkas','Indeks Berkas');
		$crud->display_as('tanggal_surat','Tanggal Surat');
		$crud->display_as('tanggal_rekam','Tanggal Rekam');
		$crud->display_as('id_sifat','Sifat Surat');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->add_action('Disposisi', base_url().'proses.png', 'suratkemenag/kabko_disposisi/prosessekre/add');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}	

	function prosessekre()
	{
		if($this->login['id_rules']==1001) { redirect('suratkemenag//errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('suratkemenag//errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('suratkemenag//errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('suratkemenag//errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('t_disposisi');
		$crud->required_fields('id_pemberi','tanggal_disposisi','catatan_disposisi');

		$crud->display_as('id_suratmasuk','ID');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam');
		$crud->display_as('id_userdisposisi','Perekam');
		$crud->display_as('id_penerima','Penerima Disposisi');
		$crud->display_as('id_pemberi','Pemberi Disposisi');

		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();
		$crud->unset_list();

		$crud->callback_add_field('id_suratmasuk',function(){
			return '<input id="field-id_suratmasuk" class="form-control" name="id_suratmasuk" type="hidden" value="'.$this->uri->segment(5).'" readonly>locked';
		});

		//tanggal rekam
		$crud->callback_add_field('tanggal_rekamdisposisi',function(){
			return '<input id="field-tanggal_rekamdisposisi" class="form-control" name="tanggal_rekamdisposisi" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Tanggal Otomatis';
		});
		
		//id user = Perekam
		$crud->callback_add_field('id_userdisposisi',function(){
			return '<input id="field-id_userdisposisi" class="form-control" name="id_userdisposisi" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	
		
		//penerima disposisi
		$results = $this->db->query('select id,kode_bidangcek,name from v_users where status=1 and id_jabatan=1002')->result();
		$penerima = array();
		foreach ($results as $result) { $penerima[$result->id] = $result->kode_bidangcek." | ".$result->name;	}
		$crud->field_type('id_penerima', 'multiselect', $penerima);

		$crud->callback_add_field('id_pemberi',function(){
			$qgetes3='select * from users where status=1 and id_jabatan=1001 and id_bidang=1000';
			$getes3 = $this->db->query($qgetes3)->row();
			 return '<input id="field-id_pemberi" class="form-control" name="id_pemberi" type="hidden" value="'.$getes3->id.'" readonly>'.$getes3->name; });

		$crud->callback_insert(array($this,'insertproses'));

		try{
			$output = $crud->render();

			$data['main_page'] = 'suratkemenag/admin/admin';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('suratkemenag/default',$output);
		} catch(Exception $e) {
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{  redirect('suratkemenag/kabko_disposisi/index'); }
			else { show_error($e->getMessage()); }
		}
		
	}    

	function daftarsekre()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('v_disposisi');
		$crud->order_by('id','desc');
		$crud->field_type('id','readonly');
		$crud->field_type('id_suratmasuk','readonly');
		$crud->set_primary_key('id','v_disposisi');
		$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->where('id_pemberi_jabatan', '1001');

		$crud->set_relation('id_pemberi','users','name');
		$crud->set_relation('id_penerima','users','name');

		$crud->display_as('id_suratmasuk','No Agenda');
		$crud->display_as('info','Nomor Surat / Perihal');
		$crud->display_as('id_pemberi','Pemberi Disposisi');
		$crud->display_as('id_penerima','Penerima Disposisi');
		$crud->display_as('tanggal_disposisi','Tanggal Disposisi');
		$crud->display_as('catatan_disposisi','Catatan Disposisi');
		$crud->display_as('id_userdisposisi','Perekam Disposisi');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam Disposisi');
		$crud->display_as('id_pemberi_bidang','Pemberi Disposisi Bidang');
		$crud->display_as('id_pemberi_seksi','Pemberi Disposisi Seksi');
		$crud->display_as('id_asalsurat','Asal Surat');
		$crud->display_as('pengirim','pengirim Surat');
		$crud->display_as('nomor_surat','Nomor Surat');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->columns('id_suratmasuk','info','id_penerima','tanggal_disposisi','catatan_disposisi','Proses');
		$crud->callback_column('info',function($value,$row){
			return  wordwrap($row->nomor_surat.'/'.$row->perihal,70,'<br>');
		});
		$crud->callback_column('Proses',function($value,$row){
			return  '<a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/edit/'.$row->id.'">edit</a>  | <a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/delete/'.$row->id.'">delete</a>';
		});

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}
//sekre eof

//es4
	function eselon4()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		//if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_disposisi_last');
		//$crud->where('kode_kabko',$this->config->item('kode_kabko'));
		$crud->set_primary_key('id_suratmasuk','v_disposisi_last');
		$crud->where('id_penerima_bidang', $this->login['id_bidang']);
		$crud->where('id_penerima_seksi', $this->login['id_seksi']);
		$crud->where('id_penerima_jabatan', '1002');
		$crud->where('id_penerima_jabatan <> id_pemberi_jabatan');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->required_fields('id_pemberi','id_penerima','tanggal_disposisi','catatan_disposisi');

		$crud->display_as('nomor_surat','Nomor Surat');
		$crud->display_as('indeks_berkas','Indeks Berkas');
		$crud->display_as('tanggal_surat','Tanggal Surat');	
		$crud->display_as('tanggal_rekam','Tanggal Rekam');	
		$crud->display_as('id_sifat','Sifat Surat');	

		$crud->set_relation('id_sifat','ref_sifat','nama_sifat');

		$crud->columns('pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat','tanggal_rekam','id_sifat');

		$crud->add_action('Disposisi', base_url().'proses.png', 'suratkemenag/kabko_disposisi/proseseselon4/add');
		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}

	function proseseselon4()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		//if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_disposisi');

		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();
		$crud->unset_list();

		$crud->required_fields('id_pemberi','tanggal_disposisi','catatan_disposisi');


		$crud->display_as('id_suratmasuk','ID');
		$crud->callback_add_field('id_suratmasuk',function(){
			return '<input id="field-id_suratmasuk" class="form-control" name="id_suratmasuk" type="hidden" value="'.$this->uri->segment(5).'" readonly>locked';
		});

		//tanggal rekam
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam');
		$crud->callback_add_field('tanggal_rekamdisposisi',function(){
			return '<input id="field-tanggal_rekamdisposisi" class="form-control" name="tanggal_rekamdisposisi" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Tanggal Otomatis';
		});
		
		//id user = Perekam
		$crud->display_as('id_userdisposisi','Perekam');
		$crud->callback_add_field('id_userdisposisi',function(){
			return '<input id="field-id_userdisposisi" class="form-control" name="id_userdisposisi" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	
		
		//penerima disposisi
		$crud->display_as('id_penerima','Penerima Disposisi');
		$results = $this->db->query('select id,kode_bidangcek,name from v_users where status=1 and id_bidang ='.$this->login['id_bidang'].' and id_seksi ='.$this->login['id_seksi'])->result();
		$penerima = array();
		foreach ($results as $result) { $penerima[$result->id] = $result->kode_bidangcek." | ".$result->name;	}
		$crud->field_type('id_penerima', 'multiselect', $penerima);

		$crud->callback_insert(array($this,'insertproses'));
		
		$crud->display_as('id_pemberi','Pemberi Disposisi');

		$crud->callback_add_field('id_pemberi',function(){ return '<input id="field-id_pemberi" class="form-control" name="id_pemberi" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name']; });
		//$crud->set_relation('id_pemberi','users','name',array('status' => '1', 'id_jabatan' => '3','id_bidang' => $this->login['id_bidang'], 'id_seksi' => $this->login['id_seksi']));



		try{
			$output = $crud->render();

			$data['main_page'] = 'suratkemenag/admin/admin';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('suratkemenag/default',$output);
		} catch(Exception $e) {
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{  redirect('suratkemenag/kabko_disposisi/eselon4'); }
			else { show_error($e->getMessage()); }
		}
		
	}

	function daftareselon4()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		//if($this->login['id_rules']==1003) { redirect('/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_disposisi');
		$crud->where('v_disposisi.kode_kabko',$this->config->item('kode_kabko'));
		$crud->set_primary_key('id','v_disposisi');
		$crud->order_by('id','desc');
		$crud->field_type('id','readonly');
		$crud->field_type('id_suratmasuk','readonly');
		$crud->where('id_pemberi_bidang', '1000');
		//$crud->where('id_pemberi_seksi', $this->login['id_seksi']);
		$crud->where('id_pemberi_jabatan', '1002');

		$crud->order_by('id_suratmasuk','desc');


		$crud->set_relation('id_suratmasuk','t_suratmasuk','{nomor_surat} / {perihal}');
		$crud->set_relation('id_pemberi','users','name');
		$crud->set_relation('id_penerima','users','name');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->columns('id_suratmasuk','id_pemberi','id_penerima','tanggal_disposisi','catatan_disposisi','Proses');
		$crud->callback_column('Proses',function($value,$row){
			return  '<a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/edit/'.$row->id.'">edit</a>  | <a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/delete/'.$row->id.'">delete</a>';
		});

		$crud->display_as('id_suratmasuk','Nomor Surat / Perihal');
		$crud->display_as('id_pemberi','Pemberi Disposisi');
		$crud->display_as('id_penerima','Penerima Disposisi');
		$crud->display_as('tanggal_disposisi','Tanggal Disposisi');
		$crud->display_as('catatan_disposisi','Catatan Disposisi');
		$crud->display_as('id_userdisposisi','Perekam Disposisi');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam Disposisi');
		$crud->display_as('id_pemberi_bidang','Pemberi Disposisi Bidang');
		$crud->display_as('id_pemberi_seksi','Pemberi Disposisi Seksi');
		$crud->display_as('id_asalsurat','Asal Surat');
		$crud->display_as('pengirim','pengirim Surat');
		$crud->display_as('nomor_surat','Nomor Surat');

		//$crud->add_action('Disposisi', base_url().'history.png', 'kabko_disposisi/history');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}
//es4 eof

//pelaksana
	function pelaksana()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		//if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_disposisi_last');
		$crud->set_primary_key('id_suratmasuk','v_disposisi_last');
		$crud->where('id_penerima', $this->login['id']);
		$crud->where('id_pemberi!='.$this->login['id']);

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->display_as('nomor_surat','Nomor Surat');
		$crud->display_as('indeks_berkas','Indeks Berkas');
		$crud->display_as('tanggal_surat','Tanggal Surat');	
		$crud->display_as('tanggal_rekam','Tanggal Rekam');	
		$crud->display_as('id_sifat','Sifat Surat');	

		$crud->set_relation('id_sifat','ref_sifat','nama_sifat');

		$crud->columns('pengirim','nomor_surat','perihal','indeks_berkas','tanggal_surat','tanggal_rekam','id_sifat');

		$crud->add_action('Disposisi', base_url().'proses.png', 'suratkemenag/kabko_disposisi/prosespelaksana/add');
		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}

	function prosespelaksana()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		//if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh


		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_disposisi');

		$crud->display_as('tanggal_disposisi','Tanggal Proses');
		$crud->display_as('catatan_disposisi','Catatan');

		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();
		$crud->unset_list();

		$crud->required_fields('id_pemberi','id_penerima','tanggal_disposisi','catatan_disposisi');
		

		$crud->display_as('id_suratmasuk','ID');
		$crud->callback_add_field('id_suratmasuk',function(){
			return '<input id="field-id_suratmasuk" class="form-control" name="id_suratmasuk" type="hidden" value="'.$this->uri->segment(5).'" readonly>locked';
		});
		$crud->display_as('id_pemberi','Pemilik Aktifitas');
		$crud->callback_add_field('id_pemberi',function(){
			return '<input id="field-id_pemberi" class="form-control" name="id_pemberi" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name']; });	
		$crud->display_as('id_penerima','Petugas Pemproses');
		$crud->callback_add_field('id_penerima',function(){
			return '<input id="field-id_penerima" class="form-control" name="id_penerima" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	

		//tanggal rekam
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam');
		$crud->callback_add_field('tanggal_rekamdisposisi',function(){
			return '<input id="field-tanggal_rekamdisposisi" class="form-control" name="tanggal_rekamdisposisi" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Tanggal Otomatis';
		});
		
		//id user = Perekam
		$crud->display_as('id_userdisposisi','Perekam');
		$crud->callback_add_field('id_userdisposisi',function(){
			return '<input id="field-id_userdisposisi" class="form-control" name="id_userdisposisi" type="hidden" value="'.$this->login['id'].'" readonly>'.$this->login['name'];
		});	
		
		$crud->display_as('id_penerima','Penerima Disposisi');
		$crud->set_relation('id_penerima','users','name',array('status' => '1', 'id_jabatan' => '4', 'id_bidang' => $this->login['id_bidang'], 'id_seksi' => $this->login['id_seksi']));

		$crud->display_as('id_pemberi','Pemberi Disposisi');
		$crud->set_relation('id_pemberi','users','name',array('status' => '1', 'id_jabatan' => '3','id_bidang' => $this->login['id_bidang'], 'id_seksi' => $this->login['id_seksi']));

		try{
			$output = $crud->render();

			$data['main_page'] = 'suratkemenag/admin/admin';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('suratkemenag/default',$output);
		} catch(Exception $e) {
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{  redirect('suratkemenag/kabko_disposisi/pelaksana'); }
			else { show_error($e->getMessage()); }
		}
		
	}

	function daftarpelaksana()
	{
		if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		//if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_disposisi');
		$crud->set_primary_key('id');
		$crud->order_by('id','desc');
		$crud->field_type('id','readonly');
		$crud->field_type('id_suratmasuk','readonly');
		$crud->where('id_penerima', $this->login['id']);
		$crud->where('id_pemberi', $this->login['id']);

		$crud->set_relation('id_suratmasuk','t_suratmasuk','{nomor_surat} / {perihal}');
		$crud->set_relation('id_pemberi','users','name');
		$crud->set_relation('id_penerima','users','name');

		$crud->order_by('id_suratmasuk','desc');


		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->columns('id_suratmasuk','id_pemberi','id_penerima','tanggal_disposisi','catatan_disposisi','Proses');
		$crud->callback_column('Proses',function($value,$row){
			return  '<a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/edit/'.$row->id.'">edit</a>  | <a href="'.base_url().'suratkemenag/kabko_disposisi/prosesdisp/delete/'.$row->id.'">delete</a>';
		});

		$crud->display_as('id_suratmasuk','Nomor Surat / Perihal');
		$crud->display_as('id_pemberi','Pemilik Aktifitas');
		$crud->display_as('id_penerima','Petugas Pemproses');
		$crud->display_as('tanggal_disposisi','Tanggal Proses');
		$crud->display_as('catatan_disposisi','Catatan');
		$crud->display_as('id_userdisposisi','Perekam Disposisi');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam Disposisi');
		$crud->display_as('id_pemberi_bidang','Pemberi Disposisi Bidang');
		$crud->display_as('id_pemberi_seksi','Pemberi Disposisi Seksi');
		$crud->display_as('id_asalsurat','Asal Surat');
		$crud->display_as('pengirim','pengirim Surat');
		$crud->display_as('nomor_surat','Nomor Surat');


		//$crud->add_action('Disposisi', base_url().'history.png', 'disposisi/history');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}
//pelaksana eof

//all
	function history()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('v_disposisi');
		$crud->set_primary_key('id','v_disposisi');
		$crud->where('id_suratmasuk',$this->uri->segment(4));

		$crud->set_relation('id_pemberi','users','name');
		$crud->set_relation('id_penerima','users','name');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_read();

		$crud->columns('id_suratmasuk','info','id_pemberi','id_penerima','tanggal_disposisi','catatan_disposisi');

		$crud->callback_column('info',function($value,$row){ return  wordwrap($row->nomor_surat.'/'.$row->perihal,70,'<br>'); });

		$crud->display_as('id_suratmasuk','No Agenda');
		$crud->display_as('info','Nomor Surat / Perihal');
		$crud->display_as('id_pemberi','Pemilik Aktifitas');
		$crud->display_as('id_penerima','Petugas Pemproses');
		$crud->display_as('tanggal_disposisi','Tanggal Proses');
		$crud->display_as('catatan_disposisi','Catatan');
		$crud->display_as('id_userdisposisi','Perekam Disposisi');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam Disposisi');
		$crud->display_as('id_pemberi_bidang','Pemberi Disposisi Bidang');
		$crud->display_as('id_pemberi_seksi','Pemberi Disposisi Seksi');
		$crud->display_as('id_asalsurat','Asal Surat');
		$crud->display_as('pengirim','pengirim Surat');
		$crud->display_as('nomor_surat','Nomor Surat');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}

	function insertproses($post_array) 
	{
		$penerima = $post_array['id_penerima'];
		foreach($penerima as $ip)
		{
			$postdata['id_penerima'] = $ip;
			$postdata['id_suratmasuk'] = $post_array['id_suratmasuk'];
			$postdata['id_pemberi'] = $post_array['id_pemberi'];
			$var = $post_array['tanggal_disposisi'];
			//date yang diterima berbentuk string
			$date = str_replace('/', '-', $var);
			$date2 = date('Y-m-d', strtotime($date));
			$postdata['tanggal_disposisi'] = $date2;
			$postdata['catatan_disposisi'] =$post_array['catatan_disposisi'];
			$postdata['id_userdisposisi'] = $post_array['id_userdisposisi'];
			$postdata['tanggal_rekamdisposisi'] = $post_array['tanggal_rekamdisposisi'];
			$this->db->insert('t_disposisi',$postdata);
		}
		return true;
	}

	function prosesdisp()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('t_disposisi');
		$crud->where('id',$this->uri->segment(4));

		if($this->login['id_rules']==1004) { //pelaksana
			$crud->edit_fields('id_suratmasuk','tanggal_disposisi','catatan_disposisi','id_userdisposisi','tanggal_rekamdisposisi');
			$crud->set_relation('id_penerima','users','name','id_jabatan=1003');
		} else if($this->login['id_rules']==1002) { //sekre
			$crud->edit_fields('id_suratmasuk','id_penerima','tanggal_disposisi','catatan_disposisi','id_userdisposisi','tanggal_rekamdisposisi');
			$crud->set_relation('id_penerima','users','name','id_jabatan=1002');
		} else { //kasi
			$crud->edit_fields('id_suratmasuk','id_penerima','tanggal_disposisi','catatan_disposisi','id_userdisposisi','tanggal_rekamdisposisi');
			$crud->set_relation('id_penerima','users','name','id_jabatan=1003');
			$crud->where('users.id_seksi', $this->login['id_seksi']);
		}

		$crud->field_type('id_suratmasuk', 'readonly');
		$crud->field_type('id_userdisposisi', 'readonly');
		$crud->field_type('tanggal_rekamdisposisi', 'readonly');

		$crud->set_relation('id_pemberi','users','name');

		$crud->unset_add();
		$crud->unset_list();
		$crud->unset_read();

		$crud->display_as('id_suratmasuk','No Agenda');
		$crud->display_as('id_pemberi','Pemilik Aktifitas');
		$crud->display_as('id_penerima','Petugas Pemproses');
		$crud->display_as('tanggal_disposisi','Tanggal Proses');
		$crud->display_as('id_userdisposisi','Perekam Disposisi');
		$crud->display_as('tanggal_rekamdisposisi','Tanggal Rekam Disposisi');

		$crud->callback_after_delete(array($this,'redirectafterdelete'));
		
		try{
			$output = $crud->render();

			$data['main_page'] = 'suratkemenag/admin/admin';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('suratkemenag/default',$output);
		} catch(Exception $e) {
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{  redirect('suratkemenag/dashboard'); }
			else { show_error($e->getMessage()); }
		}
		
	}
	function redirectafterdelete()
	{
		redirect('suratkemenag/dashboard');
	}
//all eof

}