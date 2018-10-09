-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table suratkemenag.m_kabko
CREATE TABLE IF NOT EXISTS `m_kabko` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `kode_kabko` varchar(4) NOT NULL,
  `kode_kabkolama` varchar(4) DEFAULT NULL,
  `kabko` varchar(50) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon_fax` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.m_kabko: 38 rows
DELETE FROM `m_kabko`;
/*!40000 ALTER TABLE `m_kabko` DISABLE KEYS */;
INSERT INTO `m_kabko` (`id`, `kode_kabko`, `kode_kabkolama`, `kabko`, `alamat`, `telepon_fax`) VALUES
	(1, '`', '1334', 'KAB. PACITAN', '', ''),
	(2, '1302', '1333', 'KAB. PONOROGO', '', ''),
	(3, '1303', '1328', 'KAB. TRENGGALEK', '', ''),
	(4, '1304', '1326', 'KAB. TULUNGAGUNG', '', ''),
	(5, '1305', '1324', 'KAB. LUMAJANG', '', ''),
	(6, '1306', '1317', 'KAB. BONDOWOSO', '', ''),
	(7, '1307', '1318', 'KAB. SITUBONDO', '', ''),
	(8, '1308', '1323', 'KAB. PROBOLINGGO', '', ''),
	(9, '1309', '1322', 'KAB. PASURUAN', '', ''),
	(10, '1310', '1311', 'KAB. SIDOARJO', '', ''),
	(11, '1311', '1310', 'KAB. MOJOKERTO', '', ''),
	(12, '1312', '1312', 'KAB. JOMBANG', '', ''),
	(13, '1313', '1327', 'KAB. N G A N J U K', '', ''),
	(14, '1314', '1332', 'KAB. MAGETAN', '', ''),
	(15, '1315', '1331', 'KAB. N G A W I', '', ''),
	(16, '1316', '1335', 'KAB. BOJONEGORO', '', ''),
	(17, '1317', '1336', 'KAB. T U B A N', '', ''),
	(18, '1318', '1337', 'KAB. LAMONGAN', '', ''),
	(19, '1319', '1309', 'KAB. GRESIK', '', ''),
	(20, '1320', '1316', 'KAB. BANGKALAN', '', ''),
	(21, '1321', '1313', 'KAB. SAMPANG', '', ''),
	(22, '1322', '1314', 'KAB. PAMEKASAN', '', ''),
	(23, '1323', '1315', 'KAB. SUMENEP', '', ''),
	(24, '1324', '1307', 'KOTA KEDIRI', '', ''),
	(25, '1325', '1303', 'KOTA MALANG', '', ''),
	(26, '1326', '1305', 'KOTA PROBOLINGGO', '', ''),
	(27, '1327', '1304', 'KOTA PASURUAN', '', ''),
	(28, '1328', '1308', 'KOTA MADIUN', '', ''),
	(29, '1329', '1301', 'KOTA SURABAYA', '', ''),
	(30, '1330', '1319', 'KAB. BANYUWANGI', '', ''),
	(31, '1331', '1329', 'KAB. B L I T A R', '', ''),
	(32, '1332', '1320', 'KAB. J E M B E R', '', ''),
	(33, '1333', '1325', 'KAB. K E D I R I', '', ''),
	(34, '1334', '1330', 'KAB. M A D I U N', '', ''),
	(35, '1335', '1321', 'KAB. M A L A N G', '', ''),
	(36, '1336', '1338', 'KOTA B A T U', '', ''),
	(37, '1337', '1306', 'KOTA BLITAR', '', ''),
	(38, '1338', '1302', 'KOTA MOJOKERTO', '', '');
