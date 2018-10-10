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
class Dashboard extends CI_Controller {

	function __construct()
	{
		parent::__construct();
$this->load->library('session');
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
          
	}
	
	function index()
	{

$logged_in = $this->session->userdata('logged_in'); 
	    	echo "username : ".$logged_in['username']."<br>";
	    	echo "nama : ".$logged_in['name']."<br>";
	    	echo "id_rules : ".$logged_in['id_rules']."<br>";
	    	echo "id_seksi : ".$logged_in['id_seksi']."<br>";
	    	echo "id_bidang : ".$logged_in['id_bidang']."<br>";
	    	echo "id_jabatan : ".$logged_in['id_jabatan']."<br>";
	    	echo "id : ".$logged_in['id']."<br>";
		// $this->data['data']['main_page'] = 'suratkemenag/dashboard/selamat_datang';
		// $this->load->view('suratkemenag/default',$this->data);
	}
	
	function test()
	{

		$this->load->view('suratkemenag/dashboard/test');
	}

}