<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

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
		$this->load->view('suratkemenag/error/deny');
	}
	
	function deny()
	{
		$this->data['data']['main_page'] = 'suratkemenag/error/deny';
		$this->load->view('suratkemenag/default',$this->data);
	}

}