/*!40000 ALTER TABLE `m_kabko` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.m_kodeklasifikasi
CREATE TABLE IF NOT EXISTS `m_kodeklasifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `klasifikasi1` varchar(50) NOT NULL DEFAULT '0',
  `klasifikasi2` varchar(50) NOT NULL DEFAULT '0',
  `klasifikasi3` varchar(50) NOT NULL DEFAULT '0',
  `nama_klasifikasi` varchar(150) NOT NULL DEFAULT '0',
  `uraian_klasifikasi` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.m_kodeklasifikasi: ~175 rows (approximately)
DELETE FROM `m_kodeklasifikasi`;
/*!40000 ALTER TABLE `m_kodeklasifikasi` DISABLE KEYS */;
INSERT INTO `m_kodeklasifikasi` (`id`, `klasifikasi1`, `klasifikasi2`, `klasifikasi3`, `nama_klasifikasi`, `uraian_klasifikasi`) VALUES
	(1, 'Kp', 'Kp', 'Kp', 'Kp', 'Kp'),
	(2, 'KU', 'KU', 'KU', 'KEUANGAN', ''),
	(3, 'KU', 'KU.00', 'KU.00', 'RENCANA DAN PENYUSUNAN ANGGARAN', ''),
	(4, 'KU', 'KU.00', 'KU.00.1', 'RENCANA ANGGARAN', ''),
	(5, 'KU', 'KU.00', 'KU.00.2', 'PENYUSUNAN ANGGARAN', ''),
	(6, 'KU', 'KU.00', 'KU.00.3', 'NON BUDGETER', ''),
	(7, 'KU', 'KU.01', 'KU.01', 'BELANJA', ''),
	(8, 'KU', 'KU.01', 'KU.01.1', 'SURAT PERMINTAAN PEMBAYARAN', ''),
	(9, 'KU', 'KU.01', 'KU.01.2', 'SPJ', ''),
	(10, 'KU', 'KU.02', 'KU.02', 'SPJ', ''),
	(11, 'KU', 'KU.02', 'KU.02.1', 'SPJ APBN', ''),
	(12, 'KU', 'KU.02', 'KU.02.2', 'SPJ NON BUDGETER', ''),
	(13, 'KU', 'KU.03', 'KU.03', 'PENDAPATAN NEGARA', ''),
	(14, 'KU', 'KU.03', 'KU.03.1', 'PAJAK', ''),
	(15, 'KU', 'KU.03', 'KU.03.2', 'BUKAN PAJAK', ''),
	(16, 'KU', 'KU.04', 'KU.04', 'PERBANKAN', ''),
	(17, 'KU', 'KU.04', 'KU.04.1', 'VALUTA ASING/TRANSFER', ''),
	(18, 'KU', 'KU.04', 'KU.04.2', 'SURAT-SURAT YANG BERKENAAN DENGAN SALDO REKENING KORAN YANG ADA PADA BANK', ''),
	(19, 'KU', 'KU.05', 'KU.05', 'SUMBANGAN/BANTUAN', ''),
	(20, 'KP', 'KP', 'KP', 'KEPEGAWAIAN', ''),
	(21, 'KP', 'KP.00', 'KP.00', 'PENGADAAN', ''),
	(22, 'KP', 'KP.00', 'KP.00.1', 'FORMASI', ''),
	(23, 'KP', 'KP.00', 'KP.00.2', 'PENERIMAAN', ''),
	(24, 'KP', 'KP.00', 'KP.00.3', 'PENGANGKATAN', ''),
	(25, 'KP', 'KP.01', 'KP.01', 'TATA USAHA KEPEGAWAIAN', ''),
	(26, 'KP', 'KP.01', 'KP.01.1', 'IZIN/DISPENSASI', ''),
	(27, 'KP', 'KP.01', 'KP.01.2', 'KETERANGAN', ''),
	(28, 'KP', 'KP.02', 'KP.02', 'PENDIDIKAN DAN PELATIHAN', ''),
	(29, 'KP', 'KP.02', 'KP.02.1', 'DIKLAT PRAJABATAN', ''),
	(30, 'KP', 'KP.02', 'KP.02.2', 'DIKLAT DALAM JABATAN', ''),
	(31, 'KP', 'KP.02', 'KP.02.3', 'LATIHAN KHUSUS', ''),
	(32, 'KP', 'KP.03', 'KP.03', 'KORPRI', ''),
	(33, 'KP', 'KP.04', 'KP.04', 'PENILAIAN DAN HUKUMAN', ''),
	(34, 'KP', 'KP.04', 'KP.04.1', 'PENILAIAN', ''),
	(35, 'KP', 'KP.04', 'KP.04.2', 'HUKUMAN', ''),
	(36, 'KP', 'KP.05', 'KP.05', 'SCREENING', ''),
	(37, 'KP', 'KP.06', 'KP.06', 'PEMBINAAN MENTAL', ''),
	(38, 'KP', 'KP.07', 'KP.07', 'MUTASI', ''),
	(39, 'KP', 'KP.07', 'KP.07.1', 'KEPANGKATAN', ''),
	(40, 'KP', 'KP.07', 'KP.07.2', 'KENAIKAN GAJI BERKALA', ''),
	(41, 'KP', 'KP.07', 'KP.07.3', 'PENYESUAIAN MASA KERJA', ''),
	(42, 'KP', 'KP.07', 'KP.07.4', 'PENYESUAIAN TUNJANGAN KELUARGA', ''),
	(43, 'KP', 'KP.07', 'KP.07.5', 'ALIH TUGAS', ''),
	(44, 'KP', 'KP.07', 'KP.07.6', 'JABATAN STRUKTURAL/FUNGSIONAL', ''),
	(45, 'KP', 'KP.08', 'KP.08', 'KESEJAHTERAAN', ''),
	(46, 'KP', 'KP.08', 'KP.08.1', 'KESEHATAN', ''),
	(47, 'KP', 'KP.08', 'KP.08.2', 'CUTI', ''),
	(48, 'KP', 'KP.08', 'KP.08.3', 'REKREASI', ''),
	(49, 'KP', 'KP.08', 'KP.08.4', 'BANTUAN/SANTUNAN SOSIAL', ''),
	(50, 'KP', 'KP.08', 'KP.08.5', 'KOPERASI', ''),
	(51, 'KP', 'KP.08', 'KP.08.6', 'PERUMAHAN', ''),
	(52, 'KP', 'KP.08', 'KP.08.7', 'ANTAR JEMPUT/TRANSPORTASI', ''),
	(53, 'KP', 'KP.08', 'KP.08.8', 'PENGHARGAAN', ''),
	(54, 'KP', 'KP.09', 'KP.09', 'PEMUTUSAN HUBUNGAN KERJA', ''),
	(55, 'OT', 'OT', 'OT', 'ORGANISASI DAN TATALAKSANA', ''),
	(56, 'OT', 'OT.00', 'OT.00', 'ORGANISASI', ''),
	(57, 'OT', 'OT.01', 'OT.01', 'TATALAKSANA', ''),
	(58, 'OT', 'OT.01', 'OT.01.1', 'PERENCANAAN', ''),
	(59, 'OT', 'OT.01', 'OT.01.2', 'LAPORAN', ''),
	(60, 'OT', 'OT.01', 'OT.01.3', 'PENYUSUNAN PROSEDUR KERJA', ''),
	(61, 'OT', 'OT.01', 'OT.01.4', 'PELAYANAN MASYARAKAT', ''),
	(62, 'HK', 'HK', 'HK', 'HUKUM', ''),
	(63, 'HK', 'HK.00', 'HK.00', 'PERATURAN PERUNDANG-UNDANGAN', ''),
	(64, 'HK', 'HK.00', 'HK.00.1', 'UNDANG-UNDANG TERMASUK PERPU', ''),
	(65, 'HK', 'HK.00', 'HK.00.2', 'PERATURAN PEMERINTAH', ''),
	(66, 'HK', 'HK.00', 'HK.00.3', 'KEPUTUSAN PRESIDEN, INSTRUKSI PRESIDEN', ''),
	(67, 'HK', 'HK.00', 'HK.00.4', 'PERATURAN MENTERI, INSTRUKSI MENTERI', ''),
	(68, 'HK', 'HK.00', 'HK.00.5', 'KEPUTUSAN MENTERI, PIMPINAN UNIT ESELON I', ''),
	(69, 'HK', 'HK.00', 'HK.00.6', 'SKB MENTERI-MENTERI, PIMPINAN UNIT ESELON I/II', ''),
	(70, 'HK', 'HK.00', 'HK.00.7', 'EDARAN MENTERI/PIMPINAN UNIT ESELON I/II', ''),
	(71, 'HK', 'HK.00', 'HK.00.8', 'PERATURAN KANTOR WILAYAH KEMENTERIAN AGAMA PROVINSI DAN KEMENTERIAN AGAMA KABUPATEN/KOTA', ''),
	(72, 'HK', 'HK.00', 'HK.00.9', 'PERATURAN PEMDA Tk.I/PEMDA Tk.II', ''),
	(73, 'HK', 'HK.01', 'HK.01', 'PIDANA', ''),
	(74, 'HK', 'HK.01', 'HK.01.1', 'PENCURIAN', ''),
	(75, 'HK', 'HK.01', 'HK.01.2', 'KORUPSI', ''),
	(76, 'HK', 'HK.02', 'HK.02', 'PERDATA', ''),
	(77, 'HK', 'HK.02', 'HK.02.1', 'PERIKATAN', ''),
	(78, 'HK', 'HK.03', 'HK.03', 'HUKUM AGAMA', ''),
	(79, 'HK', 'HK.03', 'HK.03.1', 'FATWA', ''),
	(80, 'HK', 'HK.03', 'HK.03.2', 'RUKYAT/HISAB', ''),
	(81, 'HK', 'HK.03', 'HK.03.3', 'HARI BESAR AGAMA', ''),
	(82, 'HK', 'HK.04', 'HK.04', 'BANTUAN HUKUM', ''),
	(83, 'HK', 'HK.04', 'HK.04.1', 'KASUS HUKUM PIDANA', ''),
	(84, 'HK', 'HK.04', 'HK.04.2', 'KASUS HUKUM PERDATA', ''),
	(85, 'HK', 'HK.04', 'HK.04.3', 'KASUS HUKUM TATA USAHA NEGARA (TUN)', ''),
	(86, 'HK', 'HK.04', 'HK.04.4', 'PENELAAHAN HUKUM', ''),
	(87, 'HM', 'HM', 'HM', 'KEHUMASAN', ''),
	(88, 'HM', 'HM.00', 'HM.00', 'PENERANGAN', ''),
	(89, 'HM', 'HM.01', 'HM.01', 'HUBUNGAN', ''),
	(90, 'HM', 'HM.02', 'HM.02', 'DOKUMENTASI DAN KEPUSTAKAAN', ''),
	(91, 'HM', 'HM.02', 'HM.02.1', 'DOKUMENTASI', ''),
	(92, 'HM', 'HM.02', 'HM.02.2', 'KEPUSTAKAAN', ''),
	(93, 'HM', 'HM.02', 'HM.02.3', 'KEPROTOKOLAN', ''),
	(94, 'KS ', 'KS ', 'KS ', 'KESEKRETARIATAN', ''),
	(95, 'KS ', 'KS.00', 'KS.00', 'KERUMAHTANGGAAN', ''),
	(96, 'KS ', 'KS.01', 'KS.01', 'PERLENGKAPAN', ''),
	(97, 'KS ', 'KS.01', 'KS.01.1', 'GEDUNG', ''),
	(98, 'KS ', 'KS.01', 'KS.01.2', 'ALAT KANTOR', ''),
	(99, 'KS ', 'KS.01', 'KS.01.3', 'MESIN KANTOR/ALAT-ALAT ELEKTRONIK', ''),
	(100, 'KS ', 'KS.01', 'KS.01.4', 'PERABOT KANTOR', ''),
	(101, 'KS ', 'KS.01', 'KS.01.5', 'KENDARAAN', ''),
	(102, 'KS ', 'KS.01', 'KS.01.6', 'INVENTARIS PERLENGKAPAN', ''),
	(103, 'KS ', 'KS.01', 'KS.01.7', 'PENAWARAN UMUM', ''),
	(104, 'KS ', 'KS.02', 'KS.02', 'KETATAUSAHAAN', ''),
	(105, 'TL', 'TL', 'TL', 'PENELITIAN', ''),
	(106, 'TL', 'TL.00', 'TL.00', 'PENELITIAN PENDIDIKAN', ''),
	(107, 'TL', 'TL.01', 'TL.01', 'PENELITIAN KEAGAMAAN', ''),
	(108, 'TL', 'TL.02', 'TL.02', 'PENELITIAN LEKTUR AGAMA', ''),
	(109, 'TL', 'TL.02', 'TL.02.1', 'SURAT-SURAT YANG BERHUBUNGAN DENGAN PENELITIAN ATAS PENERBITAN, IMPORT DAN PENYEBARAN KITAB-KITAB SUCI AGAMA', ''),
	(110, 'TL', 'TL.02', 'TL.02.2', 'PENELITIAN BUKU-BUKU AGAMA', ''),
	(111, 'TL', 'TL.03', 'TL.03', 'PENGEMBANGAN PENELITIAN', ''),
	(112, 'PS', 'PS', 'PS', 'PENGAWASAN', ''),
	(113, 'PS', 'PS.00', 'PS.00', 'ADMINISTRASI UMUM', ''),
	(114, 'PS', 'PS.01', 'PS.01', 'TUGAS UMUM', ''),
	(115, 'PS', 'PS.02', 'PS.02', 'PROYEK PEMBANGUNAN', ''),
	(116, 'PS', 'PS.02', 'PS.02.1', 'FISIK', ''),
	(117, 'PS', 'PS.02', 'PS.02.2', 'NON FISIK', ''),
	(118, 'PS', 'PS.03', 'PS.03', 'PENGAWASN EKSTERNAL', ''),
	(119, 'PS', 'PS.03', 'PS.03.1', 'BPK RI', ''),
	(120, 'PS', 'PS.03', 'PS.03.2', 'BADAN PENGAWASAN KEUANGAN DAN PEMBANGUNAN (BPKP)', ''),
	(121, 'PS', 'PS.03', 'PS.03.3', 'PENGADUAN MASYARAKAT', ''),
	(122, '1.4', '1.4', '1.4', 'PENGADUAN MASYARAKAT (NON TAPI 5000)', ''),
	(123, 'PW', 'PW', 'PW', 'PERKAWINAN', ''),
	(124, 'PW', 'PW.00', 'PW.00', 'PENYULUHAN', ''),
	(125, 'PW', 'PW.01', 'PW.01', 'PERKAWINAN', ''),
	(126, 'PW', 'PW.02', 'PW.02', 'CAMPURAN', ''),
	(127, 'HJ', 'HJ', 'HJ', 'HAJI', ''),
	(128, 'HJ', 'HJ.00', 'HJ.00', 'CALON HAJI', ''),
	(129, 'HJ', 'HJ.01', 'HJ.01', 'BIMBINGAN', ''),
	(130, 'HJ', 'HJ.02', 'HJ.02', 'PETUGAS HAJI', ''),
	(131, 'HJ', 'HJ.03', 'HJ.03', 'ONGKOS NAIK HAJI', ''),
	(132, 'HJ', 'HJ.04', 'HJ.04', 'JEMAAH HAJI', ''),
	(133, 'HJ', 'HJ.05', 'HJ.05', 'ANGKUTAN', ''),
	(134, 'HJ', 'HJ.06', 'HJ.06', 'PENGASRAMAAN', ''),
	(135, 'HJ', 'HJ.07', 'HJ.07', 'PEMBEKALAN', ''),
	(136, 'HJ', 'HJ.08', 'HJ.08', 'DISPENSASI/REKOMENDASI KHUSUS', ''),
	(137, 'HJ', 'HJ.09', 'HJ.09', 'UMROH', ''),
	(138, 'BA', 'BA', 'BA', 'PEMBINAAN AGAMA', ''),
	(139, 'BA', 'BA.00', 'BA.00', 'PENYULUHAN', ''),
	(140, 'BA', 'BA.01', 'BA.01', 'BIMBINGAN', ''),
	(141, 'BA', 'BA.01', 'BA.01.1', 'LEMBAGA KEAGAMAAN', ''),
	(142, 'BA', 'BA.01', 'BA.01.2', 'ALIRAN KEROHANIAN/KEAGAMAAN', ''),
	(143, 'BA', 'BA.02', 'BA.02', 'KERUKUNAN HIDUP BERAGAMA', ''),
	(144, 'BA', 'BA.03', 'BA.03', 'IBADAH DAN IBADAH SOSIAL', ''),
	(145, 'BA', 'BA.03', 'BA.03.1', 'IBADAH', ''),
	(146, 'BA', 'BA.03', 'BA.03.2', 'IBADAH SOSIAL', ''),
	(147, 'BA', 'BA.04', 'BA.04', 'PENGEMBANGAN KEAGAMAAN', ''),
	(148, 'BA', 'BA.05', 'BA.05', 'ROHANIAWAN', ''),
	(149, 'PP', 'PP', 'PP', 'PENDIDIKAN DAN PENGAJARAN', ''),
	(150, 'PP', 'PP.00', 'PP.00', 'KURIKULUM, TENAGA EDUKATIF DAN SARANA', ''),
	(151, 'PP', 'PP.00', 'PP.00.1', 'SEKOLAH UMUM TINGKAT TAMAN KANAK-KANAK DAN SEKOLAH DASAR (TK DAN SD)', ''),
	(152, 'PP', 'PP.00', 'PP.00.2', 'SEKOLAH LANJUTAN TINGKAT PERTAMA (SLTP)', ''),
	(153, 'PP', 'PP.00', 'PP.00.3', 'SEKOLAH LANJUTAN TINGKAT ATAS (SLTA)', ''),
	(154, 'PP', 'PP.00', 'PP.00.4', 'RAUDLATUL ATHFAL DAN MADRASAH IBTIDAIYAH', ''),
	(155, 'PP', 'PP.00', 'PP.00.5', 'MADRASAH TSANAWIYAH', ''),
	(156, 'PP', 'PP.00', 'PP.00.6', 'MADRASAH ALIYAH', ''),
	(157, 'PP', 'PP.00', 'PP.00.7', 'PONDOK PESANTREN', ''),
	(158, 'PP', 'PP.00', 'PP.00.8', 'MADRASAH DINIYAH', ''),
	(159, 'PP', 'PP.00', 'PP.00.9', 'PERGURUAN TINGGI AGAMA', ''),
	(160, 'PP', 'PP.00', 'PP.00.10', 'PERGURUAN TINGGI UMUM', ''),
	(161, 'PP', 'PP.00', 'PP.00.11', 'PENGEMBANGAN PENDIDIKAN', ''),
	(162, 'PP', 'PP.01', 'PP.01', 'EVALUASI DAN IJAZAH', ''),
	(163, 'PP', 'PP.01', 'PP.01.1', 'PENDIDIKAN AGAMA', ''),
	(164, 'PP', 'PP.01', 'PP.01.2', 'PENDIDIKAN UMUM', ''),
	(165, 'PP', 'PP.02', 'PP.02', 'KEPENILIKAN, KEPENGAWASAN DAN PEMBINAAN', ''),
	(166, 'PP', 'PP.02', 'PP.02.1', 'KEPENILIKAN', ''),
	(167, 'PP', 'PP.02', 'PP.02.2', 'KEPENGAWASAN', ''),
	(168, 'PP', 'PP.02', 'PP.02.3', 'PEMBINAAN', ''),
	(169, 'PP', 'PP.03', 'PP.03.1', 'KELEMBAGAAN', ''),
	(170, 'PP', 'PP.03', 'PP.03.2', 'ORGANISASI', ''),
	(171, 'PP', 'PP.03', 'PP.03.3', 'PENGEMBANGAN', ''),
	(172, 'PP', 'PP.04', 'PP.04', 'BEASISWA', ''),
	(173, 'PP', 'PP.05', 'PP.05', 'SUMBANGAN', ''),
	(174, 'PP', 'PP.06', 'PP.06', 'PENGABDIAN', ''),
	(175, 'PP', 'PP.07', 'PP.07', 'PERIZINAN', ''),
	(1001, 'a', 'aa', 'aaa', 'aaa', '0');
