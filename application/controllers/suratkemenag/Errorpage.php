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
class Errorpage extends CI_Controller {

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
          
	}
	
	function index()
	{
		$this->load->view('error/deny');
	}
	
	function deny()
	{
		$this->data['data']['main_page'] = 'error/deny';
		$this->load->view('default',$this->data);
	}

}