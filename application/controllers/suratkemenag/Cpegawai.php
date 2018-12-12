<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Cpegawai extends CI_Controller {
	function __construct() 
	{
		parent::__construct();
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
		// if($this->login['id_rules']==1001) { redirect('/suratkemenag/errorpage/deny'); } //admin ga boleh
		//if($this->login['id_rules']==1002) { redirect('/suratkemenag/errorpage/deny'); } //sekre ga boleh
		if($this->login['id_rules']==1003) { redirect('/suratkemenag/errorpage/deny'); } //es4 ga boleh
		if($this->login['id_rules']==1004) { redirect('/suratkemenag/errorpage/deny'); } //pengguna ga boleh

		$this->load->library('grocery_CRUD');  
		
		$crud = new grocery_CRUD();

		//tabel
		$crud->set_table('data_pegawai');

		//inputan dan editan
		$crud->fields('id_pegawai','nama','nip','gol','pangkat','jabatan');
		$crud->add_fields('nama','nip','gol','pangkat','jabatan');
		$crud->edit_fields('nama','nip','gol','pangkat','jabatan');

		//ganti nama kolom
		// $crud->display_as('id','ID');
		// $crud->set_relation('id_pegawai','data_pegawai','{nama} - {nip} - {gol}');
		// $crud->set_relation('id_pegawai','data_pegawai','nip');
		// $crud->set_relation('id_pegawai','data_pegawai','gol');
		$crud->display_as('nama','Nama');
		// $crud->set_relation('id_pegawai','data_pegawai','jabatan');
		$crud->display_as('nip','NIP');
		$crud->display_as('tingkat_biaya','Tingkat biaya');
		$crud->display_as('gol','Golongan');
		$crud->display_as('pangkat','Pangkat');
		$crud->display_as('jabatan','Jabatan');
		$crud->columns('id_pegawai','nama','nip','gol','pangkat','jabatan');

		$crud->order_by('id_pegawai','asc');

		//inputan dan editan yang wajib diisi
		$crud->required_fields('id_pegawai','nama','nip','gol','pangkat','jabatan');

		$output = $crud->render();

		$data['main_page'] = 'suratkemenag/perjalanan_dinas';
		
		$data['state'] = $crud->getState();
		$data['table'] = true;
		$output->data=$data;
		$this->load->view('suratkemenag/default',$output);
	}

	function cetak($id)
	{
		include 'docxtemplate.class.php';
		$this->load->model('Msuratdinas');
		//$this->load->library('docxtemplate');
		// $data = $this->Msuratdinas->getSurat($id);
		// printf($data);
		$surat = $this->Msuratdinas->getSurat($id);
		$str = $surat['tanggal_pembuatan'];
		if (($timestamp = strtotime($str)) !== false)
		{
			$php_date = getdate($timestamp);
			$bulan = date("m", $timestamp);
			$tahun = date("Y", $timestamp);  
			$tanggal = date('Y-m-d', $timestamp);  
		}
		$docx = new DOCXTemplate('tempat_surat_tugas.docx');
		$docx->set('nomorsuratundangan',$surat['nomorsuratundangan']);
		$docx->set('nomor_surat',$surat['id']);
		$docx->set('kode_divisi',$surat['klasifikasi3']);
		$docx->set('bulan',$bulan);
		$docx->set('tahun',$tahun);
		$docx->set('dasar',$surat['dasar']);
		$docx->set('nama',$surat['nama']);
		$docx->set('nip',$surat['nip']);
		$docx->set('pangkat',$surat['pangkat']);
		$docx->set('gol',$surat['gol']);
		$docx->set('jabatan',$surat['jabatan']);
		$docx->set('tempat',$surat['tempat']);
		$docx->set('untuk',$surat['maksud']);
		$docx->set('tgl_awal',$surat['tanggal_awal']);//
		$docx->set('tgl_akhir',$surat['tanggal_akhir']);//
		if ($surat['atas_nama']=='Kasubbag') {
			$docx->set('atas_nama',' a.n Kepala
				Kepala Sub Bagian Tata Usaha


				Machfudz');
			$docx->set('tembusan','Tembusan
				Kepala Kantor Kementerian Agama Kab. Jember
				');
		}else if ($surat['atas_nama']=='Kepala kemenag') {
			$docx->set('atas_nama','Kepala Kantor Kemenag



				Busthomi
				');
			$docx->set('tembusan','');
		}
		$docx->set('tgl_sekarang',$this->tgl_indo($tanggal));

		$docx->downloadAs ('surat.docx');

		header("Content-Type:application/vnd.openxmlformats-officedocument.wordprocessingml.document");
		header("Content-Disposition: attachment;filename=surat.docx");
	}
	function rubahtanggal($tgl)
	{
		if (($timestamp = strtotime($tgl)) !== false)
		{  
			$tanggal = date('Y-m-d', $timestamp);  
		}
		return $this->tgl_indo($tanggal);
	}
	function cetak2($id)
	{
		include 'docxtemplate.class.php';
		$this->load->model('Msuratdinas');
		//$this->load->library('docxtemplate');
		// $data = $this->Msuratdinas->getSurat($id);
		// printf($data);
		$surat = $this->Msuratdinas->getSurat($id);
		$str = $surat['tanggal_pembuatan'];
		if (($timestamp = strtotime($str)) !== false)
		{
			$php_date = getdate($timestamp);
			$bulan = date("m", $timestamp);
			$tahun = date("Y", $timestamp);  
			$tanggal = date('Y-m-d', $timestamp);  
		}

		$docx = new DOCXTemplate('spd.docx');
		$docx->set('tingkat_biaya',$surat['tingkat_biaya']);
		$docx->set('nama_pkk',$surat['nama_pkk']);
		$docx->set('nomor_surat',$surat['id']);
		$docx->set('nama_pembuat','dari session');//
		$docx->set('bulan',$bulan);//
		$docx->set('tahun',$tahun);//
		$docx->set('nama',$surat['nama']);//
		$docx->set('untuk',$surat['maksud']);//
		$docx->set('nip',$surat['nip']);//
		$docx->set('alat_angkut',$surat['alat_angkut']);//
		$docx->set('lama',$surat['lama']);//
		$docx->set('tempat_berangkat',$surat['tempat_berangkat']);//
		$docx->set('tempat_tujuan',$surat['tempat_tujuan']);//
		$docx->set('jabatan',$surat['jabatan']);//
		$docx->set('tanggal_awal',$this->rubahtanggal($surat['tanggal_awal']));
		$docx->set('tanggal_akhir',$this->rubahtanggal($surat['tanggal_akhir']));
		$docx->set('tanggal_pembuatan',$this->tgl_indo($tanggal));
		$docx->set('kepala_kemenag','Busthami');//

		$docx->downloadAs ('surat2.docx');

		header("Content-Type:application/vnd.openxmlformats-officedocument.wordprocessingml.document");
		header("Content-Disposition: attachment;filename=surat2.docx");
	}
	function tgl_indo($tanggal){
		$bulan = array (
			1 =>   'Januari',
			'Februari',
			'Maret',
			'April',
			'Mei',
			'Juni',
			'Juli',
			'Agustus',
			'September',
			'Oktober',
			'November',
			'Desember'
		);
		$pecahkan = explode('-', $tanggal);
		
		// variabel pecahkan 0 = tanggal
		// variabel pecahkan 1 = bulan
		// variabel pecahkan 2 = tahun

		return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
	}
}