/*!40000 ALTER TABLE `m_kodeklasifikasi` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.m_man
CREATE TABLE IF NOT EXISTS `m_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kabko` int(5) NOT NULL DEFAULT '0',
  `nsm` varchar(11) NOT NULL DEFAULT '0',
  `nama_man` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.m_man: ~90 rows (approximately)
DELETE FROM `m_man`;
/*!40000 ALTER TABLE `m_man` DISABLE KEYS */;
INSERT INTO `m_man` (`id`, `id_kabko`, `nsm`, `nama_man`) VALUES
	(1, 1, '0', 'MAN Pacitan'),
	(2, 2, '0', 'MAN 1 Ponorogo'),
	(3, 0, '0', 'MAN 2 Ponorogo'),
	(4, 0, '0', 'MAN 1 Trenggalek'),
	(5, 0, '0', 'MAN 2 Trenggalek'),
	(6, 0, '0', 'MAN 1 Tulungagung'),
	(7, 0, '0', 'MAN 2 Tulungagung'),
	(8, 0, '0', 'MAN 3 Tulungagung'),
	(9, 0, '0', 'MAN Lumajang'),
	(10, 0, '0', 'MAN Bondowoso'),
	(11, 0, '0', 'MAN 1 Situbondo'),
	(12, 0, '0', 'MAN 2 Situbondo'),
	(13, 0, '0', 'MAN 1 Probolinggo'),
	(14, 0, '0', 'MAN 2 Probolinggo'),
	(15, 0, '0', 'MAN 1 Pasuruan'),
	(16, 0, '0', 'MAN 2 Pasuruan'),
	(17, 0, '0', 'MAN Sidoarjo'),
	(18, 0, '0', 'MAN 1 Mojokerto'),
	(19, 0, '0', 'MAN 2 Mojokerto'),
	(20, 0, '0', 'MAN 1 Jombang'),
	(21, 0, '0', 'MAN 2 Jombang'),
	(22, 0, '0', 'MAN 3 Jombang'),
	(23, 0, '0', 'MAN 4 Jombang'),
	(24, 0, '0', 'MAN 5 Jombang'),
	(25, 0, '0', 'MAN 6 Jombang'),
	(26, 0, '0', 'MAN 7 Jombang'),
	(27, 0, '0', 'MAN 8 Jombang'),
	(28, 0, '0', 'MAN 9 Jombang'),
	(29, 0, '0', 'MAN 10 Jombang'),
	(30, 0, '0', 'MAN 1 Nganjuk'),
	(31, 0, '0', 'MAN 2 Nganjuk'),
	(32, 0, '0', 'MAN 3 Nganjuk'),
	(33, 0, '0', 'MAN 1 Magetan'),
	(34, 0, '0', 'MAN 2 Magetan'),
	(35, 0, '0', 'MAN 3 Magetan'),
	(36, 0, '0', 'MAN 1 Ngawi'),
	(37, 0, '0', 'MAN 2 Ngawi'),
	(38, 0, '0', 'MAN 3 Ngawi'),
	(39, 0, '0', 'MAN 4 Ngawi'),
	(40, 0, '0', 'MAN 1 Bojonegoro'),
	(41, 0, '0', 'MAN 2 Bojonegoro'),
	(42, 0, '0', 'MAN 3 Bojonegoro'),
	(43, 0, '0', 'MAN 4 Bojonegoro'),
	(44, 0, '0', 'MAN 5 Bojonegoro'),
	(45, 0, '0', 'MAN 1 Tuban'),
	(46, 0, '0', 'MAN 2 Tuban'),
	(47, 0, '0', 'MAN 1 Lamongan'),
	(48, 0, '0', 'MAN 2 Lamongan'),
	(49, 0, '0', 'MAN 1 Gresik'),
	(50, 0, '0', 'MAN 2 Gresik'),
	(51, 0, '0', 'MAN Bangkalan'),
	(52, 0, '0', 'MAN Sampang'),
	(53, 0, '0', 'MAN 1 Pamekasan'),
	(54, 0, '0', 'MAN 2 Pamekasan'),
	(55, 0, '0', 'MAN Sumenep'),
	(56, 0, '0', 'MAN 1 Kota Kediri'),
	(57, 0, '0', 'MAN 2 Kota Kediri'),
	(58, 0, '0', 'MAN 1 Kota Malang'),
	(59, 0, '0', 'MAN 2 Kota Malang'),
	(60, 0, '0', 'MAN 1 Kota Probolinggo'),
	(61, 0, '0', 'MAN 2 Kota Probolinggo'),
	(62, 0, '0', 'MAN Kota Pasuruan'),
	(63, 0, '0', 'MAN 1 Kota Madiun'),
	(64, 0, '0', 'MAN 2 Kota Madiun'),
	(65, 0, '0', 'MAN Kota Surabaya'),
	(66, 0, '0', 'MAN 1 Banyuwangi'),
	(67, 0, '0', 'MAN 2 Banyuwangi'),
	(68, 0, '0', 'MAN 3 Banyuwangi'),
	(69, 0, '0', 'MAN 4 Banyuwangi'),
	(70, 0, '0', 'MAN 1 Blitar'),
	(71, 0, '0', 'MAN 2 Blitar'),
	(72, 0, '0', 'MAN 3 Blitar'),
	(73, 0, '0', 'MAN 1 Jember'),
	(74, 0, '0', 'MAN 2 Jember'),
	(75, 0, '0', 'MAN 3 Jember'),
	(76, 0, '0', 'MAN 1 Kediri'),
	(77, 0, '0', 'MAN 2 Kediri'),
	(78, 0, '0', 'MAN 3 Kediri'),
	(79, 0, '0', 'MAN 4 Kediri'),
	(80, 0, '0', 'MAN 5 Kediri'),
	(81, 0, '0', 'MAN 1 Madiun'),
	(82, 0, '0', 'MAN 2 Madiun'),
	(83, 0, '0', 'MAN 3 Madiun'),
	(84, 0, '0', 'MAN 4 Madiun'),
	(85, 0, '0', 'MAN 1 Malang'),
	(86, 0, '0', 'MAN 2 Malang'),
	(87, 0, '0', 'MAN 3 Malang'),
	(88, 0, '0', 'MAN Kota Batu'),
	(89, 0, '0', 'MAN Kota Blitar'),
	(90, 0, '0', 'MAN Kota Mojokerto');
