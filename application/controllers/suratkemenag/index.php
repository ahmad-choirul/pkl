<?php 
include 'docxtemplate.class.php';

$docx = new DOCXTemplate('tempat_surat_tugas.docx');
$docx->set('nomor_surat','123123');
$docx->set('kode_divisi','adf141');
$docx->set('bulan','3');
$docx->set('tahun','2018');
$docx->set('dasar','tujuan apa');
$docx->set('nama','siapadsfijaf');
$docx->set('nip','12412412');
$docx->set('pangkat_gol','pangkat nya');
$docx->set('jabatan','jabatanyanya aljgfadf');
$docx->set('tempat','tempatnya dimana');
$docx->set('untuk','tujuan nya aoa');
$docx->set('tgl_awal','02 juli 2018');
$docx->set('tgl_akhir','03 juli 2018');
$docx->set('tgl_sekarang','02 juli 2018');


$docx->downloadAs ('surat.docx');

header("Content-Type:application/vnd.openxmlformats-officedocument.wordprocessingml.document");
header("Content-Disposition: attachment;filename=surat.docx");
readfile('surat.docx');
 ?>}
