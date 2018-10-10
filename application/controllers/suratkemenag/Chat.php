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
class Chat extends CI_Controller {

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
	
	
	function room()
	{ 

	    $logged_in = $this->session->userdata('logged_in'); 
		if (isset($_POST['pesan'])) 
		{
			if($_POST['pesan']!='')
			{
				if(isset($logged_in['foto']))
				{
					$data = array(
					   'username' => $logged_in['username'] ,
					   'nama' => $logged_in['name'] ,
					   'id_rules' => $logged_in['id_rules'],
					   'foto' => $logged_in['foto'],
					   'pesan' => $_POST['pesan'],
					   'date' => date("Y-m-d H:i:s")
					);
				}
				else
				{
					$data = array(
					   'username' => $logged_in['username'] ,
					   'nama' => $logged_in['name'] ,
					   'id_rules' => $logged_in['id_rules'],
					   'pesan' => $_POST['pesan'],
					   'date' => date("Y-m-d H:i:s")
					);
				}
				$this->db->insert('t_chatroom', $data); 
			}
		} 

		$this->load->model('Model_chat');
		$this->data['result'] = $this->Model_chat->get_chatroom();

		$this->data['data']['main_page'] = 'suratkemenag/chat/room';
		$this->load->view('suratkemenag/default',$this->data);
	}	

	function personal()
	{
		if($this->uri->segment(3)!=null)
		{
			if (isset($_POST['pesan'])) 
			{
				if($_POST['pesan']!='')
				{
					$data = array(
					   'id_kirim' => $_POST['id_kirim'] ,
					   'id_terima' => $_POST['id_terima'] ,
					   'pesan' => $_POST['pesan']
					);
					$this->db->insert('t_chatpersonal', $data); 
				}
			} 
		
	    $logged_in = $this->session->userdata('logged_in'); 

		$this->load->model('Model_chat');
		$this->data['result'] = $this->Model_chat->get_chatpersonal($logged_in['id'],$this->uri->segment(3));
		}
		//else { $this->data['result'] = "hallo"; }
		$this->data['data']['main_page'] = 'suratkemenag/chat/personal';
		$this->load->view('suratkemenag/default',$this->data);
	}

	public function query(){  
        // process posted form data  
        $keyword = $this->input->post('term');  
        //$keyword = $this->uri->segment(3);
        //echo "<h1>".$keyword."</h1>";
        
        $data['response'] = 'false'; //Set default response  
        $query = $this->db->query("select * from users where name like '%$keyword%'");
        $qr = $query->result();  
        if( ! empty($qr) )  
        {  
            $data['response'] = 'true'; //Set response  
            $data['message'] = array(); //Create array  
            foreach( $qr as $row )  
            {  
                $data['message'][] = array(   
                                        'value'=>$row->name,  
                                        'label' => $row->name,  
                                        'id' => $row->id,  
                                        ''  
                                     );  //Add a row to array  
            }  
        }  
            
        echo json_encode($data); //echo json string if ajax request  
    }  

}