/*!40000 ALTER TABLE `m_man` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.pengumuman
CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `perihal` varchar(100) NOT NULL DEFAULT '0',
  `isi` varchar(500) NOT NULL DEFAULT '0',
  `file_pengumuman` varchar(100) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.pengumuman: ~0 rows (approximately)
DELETE FROM `pengumuman`;
/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
INSERT INTO `pengumuman` (`id`, `username`, `name`, `perihal`, `isi`, `file_pengumuman`, `date`) VALUES
	(1, 'adminkabko', 'Adminnya KabKo', 'Tutorial', 'Tutorial Aplikasi Surat Kab.Tuban', '14b26-materi-tuban.pdf', '2018-05-13 14:26:54');
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_asalsurat
CREATE TABLE IF NOT EXISTS `ref_asalsurat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asal_surat` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_asalsurat: ~3 rows (approximately)
DELETE FROM `ref_asalsurat`;
/*!40000 ALTER TABLE `ref_asalsurat` DISABLE KEYS */;
INSERT INTO `ref_asalsurat` (`id`, `asal_surat`) VALUES
	(1, 'Kabko'),
	(2, 'MAN'),
	(3, 'lain-lain');
/*!40000 ALTER TABLE `ref_asalsurat` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_bidang
CREATE TABLE IF NOT EXISTS `ref_bidang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_suratbidang` varchar(15) NOT NULL DEFAULT '0',
  `kode_bidangcek` varchar(50) NOT NULL DEFAULT '0',
  `nama_bidang` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1339 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_bidang: ~50 rows (approximately)
DELETE FROM `ref_bidang`;
/*!40000 ALTER TABLE `ref_bidang` DISABLE KEYS */;
INSERT INTO `ref_bidang` (`id`, `kode_suratbidang`, `kode_bidangcek`, `nama_bidang`) VALUES
	(1, 'Kw.13.1/', 'TU', 'Tata Usaha'),
	(2, 'Kw.13.2/', 'pendma', 'Pendidikan Madrasah'),
	(3, 'Kw.13.3/', 'pontren', 'Pendidikan Diniyah dan Pondok Pesantren'),
	(4, 'Kw.13.4/', 'pais', 'Pendidikan Agama Islam'),
	(5, 'Kw.13.5/', 'phu', 'Penyelenggaraan Haji dan Umroh'),
	(6, 'Kw.13.6/', 'urais', 'Urusan Agama Islam'),
	(7, 'Kw.13.7/', 'penais', 'Penerangan Agama Islam dan Zakat Wakaf'),
	(8, 'Kw.13.8/', 'kristen', 'Pembimas Kristen'),
	(9, 'Kw.13.9/', 'katolik', 'Pembimas Katolik'),
	(10, 'Kw.13.10/', 'hindu', 'Pembimas Hindu'),
	(11, 'Kw.13.11/', 'buddha', 'Pembimas Buddha'),
	(12, '-', 'kakanwil', 'Kakanwil'),
	(1301, '-', 'KAB. PACITAN', 'KAB. PACITAN'),
	(1302, '-', 'KAB. PONOROGO', 'KAB. PONOROGO'),
	(1303, '-', 'KAB. TRENGGALEK', 'KAB. TRENGGALEK'),
	(1304, '-', 'KAB. TULUNGAGUNG', 'KAB. TULUNGAGUNG'),
	(1305, '-', 'KAB. LUMAJANG', 'KAB. LUMAJANG'),
	(1306, '-', 'KAB. BONDOWOSO', 'KAB. BONDOWOSO'),
	(1307, '-', 'KAB. SITUBONDO', 'KAB. SITUBONDO'),
	(1308, '-', 'KAB. PROBOLINGGO', 'KAB. PROBOLINGGO'),
	(1309, '-', 'KAB. PASURUAN', 'KAB. PASURUAN'),
	(1310, '-', 'KAB. SIDOARJO', 'KAB. SIDOARJO'),
	(1311, '-', 'KAB. MOJOKERTO', 'KAB. MOJOKERTO'),
	(1312, '-', 'KAB. JOMBANG', 'KAB. JOMBANG'),
	(1313, '-', 'KAB. N G A N J U K', 'KAB. N G A N J U K'),
	(1314, '-', 'KAB. MAGETAN', 'KAB. MAGETAN'),
	(1315, '-', 'KAB. N G A W I', 'KAB. N G A W I'),
	(1316, '-', 'KAB. BOJONEGORO', 'KAB. BOJONEGORO'),
	(1317, '-', 'KAB. T U B A N', 'KAB. T U B A N'),
	(1318, '-', 'KAB. LAMONGAN', 'KAB. LAMONGAN'),
	(1319, '-', 'KAB. GRESIK', 'KAB. GRESIK'),
	(1320, '-', 'KAB. BANGKALAN', 'KAB. BANGKALAN'),
	(1321, '-', 'KAB. SAMPANG', 'KAB. SAMPANG'),
	(1322, '-', 'KAB. PAMEKASAN', 'KAB. PAMEKASAN'),
	(1323, '-', 'KAB. SUMENEP', 'KAB. SUMENEP'),
	(1324, '-', 'KOTA KEDIRI', 'KOTA KEDIRI'),
	(1325, '-', 'KOTA MALANG', 'KOTA MALANG'),
	(1326, '-', 'KOTA PROBOLINGGO', 'KOTA PROBOLINGGO'),
	(1327, '-', 'KOTA PASURUAN', 'KOTA PASURUAN'),
	(1328, '-', 'KOTA MADIUN', 'KOTA MADIUN'),
	(1329, '-', 'KOTA SURABAYA', 'KOTA SURABAYA'),
	(1330, '-', 'KAB. BANYUWANGI', 'KAB. BANYUWANGI'),
	(1331, '-', 'KAB. B L I T A R', 'KAB. B L I T A R'),
	(1332, '-', 'KAB. J E M B E R', 'KAB. J E M B E R'),
	(1333, '-', 'KAB. K E D I R I', 'KAB. K E D I R I'),
	(1334, '-', 'KAB. M A D I U N', 'KAB. M A D I U N'),
	(1335, '-', 'KAB. M A L A N G', 'KAB. M A L A N G'),
	(1336, '-', 'KOTA B A T U', 'KOTA B A T U'),
	(1337, '-', 'KOTA BLITAR', 'KOTA BLITAR'),
	(1338, '-', 'KOTA MOJOKERTO', 'KOTA MOJOKERTO');
