<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

	function __construct() 
    {
        parent::__construct();
	}

	public function index()
	{
    	$logged_in = $this->session->userdata('logged_in'); 
		if (!$logged_in['id']){ $this->login(); }
		else { redirect('suratkemenag/dashboard?w'); }
	}

	public function login()
	{
		$this->load->view('suratkemenag/login');
	}

	public function user_login_process() 
	{
		//echo $this->input->post('username');
		//echo $this->input->post('password');
		
		$this->load->model('suratkemenag/Model_auth');

		if(isset($this->session->userdata['logged_in']))
		{
			redirect('/suratkemenag/dashboard?w');
		}
		else 
		{
			$data = array(
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password')
			);
			$result = $this->Model_auth->login($data)->row();
			
			if ($result) 
			{
				$session_data = array(
					'username' => $result->username,
					'name' => $result->name,
					'id_rules' => $result->id_rules,
					'id_bidang' => $result->id_bidang,
					'id_seksi' => $result->id_seksi,
					'id_jabatan' => $result->id_jabatan,
					'foto' => $result->foto,
					'id' => $result->id,
				);
				// Add user data in session
				$this->session->set_userdata('logged_in', $session_data);
				redirect('/suratkemenag/dashboard?w','refresh');
				$this->cekses();
			} 
			else 
			{
				$this->session->set_flashdata('notif', 'Username dan Password tidak sesuai');
				redirect('/suratkemenag/auth/login/error');
			}
		}
	}

	// Logout from admin page
	public function logout() {

		// Removing session data
		$sess_array = array(
		'username' => ''
		);
		$this->session->unset_userdata('logged_in', $sess_array);
		$this->session->set_flashdata('notif', 'Logout Berhasil');
				redirect('/suratkemenag/auth/login/');
	}


	function profile()
	{
		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();
		$crud->set_table('users');
		$crud->edit_fields('password','ket','foto');

		$crud->set_field_upload('foto','file_foto');

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_delete();
		//$crud->unset_back_to_list();
		try{
			$output = $crud->render();

			$data['main_page'] = 'suratkemenag/auth/profile';
			$data['state'] = $crud->getState();
			$data['table'] = true;
			$output->data=$data;
			$this->load->view('suratkemenag/default',$output);
		} catch(Exception $e) {
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{  redirect('suratkemenag/auth/logout'); }
			else { show_error($e->getMessage()); }
		}

	}

	function cekses()
	{
	    	$logged_in = $this->session->userdata('logged_in'); 
	    	echo "username : ".$logged_in['username']."<br>";
	    	echo "nama : ".$logged_in['name']."<br>";
	    	echo "id_rules : ".$logged_in['id_rules']."<br>";
	    	echo "id_seksi : ".$logged_in['id_seksi']."<br>";
	    	echo "id_bidang : ".$logged_in['id_bidang']."<br>";
	    	echo "id_jabatan : ".$logged_in['id_jabatan']."<br>";
	    	echo "id : ".$logged_in['id']."<br>";
	}

}