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
class Kabko_admin extends CI_Controller {
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
	    elseif($logged_in['id_rules']!=1001)
	    {
	    	redirect('/suratkemenag/dashboard');
	    }
		$this->login = $this->session->userdata('logged_in');

	}

	function index()
	{
		redirect('/suratkemenag/kabko_admin/users');
	}

	function rules()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('users_rules');
		$crud->where('users_rules.id > 1000');
		$crud->unset_delete();
		$crud->unset_edit();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function users()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('users');
		$crud->where('users.id > 1000');
		$crud->set_relation('id_rules', 'users_rules', 'rules','id > 1000');
		$crud->display_as('id_rules','Rules');
		$crud->display_as('name','Nama');
		$crud->display_as('id_bidang','KabKo');
		$crud->display_as('id_seksi','Seksi');
		$crud->display_as('id_jabatan','Jabatan');

		$crud->callback_add_field('id_bidang',function(){
			return '<input id="field-id_bidang" class="form-control" name="id_bidang" type="hidden" value="1000" readonly>Locked';
		});
		$crud->callback_edit_field('id_bidang',function(){
			return '<input id="field-id_bidang" class="form-control" name="id_bidang" type="hidden" value="1000" readonly>Locked';
		});

		$crud->columns('id_rules','name', 'id_seksi','status');

		$crud->set_relation('id_seksi','ref_seksi','nama_seksi','id > 1000');
		$crud->set_relation('id_jabatan','ref_jabatan','jabatan','id > 1000');
		$crud->field_type('status','dropdown',
		array('1' => 'aktif', '2' => 'non aktif'));
		$crud->set_field_upload('foto','file_foto');

		$crud->unset_delete();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function kode()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('m_kodeklasifikasi');
		//$crud->where('m_kodeklasifikasi.id > 1000');

		$crud->columns('klasifikasi3','nama_klasifikasi','uraian_klasifikasi');
		$crud->unset_delete();
		$crud->unset_edit();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function asal()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('ref_asalsurat');
		$crud->unset_delete();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function sifat()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('ref_sifat');

		$crud->unset_delete();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function seksi()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('ref_seksi');
		$crud->where('ref_seksi.id > 1000');
		$crud->columns('kode_suratseksi','kode_seksicek','nama_seksi');
		$crud->callback_add_field('id_bidang',function(){
			return '<input id="field-id_bidang" class="form-control" name="id_bidang" type="hidden" value="1000" readonly>Locked';
		});
		$crud->callback_edit_field('id_bidang',function(){
			return '<input id="field-id_bidang" class="form-control" name="id_bidang" type="hidden" value="1000" readonly>Locked';
		});
		$crud->display_as('id_bidang','KabKo');

		$crud->display_as('kode_suratseksi','Kode Surat Seksi');
		$crud->display_as('kode_seksicek','Singkatan Seksi');
		$crud->display_as('nama_seksi','Nama Seksi');
		$crud->unset_delete();
		//$crud->unset_edit();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function jabatan()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		//$crud->set_theme('datatables');
		$crud->set_table('ref_jabatan');
		$crud->where('ref_jabatan.id > 1000');
		$crud->unset_edit();
		$crud->unset_delete();

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}

	function pengumuman()
	{

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('pengumuman');

	    $logged_in = $this->session->userdata('logged_in');


		$crud->callback_add_field('username',function(){
			return '<input id="field-username" class="form-control" name="username" type="hidden" value="'.$this->login['username'].'" readonly>'.$this->login['username'];
		});	
		$crud->callback_add_field('name',function(){
			return '<input id="field-name" class="form-control" name="name" type="hidden" value="'.$this->login['name'].'" readonly>'.$this->login['name'];
		});
		$crud->callback_add_field('date',function(){
			return '<input id="field-date" class="form-control" name="date" type="hidden" value="'.date("Y-m-d H:i:s").'" readonly>Tanggal Otomatis';
		});
		$crud->set_field_upload('file_pengumuman','file_pengumuman');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/admin/admin';
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
		
	}


}