/*!40000 ALTER TABLE `ref_bidang` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_jabatan
CREATE TABLE IF NOT EXISTS `ref_jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_jabatan: ~3 rows (approximately)
DELETE FROM `ref_jabatan`;
/*!40000 ALTER TABLE `ref_jabatan` DISABLE KEYS */;
INSERT INTO `ref_jabatan` (`id`, `jabatan`) VALUES
	(1001, 'Kepala Kantor'),
	(1002, 'Kasi/kasubag'),
	(1003, 'Pelaksana');
/*!40000 ALTER TABLE `ref_jabatan` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_jenissurat
CREATE TABLE IF NOT EXISTS `ref_jenissurat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buku` int(11) DEFAULT '0',
  `id_bidang` int(11) DEFAULT '0',
  `jenissurat` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_jenissurat: ~20 rows (approximately)
DELETE FROM `ref_jenissurat`;
/*!40000 ALTER TABLE `ref_jenissurat` DISABLE KEYS */;
INSERT INTO `ref_jenissurat` (`id`, `buku`, `id_bidang`, `jenissurat`) VALUES
	(1, 1, 0, 'B'),
	(2, 1, 0, 'Surat Pengantar'),
	(3, 2, 0, 'Naskah Dinas Khusus'),
	(4, 3, 0, 'Surat Tugas'),
	(5, 4, 1, 'Nota Dinas TU'),
	(6, 5, 2, 'Nota Dinas Pendma'),
	(7, 6, 3, 'Nota Dinas Pontren'),
	(8, 7, 4, 'Nota Dinas Pais'),
	(9, 8, 5, 'Nota Dinas PHU'),
	(10, 9, 6, 'Nota Dinas Urais'),
	(11, 10, 7, 'Nota Dinas Penais'),
	(12, 11, 8, 'Nota Dinas Pembimas Kristen'),
	(13, 12, 9, 'Nota Dinas Katolik'),
	(14, 13, 10, 'Nota Dinas Hindu'),
	(15, 14, 11, 'Nota Dinas Budha'),
	(1001, 1001, 1000, 'Nota Dinas TU'),
	(1002, 1002, 1000, 'Nota Dinas Pendidikan Madrasah'),
	(1003, 1003, 1000, 'Nota Dinas Pendidikan Diniyah dan Pondok Pesantren'),
	(1004, 1004, 1000, 'Nota Dinas Pendidikan Agama Islam'),
	(1005, 1005, 1000, 'Nota Dinas Penyelenggaraan Haji dan Umrah'),
	(1006, 1006, 1000, 'Nota Dinas Bimas Islam'),
	(1007, 1007, 1000, 'Nota Dinas Penyelenggara Syariah'),
	(1008, 1008, 1000, 'Nota Dinas Kelompok Jabatan Fungsional');
