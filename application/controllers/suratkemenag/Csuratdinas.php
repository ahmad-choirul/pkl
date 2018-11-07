<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Csuratdinas extends CI_Controller {
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

		//tabel
		$crud->set_table('t_suratdinas');

		//inputan dan editan
		$crud->add_fields('nama','nip','pangkatgol','jabatan','tingkat_biaya','dasar','maksud','alat_angkut','tempat_berangkat','tempat_tujuan','tanggal_awal','tanggal_akhir','tempat','kepada');

		//ganti nama kolom
		$crud->display_as('id','ID');
		$crud->display_as('nip','NIP');
		$crud->display_as('tingkat_biaya','Tingkat biaya');
		$crud->display_as('pangkatgol','Pangkat/Gol');
		$crud->display_as('maksud','Maksud');
		$crud->display_as('tempat','Detail Tempat');
		$crud->display_as('alat_angkut','Alat Angkut');
		$crud->display_as('tempat_berangkat','Tempat Berangkat');
		$crud->display_as('tempat_tujuan','Tempat Tujuan');
		$crud->display_as('tanggalawal','Tanggal awal');
		$crud->display_as('tanggalakhir','Tanggal akhir');
		$crud->display_as('id_user','Perekam');
		$crud->display_as('file_suratmasuk','File surat masuk');

		//kolom yang ditampilkan di table
		$crud->columns('id','nip','nama','pangkatgol','jabatan','dasar','tanggal_awal','tanggal_akhir','tempat');

		$crud->order_by('id','desc');

		//inputan dan editan yang wajib diisi
		$crud->required_fields('nama','pangkatgol','jabatan','tingkat_biaya','dasar','maksud','alat_angkut','tempat_berangkat','tempat_tujuan','tanggal_awal','tanggal_akhir','tempat','kepada');

		$crud->unset_delete();

		$crud->add_action('Cetak', base_url().'tt.png', 'suratkemenag/Csuratdinas/cetak');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/perjalanan_dinas';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function cetak()
	{
		//cetak
	}

}