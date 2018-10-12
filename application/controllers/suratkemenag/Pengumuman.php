<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengumuman extends CI_Controller {
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
	    	redirect('/suratkemenag/auth/logout/');
	    }
		$this->login = $this->session->userdata('logged_in');
	}

	function index()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('pengumuman');

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_read();
		$crud->unset_delete();
		$crud->unset_export();
		$crud->unset_print();
		$crud->set_field_upload('file_pengumuman','file_pengumuman');
		$crud->columns('name','perihal','isi','file_pengumuman','date');
		$crud->display_as('file_pengumuman','File');
		$crud->display_as('name','Nama Pengunggah');
		$crud->callback_column('file_pengumuman',function($value, $primary_key){
			return '<a href="'.base_url().'file_pengumuman/'.$value.'"> download </a>'; });
			//crud->callback_column('menu_title',array($this,'_callback_webpage_url'));
		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}



}