/*!40000 ALTER TABLE `ref_jenissurat` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_seksi
CREATE TABLE IF NOT EXISTS `ref_seksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bidang` int(11) NOT NULL DEFAULT '0',
  `kode_suratseksi` varchar(5) NOT NULL DEFAULT '0',
  `kode_seksicek` varchar(10) NOT NULL DEFAULT '0',
  `nama_seksi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_seksi: ~41 rows (approximately)
DELETE FROM `ref_seksi`;
/*!40000 ALTER TABLE `ref_seksi` DISABLE KEYS */;
INSERT INTO `ref_seksi` (`id`, `id_bidang`, `kode_suratseksi`, `kode_seksicek`, `nama_seksi`) VALUES
	(1, 1, '1/', 'renkeu', 'Perencanaan dan Keuangan'),
	(2, 1, '2/', 'up', 'Ortala dan Kepegawaian'),
	(3, 1, '3/', 'inmas', 'Informasi Masyarakat'),
	(4, 1, '4/', 'kub', 'Hukum dan Kerukunan Umat Beragama'),
	(5, 1, '5/', 'umum', 'Subbag Umum'),
	(6, 2, '1/', 'kurev', 'Seksi Kurikulum dan Evaluasi'),
	(7, 2, '2/', 'PTK', 'Seksi Pendidik dan Tenaga Kependidikan'),
	(8, 2, '3/', 'sarpras', 'Seksi Sarana dan Prasarana'),
	(9, 2, '4/', 'kesiswaan', 'Seksi Kesiswaan'),
	(10, 2, '5/', 'si', 'Seksi Kelembagaan dan Sistem Informasi'),
	(11, 3, '1/', 'takmiliyah', 'Seksi Pendidikan Diniyah Takmiliyah'),
	(12, 3, '2/', 'pdf', 'Seksi Pendidikan Diniyah Formal dan Kesetaraan'),
	(13, 3, '3/', 'ponpes', 'Seksi Pondok Pesantren'),
	(14, 3, '4/', 'tpq', 'Seksi Pendidikan Al-Qur’an'),
	(15, 3, '5/', 'si', 'Seksi Sistem Informasi'),
	(16, 4, '1/', 'tk', 'Seksi Pendidikan Agama Islam pada PAUD dan TK'),
	(17, 4, '2/', 'sd', 'Seksi Pendidikan Agama Islam pada SD/SDLB'),
	(18, 4, '3/', 'smp', 'Seksi Pendidikan Agama Islam pada SMP/SMPLB'),
	(19, 4, '4/', 'sma', 'Seksi Pendidikan Agama Islam pada SMA/SMALB/SMK'),
	(20, 4, '5/', 'si', 'Seksi Sistem Informasi'),
	(21, 5, '1/', 'dok', 'Seksi Pendaftaran dan Dokumen Haji'),
	(22, 5, '2/', 'pembinaan', 'Seksi Pembinaan Haji dan Umrah'),
	(23, 5, '3/', 'akomodasi', 'Seksi Akomodasi, Transportasi, dan Perlengkapan Haji'),
	(24, 5, '4/', 'keu', 'Seksi Pengelolaan Keuangan Haji'),
	(25, 5, '5/', 'si', 'Seksi Pengelolaan Keuangan Haji'),
	(26, 6, '1/', 'penghulu', 'Seksi Kepenghuluan'),
	(27, 6, '2/', 'kua', 'Seksi Pemberdayaan Kantor Urusan Agama'),
	(28, 6, '3/', 'masjid', 'Seksi Kemasjidan'),
	(29, 6, '4/', 'si', 'Seksi Produk Halal, Pembinaan Syariah, dan SI'),
	(30, 7, '1/', 'seksi1', 'Seksi Penerangan dan Penyuluhan Agama Islam'),
	(31, 7, '2/', 'seksi2', 'Seksi Kemitraan Umat, Publikasi Dakwah dan Hari Besar Agama Islam'),
	(32, 7, '3/', 'seksi3', 'Seksi Pengembangan Seni Budaya Islam, Musabaqah Al-Qur’an dan Al-Hadist'),
	(33, 7, '4/', 'seksi4', 'Seksi Pemberdayaan Zakat Bidang Penais, Zakat dan Wakaf'),
	(34, 7, '5/', 'seksi5', 'Seksi Pemberdayaan Wakaf Bidang Penais, Zakat dan Wakaf'),
	(1001, 1000, '1/', 'tu', 'Sub Bagian Tata Usaha'),
	(1002, 1000, '2/', 'pendma', 'Seksi Pendidikan Madrasah'),
	(1003, 1000, '3/', 'pontren', 'Seksi Pendidikan Diniyah dan Pondok Pesantren'),
	(1004, 1000, '4/', 'pais', 'Seksi Pendidikan Agama Islam'),
	(1005, 1000, '5/', 'haji', 'Seksi Penyelenggaraan Haji dan Umrah'),
	(1006, 1000, '6/', 'islam', 'Seksi Bimas Islam'),
	(1007, 1000, '7/', 'syariah', 'Penyelenggara Syariah'),
	(1008, 1000, '8/', 'fungsional', 'Kelompok Jabatan Fungsional');
/*!40000 ALTER TABLE `ref_seksi` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.ref_sifat
CREATE TABLE IF NOT EXISTS `ref_sifat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sifat` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.ref_sifat: ~4 rows (approximately)
DELETE FROM `ref_sifat`;
/*!40000 ALTER TABLE `ref_sifat` DISABLE KEYS */;
INSERT INTO `ref_sifat` (`id`, `nama_sifat`) VALUES
	(1, 'Biasa'),
	(2, 'Penting'),
	(3, 'Segera'),
	(4, 'Rahasia');
/*!40000 ALTER TABLE `ref_sifat` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.t_chatpersonal
CREATE TABLE IF NOT EXISTS `t_chatpersonal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kirim` int(11) NOT NULL DEFAULT '0',
  `id_terima` int(11) NOT NULL DEFAULT '0',
  `pesan` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.t_chatpersonal: ~0 rows (approximately)
DELETE FROM `t_chatpersonal`;
/*!40000 ALTER TABLE `t_chatpersonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_chatpersonal` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.t_chatroom
CREATE TABLE IF NOT EXISTS `t_chatroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT NULL,
  `id_rules` int(11) NOT NULL DEFAULT '0',
  `pesan` varchar(255) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.t_chatroom: ~1 rows (approximately)
DELETE FROM `t_chatroom`;
/*!40000 ALTER TABLE `t_chatroom` DISABLE KEYS */;
INSERT INTO `t_chatroom` (`id`, `username`, `nama`, `foto`, `id_rules`, `pesan`, `date`) VALUES
	(1, 'fihani', 'Fitri Raihani Rasmana', '951d4-untitled.png', 1, 'Testing  Chat Room...', '2018-03-04 10:00:37'),
	(2, 'adminkabko', 'Adminnya KabKo', 'f2cfd-demo.png', 1001, 'hallo', '2018-05-09 09:37:09');
/*!40000 ALTER TABLE `t_chatroom` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.t_disposisi
CREATE TABLE IF NOT EXISTS `t_disposisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_suratmasuk` int(11) NOT NULL DEFAULT '0',
  `id_pemberi` int(11) NOT NULL DEFAULT '0',
  `id_penerima` int(11) NOT NULL DEFAULT '0',
  `tanggal_disposisi` date NOT NULL,
  `catatan_disposisi` varchar(150) NOT NULL,
  `id_userdisposisi` int(11) NOT NULL,
  `tanggal_rekamdisposisi` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.t_disposisi: ~0 rows (approximately)
DELETE FROM `t_disposisi`;
/*!40000 ALTER TABLE `t_disposisi` DISABLE KEYS */;
INSERT INTO `t_disposisi` (`id`, `id_suratmasuk`, `id_pemberi`, `id_penerima`, `tanggal_disposisi`, `catatan_disposisi`, `id_userdisposisi`, `tanggal_rekamdisposisi`) VALUES
	(1, 1, 1005, 1004, '2018-05-13', 'TL', 1002, '2018-05-13 07:41:00'),
	(2, 1, 1004, 1003, '2018-05-15', 'TL', 1004, '2018-05-13 13:25:08'),
	(3, 1, 1003, 1003, '2018-05-14', 'Sudah di TL', 1003, '2018-05-13 13:39:06');
/*!40000 ALTER TABLE `t_disposisi` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.t_suratkeluar
CREATE TABLE IF NOT EXISTS `t_suratkeluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kodeklasifikasi` int(11) NOT NULL,
  `id_tujuansurat` int(11) DEFAULT NULL,
  `penerima` varchar(255) NOT NULL DEFAULT '0',
  `id_jenissurat` int(11) NOT NULL,
  `nomor_surat` int(11) DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `indeks_surat` varchar(50) DEFAULT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `tanggal_rekam` date DEFAULT NULL,
  `id_sifat` int(11) DEFAULT NULL,
  `lampiran` varchar(50) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `file_suratkeluar` varchar(255) DEFAULT NULL,
  `catatan_BO` text,
  `status_BO` int(11) DEFAULT '0',
  `kode_kabko` varchar(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.t_suratkeluar: ~0 rows (approximately)
DELETE FROM `t_suratkeluar`;
/*!40000 ALTER TABLE `t_suratkeluar` DISABLE KEYS */;
INSERT INTO `t_suratkeluar` (`id`, `id_kodeklasifikasi`, `id_tujuansurat`, `penerima`, `id_jenissurat`, `nomor_surat`, `perihal`, `indeks_surat`, `tanggal_surat`, `tanggal_rekam`, `id_sifat`, `lampiran`, `id_user`, `file_suratkeluar`, `catatan_BO`, `status_BO`, `kode_kabko`) VALUES
	(1, 158, 3, 'Dinas Pendidikan', 1, 1, 'Undangan USBN', 'usbn', '2018-05-13', '2018-05-13', 2, '-', 1003, 'db2ff-logo-kemkeu-igggd.png', '<p>\r\n	ok</p>\r\n', 0, '1317'),
	(2, 24, 3, 'ybs', 4, 1, 'Surat Tugas ke Kanwil', 'Surat Tugas', '2018-05-13', '2018-05-13', 2, '-', 1003, '9843a-book1.xlsx', NULL, 0, '1317');
/*!40000 ALTER TABLE `t_suratkeluar` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.t_suratmasuk
CREATE TABLE IF NOT EXISTS `t_suratmasuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_asalsurat` int(11) NOT NULL DEFAULT '0',
  `pengirim` varchar(255) NOT NULL DEFAULT '0',
  `nomor_surat` varchar(50) NOT NULL DEFAULT '0',
  `perihal` varchar(255) NOT NULL DEFAULT '0',
  `indeks_berkas` varchar(50) NOT NULL DEFAULT '0',
  `id_sifat` varchar(50) NOT NULL DEFAULT '0',
  `lampiran` varchar(50) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL DEFAULT '0',
  `file_suratmasuk` varchar(255) NOT NULL DEFAULT '0',
  `tanggal_surat` date NOT NULL,
  `tanggal_rekam` date NOT NULL,
  `terima_sekkab` int(11) NOT NULL,
  `kode_kabko` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.t_suratmasuk: ~0 rows (approximately)
DELETE FROM `t_suratmasuk`;
/*!40000 ALTER TABLE `t_suratmasuk` DISABLE KEYS */;
INSERT INTO `t_suratmasuk` (`id`, `id_asalsurat`, `pengirim`, `nomor_surat`, `perihal`, `indeks_berkas`, `id_sifat`, `lampiran`, `id_user`, `file_suratmasuk`, `tanggal_surat`, `tanggal_rekam`, `terima_sekkab`, `kode_kabko`) VALUES
	(1, 3, 'Dinas Pendidikan', '12345678', 'Jadwal USBN', 'usbn', '2', '-', 1002, 'b8c3c-surat-pernyataan.docx', '2018-05-13', '2018-05-13', 0, '1317'),
	(2, 3, 'Dinas Pendidikan Kabupaten Tuban', '1234567890', 'Undangan Rapat Koordinasi Pelaksaaan Ujian', 'Undangan', '2', '-', 1002, '66645-surat-pernyataan-gresik.docx', '2018-05-10', '2018-05-13', 0, '1317');
/*!40000 ALTER TABLE `t_suratmasuk` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rules` int(1) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_seksi` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.users: ~5 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `id_rules`, `name`, `username`, `password`, `id_bidang`, `id_seksi`, `id_jabatan`, `status`, `ket`, `foto`) VALUES
	(1001, 1001, 'Adminnya KabKo', 'adminkabko', 'adminkabko', 1000, 0, 0, 1, NULL, 'f2cfd-demo.png'),
	(1002, 1002, 'sekrekabko', 'sekrekabko', 'sekrekabko', 1000, 1001, 1003, 1, 'sekre', 'ecaad-demo.png'),
	(1003, 1004, 'penggunakabko', 'penggunakabko', 'penggunakabko', 1000, 1003, 1003, 1, NULL, '4df2d-demo.png'),
	(1004, 1003, 'kasikabko', 'kasikabko', 'kasikabko', 1000, 1003, 1002, 1, NULL, '139e2-demo.png'),
	(1005, 1002, 'Kepala Kantor', 'kepala', 'kepala', 1000, NULL, 1001, 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table suratkemenag.users_rules
CREATE TABLE IF NOT EXISTS `users_rules` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rules` varchar(50) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;

-- Dumping data for table suratkemenag.users_rules: ~11 rows (approximately)
DELETE FROM `users_rules`;
/*!40000 ALTER TABLE `users_rules` DISABLE KEYS */;
INSERT INTO `users_rules` (`id`, `rules`, `keterangan`) VALUES
	(1, 'admin', 'Bisa Menggunakan semua Menu'),
	(2, 'Front Office', ''),
	(3, 'Back Office SURAT', ''),
	(4, 'Sekretaris Kakanwil', ''),
	(5, 'Sekretaris Kabag', ''),
	(6, 'Sekretaris Kabid', ''),
	(7, 'Pengguna', ''),
	(8, 'Kasi/ Kasubbag', ''),
	(1001, 'Admin Kab/Kota', ''),
	(1002, 'Sekretaris', ''),
	(1003, 'Kasi/Kasubag', ''),
	(1004, 'Pengguna', '');
/*!40000 ALTER TABLE `users_rules` ENABLE KEYS */;

-- Dumping structure for view suratkemenag.v_disposisi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_disposisi` (
	`id` INT(11) NOT NULL,
	`id_suratmasuk` INT(11) NOT NULL,
	`id_pemberi` INT(11) NOT NULL,
	`id_penerima` INT(11) NOT NULL,
	`tanggal_disposisi` DATE NOT NULL,
	`catatan_disposisi` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_userdisposisi` INT(11) NOT NULL,
	`tanggal_rekamdisposisi` DATETIME NOT NULL,
	`id_pemberi_bidang` INT(11) NULL,
	`id_pemberi_seksi` INT(11) NULL,
	`id_pemberi_jabatan` INT(11) NULL,
	`id_penerima_bidang` INT(11) NULL,
	`id_penerima_seksi` INT(11) NULL,
	`id_penerima_jabatan` INT(11) NULL,
	`id_asalsurat` INT(11) NOT NULL,
	`pengirim` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`nomor_surat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`perihal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`indeks_berkas` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`tanggal_surat` DATE NOT NULL,
	`tanggal_rekam` DATE NOT NULL,
	`id_sifat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`lampiran` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_user` INT(11) NOT NULL,
	`file_suratmasuk` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`kode_kabko` VARCHAR(5) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_disposisi_id_last
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_disposisi_id_last` (
	`id_suratmasuk` INT(11) NOT NULL,
	`id` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_disposisi_last
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_disposisi_last` (
	`id` INT(11) NOT NULL,
	`id_suratmasuk` INT(11) NOT NULL,
	`id_pemberi` INT(11) NOT NULL,
	`id_penerima` INT(11) NOT NULL,
	`tanggal_disposisi` DATE NOT NULL,
	`catatan_disposisi` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_userdisposisi` INT(11) NOT NULL,
	`tanggal_rekamdisposisi` DATETIME NOT NULL,
	`id_pemberi_bidang` INT(11) NULL,
	`id_pemberi_seksi` INT(11) NULL,
	`id_pemberi_jabatan` INT(11) NULL,
	`id_penerima_bidang` INT(11) NULL,
	`id_penerima_seksi` INT(11) NULL,
	`id_penerima_jabatan` INT(11) NULL,
	`id_asalsurat` INT(11) NOT NULL,
	`pengirim` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`nomor_surat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`perihal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`indeks_berkas` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`tanggal_surat` DATE NOT NULL,
	`tanggal_rekam` DATE NOT NULL,
	`id_sifat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`lampiran` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_user` INT(11) NOT NULL,
	`file_suratmasuk` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`kode_kabko` VARCHAR(5) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_suratkeluar
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_suratkeluar` (
	`id` INT(11) NOT NULL,
	`id_kodeklasifikasi` INT(11) NOT NULL,
	`id_tujuansurat` INT(11) NULL,
	`penerima` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jenissurat` INT(11) NOT NULL,
	`nomor_surat` INT(11) NULL,
	`perihal` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`indeks_surat` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`tanggal_surat` DATE NULL,
	`tanggal_rekam` DATE NULL,
	`id_sifat` INT(11) NULL,
	`lampiran` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_user` INT(11) NULL,
	`file_suratkeluar` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`catatan_BO` TEXT NULL COLLATE 'latin1_swedish_ci',
	`status_BO` INT(11) NULL,
	`id_bidang` INT(11) NULL,
	`id_seksi` INT(11) NULL,
	`id_jabatan` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_suratmasuk_posisi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_suratmasuk_posisi` (
	`kode_kabko` VARCHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id` INT(11) NOT NULL,
	`id_asalsurat` INT(11) NOT NULL,
	`pengirim` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`nomor_surat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`perihal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`indeks_berkas` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`tanggal_surat` DATE NOT NULL,
	`tanggal_rekam` DATE NOT NULL,
	`id_sifat` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`file_suratmasuk` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_pemberi` INT(11) NULL,
	`id_penerima` INT(11) NULL,
	`tanggal_disposisi` DATE NULL,
	`catatan_disposisi` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`id_penerima_bidang` INT(11) NULL,
	`id_penerima_seksi` INT(11) NULL,
	`terima_sekkab` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_users
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_users` (
	`id` INT(11) NOT NULL,
	`id_rules` INT(1) NOT NULL,
	`name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_bidang` INT(11) NULL,
	`id_seksi` INT(11) NULL,
	`id_jabatan` INT(11) NULL,
	`status` INT(11) NULL,
	`ket` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`foto` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`kode_bidangcek` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nama_bidang` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view suratkemenag.v_disposisi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_disposisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi` AS select d.id, d.id_suratmasuk,d.id_pemberi,d.id_penerima,d.tanggal_disposisi,d.catatan_disposisi,d.id_userdisposisi,d.tanggal_rekamdisposisi,
u1.id_bidang id_pemberi_bidang,u1.id_seksi id_pemberi_seksi, u1.id_jabatan id_pemberi_jabatan,
u2.id_bidang id_penerima_bidang, u2.id_seksi id_penerima_seksi,u2.id_jabatan id_penerima_jabatan, 
sm.id_asalsurat,sm.pengirim,sm.nomor_surat,sm.perihal,sm.indeks_berkas,sm.tanggal_surat,sm.tanggal_rekam,sm.id_sifat,sm.lampiran,sm.id_user,sm.file_suratmasuk,sm.kode_kabko
from t_disposisi d, users u1, users u2, t_suratmasuk sm where d.id_pemberi=u1.id and d.id_penerima=u2.id and d.id_suratmasuk=sm.id ;

-- Dumping structure for view suratkemenag.v_disposisi_id_last
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_disposisi_id_last`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi_id_last` AS select id_suratmasuk, max(id) id from t_disposisi group by id_suratmasuk ;

-- Dumping structure for view suratkemenag.v_disposisi_last
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_disposisi_last`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi_last` AS select d.*  from v_disposisi d, v_disposisi_id_last idl where d.id=idl.id ;

-- Dumping structure for view suratkemenag.v_suratkeluar
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_suratkeluar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_suratkeluar` AS select sk.*, u.id_bidang, u.id_seksi, u.id_jabatan from t_suratkeluar sk join users u on (sk.id_user=u.id) ;

-- Dumping structure for view suratkemenag.v_suratmasuk_posisi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_suratmasuk_posisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_suratmasuk_posisi` AS select sm.kode_kabko, sm.id,sm.id_asalsurat,sm.pengirim,sm.nomor_surat,sm.perihal,
sm.indeks_berkas,sm.tanggal_surat,sm.tanggal_rekam,sm.id_sifat,sm.file_suratmasuk,
dl.id_pemberi,dl.id_penerima,dl.tanggal_disposisi,dl.catatan_disposisi,dl.id_penerima_bidang,dl.id_penerima_seksi,sm.terima_sekkab
from t_suratmasuk sm
left join
v_disposisi_last dl
on sm.id=dl.id_suratmasuk ;

-- Dumping structure for view suratkemenag.v_users
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_users`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_users` AS select users.*,ref_bidang.kode_bidangcek,ref_bidang.nama_bidang from users left join ref_bidang on users.id_bidang = ref_bidang.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
