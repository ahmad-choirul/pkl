-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 08:53 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232F297A57A5A743894A0E4A801FC3'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'ahmad', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `gol` varchar(20) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `jabatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nama`, `nip`, `gol`, `pangkat`, `jabatan`) VALUES
(1, 'BUSTHAMI, SH, M.H.I', '196106051986031005', 'IV/b', 'Pembina TK 1', 'Kepala pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(2, 'Drs. TOHIRUDDIN', '196211201989031004', 'IV/b', 'Pembina TK 1', 'Perencana Madya Pada Subbag Tata Usaha Kantor Dep. Agama Kab. Jember Prov. Jatim'),
(3, 'RUDI WINARTO, SE.', '196806071990021001', 'IV/b', 'Pembina TK 1', 'Analis Kepegawaian Madya pada Subbag Tata Usaha Kantor Departemen Agama Kab. Jember Prov. Jatim'),
(4, 'DR. MACHFUDZ, M.Pd.I', '196209151994031001', 'IV/b', 'Pembina TK 1', 'Kepala Sub Bagian pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(5, 'Dra. SRI RATNA WIDYASTUTI', '196105011991032002', 'IV/b', 'Pembina TK 1', 'Pranata Humas Madya Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(6, 'PITONO, S.Pd,M.Pd.I', '197207052005011004', 'IV/a', 'Pembina', 'Pengelola Pengadaan Barang/Jasa Madya pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(7, 'ALI IMRON, S.Pd, M.Si.', '197511162005011003', 'III/d', 'Penata TK 1', 'Bendahara Penerimaan/Pengeluaran pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(8, 'MUKARROMAH, SE', '197501221998032001', 'III/d', 'Penata TK 1', 'Bendahara Penerimaan/Pengeluaran Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(9, 'Drs. MARJUKI?', '196501011999031003', 'III/d', 'Penata TK 1', 'Penyuluh Agama Muda Bimbingan Masyarakat Hindu Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(10, 'SAIFUL ULUM, SE', '197006172005011004', 'III/d', 'Penata TK 1', 'Pengolah Daftar Gaji Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(11, 'ASRI YULIANTI , S.Kom., M.T.', '198007062011012002', 'III/c', 'Penata', 'Pranata Komputer Muda pada Sub Bagian Tata Usaha pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(12, 'TRIASTONO ROKHMAN, SE', '198607242005011002', 'III/b', 'Penata Muda TK 1', 'Pengelola Pengadaan Barang/Jasa Pertama Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(13, 'MUHAMMAD ATMUS SYAHRIZ ZA\'IM, SE.', '198608192011011012', 'III/b', 'Penata Muda TK 1', 'Statistisi Pertama Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(14, 'FERDINAND ZULKARNAIN, SE.', '198104192011011003', 'III/b', 'Penata Muda TK 1', 'Perencana Pertama Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(15, 'EFRIZAL FARIZKHA, SE.', '198606192011011005', 'III/b', 'Penata Muda TK 1', 'Perencana Pertama pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(16, 'YUNI MAYA SARI, SE', '198406032006042003', 'III/b', 'Penata Muda TK 1', 'Pengelola BMN pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(17, 'FAUZIAH INWINARNI, S.IP', '197410012009012007', 'III/a', 'Penata Muda', 'Pengadministrasi pada Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(18, 'MARYADI SE', '197206232014111001', 'III/a', 'Penata Muda', 'Pengadministrasi Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(19, 'NURUL LAILA HASANAH, SE', '197211072014112001', 'III/a', 'Penata Muda', 'Pengembang Pegawai Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(20, 'QUDSYI?', '198408202014111002', 'II/a', 'Pengantar Muda', 'Pengolah Data Kepegawaian Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(21, 'AHMAD?', '196501102014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(22, 'AHMAD HOTIB?', '197001202014111002', 'II/a', 'Pengantar Muda', 'Penyusun Bahan Kerumahtanggaan Sub Bagian Tata Usaha Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(23, 'DR. ERMA FATMAWATI S.Ag, M.Pd.I', '197107262006042019', 'III/d', 'Penata TK 1', 'Kepala Seksi pada Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(24, 'NURUL HUDA, S.Kom', '198108242005011002', 'III/d', 'Penata TK 1', 'Pranata Komputer Muda pada Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(25, 'NAJMUL LAILI, S.Pd.I. M.Pd.I', '197407221998032002', 'III/c', 'Penata', 'Penyusun Bahan Bimbingan Teknis pada Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(26, 'HOLID HIKMATULLAH, S.Pd.I', '197302282005011003', 'III/c', 'Penata', 'Pengadministrasi Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(27, 'CHOIRIL HUDA, SE', '197310012005011003', 'III/c', 'Penata', 'Pengelola Pendidikan Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(28, 'BUDI SETIAWAN, SE', '197809192007011018', 'III/b', 'Penata Muda TK 1', 'Statistisi Pertama pada Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(29, 'YOSI INDARTO?', '197605052014111003', 'II/a', 'Pengantar Muda', 'Pengadministrasi Seksi Pendidikan Madrasah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(30, 'ERWYN SULTHONY, SE', '197108202006041001', 'III/c', 'Penata', 'Kepala Seksi pada Seksi Pendidikan Diniyah dan Pondok Pesantren Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(31, 'IRVAN IRDHIAN SYAH, S.Pd', '197811072005011002', 'III/c', 'Penata', 'Pengolah Data Seksi Pendidikan Diniyah dan Pondok Pesantren Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(32, 'M RIDHO SATRIO WIBOWO, SE', '198403312005011001', 'III/c', 'Penata', 'Pengelola Pendidikan Seksi Pendidikan Diniyah dan Pondok Pesantren Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(33, 'M. MISKUN, S.Ag, M.HI', '196903062000031002', 'IV/a', 'Pembina', 'Kepala pada Seksi Pendidikan Agama Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(34, 'SAMHADI, S. Pd.I', '197607192005011004', 'III/c', 'Penata', 'Pengolah Data pada Seksi Pendidikan Agama Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(35, 'HERI PURNOMO SIDI, SE, MM.', '197708102007011026', 'III/c', 'Penata', 'Pengolah Data pada Seksi Pendidikan Agama Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(36, 'ANANG WIDAYAT, SE', '197208282005011005', 'III/c', 'Penata', 'Penyusun Bahan Bimbingan Teknis pada Seksi Pendidikan Agama Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(37, 'RATNO MIHARJO?', '196107212006041002', 'II/c', 'Pengantar', 'Pengadministrasi Seksi Pendidikan Agama Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(38, 'Drs. AHMAD THOLABI, M.HI', '196911021995031002', 'IV/a', 'Pembina', 'Kepala Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(39, 'ABDUR ROHIM AL AMIN M.Pd.I', '196511101998031009', 'III/d', 'Penata TK 1', 'Penyusun Bahan Pendaftaran/Pembatalan Haji Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(40, 'LINDA NOVALIANA SARI, SE.I', '198111252006042002', 'III/d', 'Penata TK 1', 'Pengelola Penyelenggaraan Haji dan Umrah Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(41, 'MUHAMAD FAUZI , S.Kom.', '197706022011011005', 'III/c', 'Penata', 'Pranata Komputer Muda pada Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(42, 'JUNIAR SJAFARINDA?', '196406171987032001', 'III/b', 'Penata Muda TK 1', 'Pengadministrasi pada Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(43, 'SUKADI?', '196405051986031003', 'III/b', 'Penata Muda TK 1', 'Pengolah Data pada Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(44, 'MOCHAMMAD TAUFIEQURACHMAN?', '197102041991031001', 'III/b', 'Penata Muda TK 1', 'Pengadministrasi pada Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(45, 'NURWAHID?', '197801041998031003', 'III/b', 'Penata Muda TK 1', 'Pengadministrasi Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(46, 'RUSMINI?', '196801222007012026', 'II/c', 'Pengantar', 'Penyusun Laporan Keuangan Seksi Penyelenggaraan Haji dan Umrah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(47, 'Drs. MISBAKUL MUNIR, M.HI', '196409201993031001', 'IV/a', 'Pembina', 'Kepala Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(48, 'U\'UL ROFIQOH, A.Md.', '197201252000082001', 'III/b', 'Penata Muda TK 1', 'Pengelola Bimbingan Masyarakat Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(49, 'ANANG ISMANTO?', '197408052005011002', 'II/d', 'Pengantar TK 1', 'Penyusun Bahan Bimbingan Teknis Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(50, 'MAFUD EFENDI?', '197709192014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(51, 'ABDUL MUIS MULAHOD?', '198002032014111001', 'II/a', 'Pengantar Muda', 'Pengolah Data pada Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(52, 'MUHAMMAD MUSLIM, S.Ag. M. Sy', '197511022009101001', 'III/c', 'Penata', 'Penyelenggara pada Syariah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(53, 'MUDARIS, S.Pd.I', '196708092005011002', 'III/c', 'Penata', 'Pengolah Data pada Syariah Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(54, 'TYAS SUKA TRISUWITA, S.PAK.', '197007092000031001', 'III/d', 'Penata TK 1', 'Penyelenggara Kristen Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(55, 'PETRUS AMAT SUTADI, S.Pd', '197307292000031001', 'III/d', 'Penata TK 1', 'Penyelenggara Katolik Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(56, 'FA.HATTA ADI MAS PRIHANDONO, SS', '198003142009011004', 'III/b', 'Penata Muda TK 1', 'Pengolah Data Katolik Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(57, 'Drs. M. ISMAIL MARZUQI?', '195906051985041002', 'IV/b', 'Pembina TK 1', 'Pengawas Sekolah Madya Tk. Dasar Pada TK/SD Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(58, 'NANANG WAHYU EDY, S.Pd. M.Pd.I.', '196810071998031001', 'IV/b', 'Pembina TK 1', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(59, 'EDY SUCIPTO, M.Pd', '197108031997031002', 'IV/b', 'Pembina TK 1', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pengawas Pendidikan Agama Islam, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(60, 'Drs. ZURNI?', '196612311994031027', 'IV/b', 'Pembina TK 1', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(61, 'Drs. MOHAMMAD LUTFI?', '196401011997031008', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(62, 'KHOIRI, S.Pd, M.Pd.I', '197101021997031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(63, 'M ZUHDI ALFIAN, S.Pd', '197102021997031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya Tk. Menengah pada Madrasah Tsanawiyah Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(64, 'Drs. AHMAD HARIADI SUGIHARTO?', '196502021992031005', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA, pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(65, 'AMRU FAJAR AGUS S Pd', '196708191994031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(66, 'HERI SUSANTO S.Ag, M.HI', '197112161997031009', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(67, 'SUMADI S.Pd.I', '196008251994021001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(68, 'MOHAMMAD HOLIL, S.Ag., M.Pd.I', '197003121994031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(69, 'WAHYU WIDODO, S.Pd.', '197112172000031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Hindu, pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(70, 'MOH. NURIADI, S.Ag', '196409011992031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(71, 'Drs. ASIK?', '196406012000031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(72, 'Drs MOHAMMAD ROZIM M.Pd.I', '196803022000031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(73, 'Drs HOZAINI?', '196801012000031013', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(74, 'SUNARTO, S.Pd.I', '196801011996031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(75, 'MUHAMMAD SLAMET, S.Pd.I', '196801111994031002', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(76, 'MADRA\'I, S.Pd.I', '196810201993031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(77, 'AMAN BACHTIAR, S.Pd, M.Pd.I', '197502252005011003', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pengawas Pendidikan Madrasah, pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(78, 'SAIFUL BAHRI, S.Pd.I, M.Pd.I', '196808032000031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(79, 'SAIFUL ASYARI, S.Ag., M.Pd.I', '197010282005011002', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(80, 'ABDUL LATIF ANWAR, S.Ag', '196906112005011005', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(81, 'ZAENAL MUTTAQIN, S.Ag', '196811262005011001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(82, 'SULISTIYANI, S.Ag.M.Pd.I', '196501122000032003', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(83, 'NUR SHOLEH, S.Pd, M.Pd.I', '196907042005011003', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(84, 'Drs. SUBADI S.Pd.I, M.Pd.I', '196011062000031001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(85, 'MOH. NURHUDA, S.Ag., M.Pd.I', '197702282005011002', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(86, 'Drs. MOH. IRPAK, M.Pd.', '196504112005011001', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(87, 'EDY SANTOSO, S.Pd., M.Pd.I', '197412042005011002', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda SLTP/SLTA/MTs/MA, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(88, 'Drs. MUADIB, M.Pd', '196807212005011002', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda MTsN 8 Jember Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(89, 'M. NUR ROFIQ, S.Ag', '197104052005011005', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(90, 'SLAMET, S.Pd., M.Pd.I.', '196808172005011004', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, Pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(91, 'SUBARIYANTO S.Pd, M.Pd.I', '197002122005011004', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI, pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(92, 'SUPRAYITNO, S.Pd, M.Pd.I', '197208102005011003', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya MAN 1 Jember Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(93, 'Drs. MUHAMAD KHALIL?', '196502192005011001', 'IV/a', 'Pembina', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(94, 'MUHAMMAD YASIN YUSUF GHOZALI, S.Pd.', '197901012005011008', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(95, 'BADRUS SOLEH, S.Ag', '196702122000031003', 'IV/a', 'Pembina', 'Pengawas Sekolah Madya SLTP/SLTA/MTs/MA pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(96, 'Drs. DJUNAIDI M.Pd.I', '196507282005011001', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI, pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(97, 'MOHAMAD ILHAM PRIBADI, S.Pd., M.Pd.I', '197004092005011007', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda SLTP/SLTA/MTs/MA pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(98, 'Drs. M. HAMID AQIL, M.Pd.', '196202212000031002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda SLTP/SLTA/MTs/MA pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(99, 'MOHAMMAD SYAFII, S.Ag, M.Pd.I?', '197212262005011002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(100, 'ABDUL BASID, S.Pd.I, M.Pd.I', '198109112005011001', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda SLTP/SLTA/MTs/MA pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(101, 'Drs. KHOLIK?', '196807042005011006', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(102, 'FAISOL ABRARI, M.Pd.I', '197505212005011002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Madrasah, pada pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(103, 'ABD HAMID S.Pd.I', '196605032002121002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(104, 'WIDODO, S.Ag', '197305102005011003', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(105, 'MUH. HASIM, S.Pd.I', '197103271998031004', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda pada PAUD, TK, SD/SDLB di Kec. Arjasa Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(106, 'HATIB, S.Pd.I', '197001052005011002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(107, 'TRI NUR UMI PURWANING ARI, S.Pd.M.Pd.I.', '197307082006042008', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda pada MTsN 7 Jember Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(108, 'NURUL HUDA, S.Pd.I', '197404232005011003', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(109, 'ITA NOVITARINI, S.Pd.', '197611222005012002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda RA/MI pada Kecamatan Puger Kantor Kementerian Agama Kab. Jember'),
(110, 'HOSNATI, S.Pd.I, M.Pd.I', '196806132005012001', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(111, 'MUSTOFA, S.Pd.', '196901172005011003', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda RA/MI pada Kecamatan Sukowono Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(112, 'ROBIQ FAUJI, S.Pd., M.Pd.', '197204102005011004', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(113, 'AKH. SOBRI FAUZAN, S.Pd.I, M.Pd.I', '197402082005011009', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI, pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(114, 'ZAINUL ARIFIN, S.Ag.,M.Pd.I', '197610252005011004', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(115, 'AHMAD FAUZI, S.Pd.I', '197207202005011002', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda PAI TK/SD Pada Kecamatan Silo dan Ledokombo Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(116, 'ROBBY SADHA SIREGAR, S.Pd.I ,.M.Pd.I', '198112242005011005', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(117, 'YUYUN ISNAWATI, S.Pd.I, M.Pd.I', '198208122005012003', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(118, 'MARSUDI S.Pd.I,M.Pd.I', '196905262000031009', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda RA/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(119, 'RIZA NINGRUM, S.Pd.I ,.M.Pd.I', '198406132005012001', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(120, 'MUHAMMAD ISMAIL, S.Pd.I, M.Pd.I', '198108222005011008', 'III/d', 'Penata TK 1', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Agama Islam, Pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(121, 'FRANSISKUS XAVERIUS YIDDI PURWA MARDIANTA, S.Pd', '197110132000031001', 'III/c', 'Penata', 'Pengawas Sekolah Muda TK/RA/SD/MI Pendidikan Agama Katolik Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(122, 'KHOIRI SOLEH, S.Pd', '197304122003121002', 'III/c', 'Penata', 'Pengawas Sekolah Muda TK/RA/SD/MI Pengawas Pendidikan Madrasah, pada Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(123, 'NURCHASANAH, M.Pd.', '197501062005012001', 'III/c', 'Penata', 'Pengawas Sekolah Muda PAI pada PUD,TK/SD/SDLB di Kecamatan Mayang Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(124, 'AKH ZAINI, S.Pd.I, M.Pd.I', '197702052005011006', 'III/c', 'Penata', 'Pengawas Sekolah Muda PAUD, TK, SD/SDLB di Kecamatan Kalisat Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(125, 'ISTI MUSIFAH, S.Pd.I', '196806152005012002', 'III/c', 'Penata', 'Pengawas Sekolah Muda PAI pada PAUD,TK/SD/SDLB di Kecamatan Mayang Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(126, 'SUSILOWATI, S.Pd.I', '197012282005012003', 'III/c', 'Penata', 'Pengawas Sekolah Muda PAUD, TK, SD/SDLB Pada Kecamatan Pakusari Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(127, 'SITI HERIYAH, S.Pd.I', '196908082000032001', 'III/c', 'Penata', 'Pengawas Sekolah Muda RA/MI Kec. Tanggul Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(128, 'LISBINANTIN, S.Pd.', '197002232005012001', 'III/c', 'Penata', 'Pengawas Sekolah Muda pada MTsN 2 Jember Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(129, 'WAHYU NUR INDAH, S.Pd.I', '197808282005012004', 'III/c', 'Penata', 'Pengawas Sekolah Muda PAI pada PAUD,TK/SD/SDLB di Kecamatan Sukorambi Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(130, 'NADIRATUL LAILY, M.Pd.', '197208032006042004', 'III/c', 'Penata', 'Pengawas Sekolah Muda RA/MI Kecamatan Arjasa Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(131, 'AGUSTIN FARIDA, S.Pd.', '196907181989032002', 'III/d', 'Penata TK 1', 'Pengadministrasi KUA Kec. Ajung Kabupaten Jember Provinsi Jawa Timur'),
(132, 'MUHAMMAD SUBKHAN ZAEN, SH', '197107301992031003', 'III/c', 'Penata', 'Penghulu Muda/Kepala pada KUA Kec. Ajung Kabupaten Jember Provinsi Jawa Timur'),
(133, 'PURWADI, SH.', '196602032014111001', 'III/a', 'Penata Muda', 'Pengadministrasi KUA Kec. Ajung Kabupaten Jember Provinsi Jawa Timur'),
(134, 'MUHAMMAD ERFAN, SH.', '196204091990031002', 'III/d', 'Penata TK 1', 'Penghulu Muda/Kepala pada KUA Kec. Ambulu Kabupaten Jember Provinsi Jawa Timur'),
(135, 'ARIF HARYONO?', '196804201993031004', 'III/b', 'Penata Muda TK 1', 'Pengadministrasi KUA Kec. Ambulu Kabupaten Jember Provinsi Jawa Timur'),
(136, 'ARIS CAHYONO A.Ma.', '197610032005011004', 'II/c', 'Pengantar', 'Pengadministrasi pada KUA Kec. Ambulu Kabupaten Jember Provinsi Jawa Timur'),
(137, 'PURWADI S.Pd.I., M.H.', '196606081989031001', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(138, 'SAMSUL?', '196508272007011022', 'II/c', 'Pengantar', 'Petugas Ketatausahaan dan Kerumahtanggaan pada KUA Kec. Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(139, 'MOHAMAD HAZIN?', '197007202014111002', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(140, 'KUSNAN WINARDI, SH, S.Sos, Msi', '196903241991031001', 'IV/a', 'Pembina', 'Kepala KUA Kec. Balung Kabupaten Jember Provinsi Jawa Timur'),
(141, 'M JAMAL LUTFI?', '196712251992031001', 'III/b', 'Penata Muda TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Balung Kabupaten Jember Provinsi Jawa Timur'),
(142, 'MUHAMMAD BASORI, S.Ag.', '197101012014111006', 'III/a', 'Penata Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Balung Kabupaten Jember Provinsi Jawa Timur'),
(143, 'Drs. EKO HADI SUNARJOKO, M.HI', '196206071998031001', 'IV/a', 'Pembina', 'Kepala KUA Kec. Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(144, 'RIDWAN HAFIDZ?', '196110042014111001', 'II/c', 'Pengantar', 'Pengadministrasi KUA Kec. Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(145, 'ABDUL AZIS, SH', '196507171989031003', 'III/c', 'Penata', 'Kepala KUA Kec. Gumukmas Kabupaten Jember Provinsi Jawa Timur'),
(146, 'KHAIRUL ANAM?', '197210042009011008', 'II/b', 'Pengantar Muda TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Gumukmas Kabupaten Jember Provinsi Jawa Timur'),
(147, 'SUDIYONO?', '196507032014111002', 'I/c', 'Juru', 'Pengadministrasi pada KUA Kec. Gumukmas Kabupaten Jember Provinsi Jawa Timur'),
(148, 'Drs. ISNAN HM, MEI', '196604031998031002', 'IV/a', 'Pembina', 'Kepala KUA Kec. Janggawah Kabupaten Jember Provinsi Jawa Timur'),
(149, 'YUNUS ARIF?', '196807271989031002', 'III/b', 'Penata Muda TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Janggawah Kabupaten Jember Provinsi Jawa Timur'),
(150, 'SUYONO?', '198105012007011010', 'II/c', 'Pengantar', 'Penyuluh Agama, pada KUA Kecamatan Janggawah Kab. Jember Prov. Jawa Timur'),
(151, 'ACHMAT SAEKONI?', '196806232014111003', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan pada KUA Kec. Janggawah Kabupaten Jember Provinsi Jawa Timur'),
(152, 'MULYADI, S.HI, M. Ag?', '198004172005011007', 'III/d', 'Penata TK 1', 'Penghulu Muda/Kepala pada KUA Kec. Jeblug Kabupaten Jember Provinsi Jawa Timur'),
(153, 'MISBAH?', '196706082007011045', 'II/c', 'Pengantar', 'Pengadministrasi pada KUA Kec. Jeblug Kabupaten Jember Provinsi Jawa Timur'),
(154, 'ADNAN WIDODO S.Ag, M. HI', '197303112003121004', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Jombang Kab. Jember Provinsi Jawa Timur'),
(155, 'IRHAMNI S.Ag', '197901312009102001', 'III/b', 'Penata Muda TK 1', 'Penyuluh Agama Islam Pertama pada KUA Kec. Jombang Kabupaten Jember Provinsi Jawa Timur'),
(156, 'HERI SUFYANDI?', '196407061994031001', 'III/b', 'Penata Muda TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Jombang Kabupaten Jember Provinsi Jawa Timur'),
(157, 'SUBARI, SH', '196511081991031001', 'III/d', 'Penata TK 1', 'Penghulu Muda/Kepala pada KUA Kec. Kalisat Kabupaten Jember Provinsi Jawa Timur'),
(158, 'MOHAMMAD ZAENURI, S.Ag., M.Pd.I', '197109172005011003', 'III/c', 'Penata', 'Penyuluh Agama pada KUA Kec. Kalisat Kabupaten Jember Provinsi Jawa Timur'),
(159, 'M.C. SAIFUL?', '196209082014111001', 'I/c', 'Juru', 'Pengadministrasi KUA Kec. Kalisat Kabupaten Jember Provinsi Jawa Timur'),
(160, 'SYARIF HIDAYAT, SH.,M.HI', '196606061987031001', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Kaliwates Kabupaten Jember Provinsi Jawa Timur'),
(161, 'RIRIN ATHIFATUL UMAM, S.Ag', '197811222002122003', 'IV/a', 'Pembina', 'Penyuluh Agama Islam Madya pada KUA Kec. Kaliwates Kabupaten Jember Provinsi Jawa Timur'),
(162, 'FARIDA BRILYANTINA?', '196112111990012001', 'III/b', 'Penata Muda TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Kaliwates Kabupaten Jember Provinsi Jawa Timur'),
(163, 'MULTAZAM, S.E.I', '198003072009101002', 'III/a', 'Penata Muda', 'Penghulu Pertama KUA Kec. Kaliwates Kabupaten Jember Provinsi Jawa Timur'),
(164, 'MUHAMMAD FARICH MAKMUR, S.Sos.,M.Sy.', '196912131992031001', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Kencong Kabupaten Jember Provinsi Jawa Timur'),
(165, 'MUHAMMAD HARIYADI S. Ag', '197306042000031003', 'IV/a', 'Pembina', 'Penyuluh Agama Madya KUA Kec. Kencong Kabupaten Jember Provinsi Jawa Timur'),
(166, 'AKHMAD SOLEH S. Pd. I', '196804111991031004', 'III/c', 'Penata', 'Penghulu Muda pada KUA Kec. Kencong Kabupaten Jember Provinsi Jawa Timur'),
(167, 'HERIK HARTONO?', '198305102014111003', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Kencong Kabupaten Jember Provinsi Jawa Timur'),
(168, 'ABDUL KHAMID, S.Ag', '197001052000031003', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Ledokombo Kabupaten Jember Provinsi Jawa Timur'),
(169, 'BURHANUDDIN, S.Pd.I', '197701082005011003', 'III/c', 'Penata', 'Penghulu Pertama KUA Kec. Ledokombo Kabupaten Jember Provinsi Jawa Timur'),
(170, 'DIDIK KURNIAWAN, S.Ag', '197110262006041001', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Mayang Kabupaten Jember Provinsi Jawa Timur'),
(171, 'LA GANI SIOMPO S.Ag', '197005272006041009', 'III/c', 'Penata', 'Penyuluh Agama Muda pada KUA Kec. Mayang Kabupaten Jember Provinsi Jawa Timur'),
(172, 'SAMSUL ARIFIN, S.Ag', '196205042014111002', 'III/a', 'Penata Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Mayang Kabupaten Jember Provinsi Jawa Timur'),
(173, 'AMIN?', '196712032014111001', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada KUA Kec. Mayang Kabupaten Jember Provinsi Jawa Timur'),
(174, 'ABDULLAH SH, M.HI', '196709281993031003', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Mumbulsari Kabupaten Jember Provinsi Jawa Timur'),
(175, 'ABD HAMID?', '198103032007101001', 'II/c', 'Pengantar', 'Pengadministrasi KUA Kec. Mumbulsari Kabupaten Jember Provinsi Jawa Timur'),
(176, 'SUBHAN, S.Ag, M.Sy.', '197802232000031002', 'IV/a', 'Pembina', 'Kepala KUA Kec. Pakusari Kabupaten Jember Provinsi Jawa Timur'),
(177, 'CECEP HENDRIK ADIATNA S.AG', '197601192007011017', 'III/c', 'Penata', 'Penyuluh Agama Muda pada KUA Kec. Pakusari Kabupaten Jember Provinsi Jawa Timur'),
(178, 'SUPANDI?', '196601012014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Pakusari Kabupaten Jember Provinsi Jawa Timur'),
(179, 'SALAMON, SH.,M.HI', '196306271989031006', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Panti Kabupaten Jember Provinsi Jawa Timur'),
(180, 'TUTIK HIDAYATI S.Ag', '197204082009012002', 'III/c', 'Penata', 'Penyuluh Agama Muda KUA Kec. Panti Kabupaten Jember Provinsi Jawa Timur'),
(181, 'Drs. ABDULLAH, M.HI', '196112271993031001', 'IV/a', 'Pembina', 'Kepala KUA Kec. Patrang Kabupaten Jember Provinsi Jawa Timur'),
(182, 'NASOKAH, SH', '196107051990031003', 'III/d', 'Penata TK 1', 'Penghulu Muda pada KUA Kec. Patrang Kabupaten Jember Provinsi Jawa Timur'),
(183, 'AHMAD SYA\'RONI, S.Ag', '197605042009011006', 'III/c', 'Penata', 'Penyuluh Agama Pertama pada KUA Kec. Patrang Kabupaten Jember'),
(184, 'MUHAMMAD ALIYURIDHO?', '197205262014111001', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Patrang Kabupaten Jember Provinsi Jawa Timur'),
(185, 'RUFIAH?', '196601082014112002', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Patrang Kabupaten Jember Provinsi Jawa Timur'),
(186, 'Drs. ABDUL MUDJIB, M. HI', '196907032001121001', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Puger Kabupaten Jember Provinsi Jawa Timur'),
(187, 'CHOLIL S. Pd.I., M.Sy.', '198407192005011001', 'III/c', 'Penata', 'Penghulu Muda pada KUA Kec. Puger Kabupaten Jember Provinsi Jawa Timur'),
(188, 'MUDHAR?', '196409052014111001', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Puger Kabupaten Jember Provinsi Jawa Timur'),
(189, 'M. MU`MIN KAMIL?', '198608302014111003', 'I/c', 'Juru', 'Pengadministrasi KUA Kec. Puger Kabupaten Jember Provinsi Jawa Timur'),
(190, 'LILIK UMU HANIK S,Ag', '197204142005012001', 'IV/a', 'Pembina', 'Penyuluh Agama Islam Madya pada KUA Kec. Rambipuji Kabupaten Jember Provinsi Jawa Timur'),
(191, 'MUHAMMAD SAIFUL HADI SH. M.Sy', '196803111994031003', 'III/d', 'Penata TK 1', 'Penghulu Muda/Kepala pada KUA Kec. Rambipuji Kabupaten Jember Provinsi Jawa Timur'),
(192, 'MUHAMMAD SOLEH, S.Sos.', '197310102007011043', 'III/b', 'Penata Muda TK 1', 'Pengadministrasi pada KUA Kec. Rambipuji Kabupaten Jember Provinsi Jawa Timur'),
(193, 'BUDI HARSONO?', '196809232014111001', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Rambipuji Kabupaten Jember Provinsi Jawa Timur'),
(194, 'MURSYID, SH.M.HI', '196706301993031002', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Selo Kabupaten Jember Provinsi Jawa Timur'),
(195, 'KIKI SUNARJAT BASUKI S.HI., M.Sy.', '198001232006041001', 'III/b', 'Penata Muda TK 1', 'Penghulu Pertama pada KUA Kec. Silo Kabupaten Jember Provinsi Jawa Timur'),
(196, 'ZAENAL ARIFIN, S.Ag. M.Sy.', '197105101998031006', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Semboro Kabupaten Jember Provinsi Jawa Timur'),
(197, 'Drs, MOH. SAIFUL AMIN, M.HI', '196405182000031001', 'IV/a', 'Pembina', 'Penyuluh Agama Madya pada KUA Kec. Semboro Kabupaten Jember Provinsi Jawa Timur'),
(198, 'YUNI ADRIANI, S.Pd.', '198006212005012003', 'III/d', 'Penata TK 1', 'Pengadministrasi pada KUA Kecamatan Sembor Kantor Kementerian Agama Kab. Jember Prov. Jawa Timur'),
(199, 'ACHMAD RIDWAN?', '197104222014111002', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Semboro Kabupaten Jember Provinsi Jawa Timur'),
(200, 'M CHOIRUL ANWAR S. HI, M. HI', '198102122005011003', 'IV/a', 'Pembina', 'Kepala KUA Kec. Sukorambi Kabupaten Jember Provinsi Jawa Timur'),
(201, 'IDA KHORIDAH HAURIYAH, S. Ag.', '196806142000032001', 'IV/a', 'Pembina', 'Penyuluh Agama Islam Madya pada KUA Kec. Sukorambi Kabupaten Jember Provinsi Jawa Timur'),
(202, 'DWI INDAH SULISTYANI, S.Pd', '197509021998032001', 'III/d', 'Penata TK 1', 'Pengadministrasi pada KUA Kec. Sukorambi Kementerian Agama Kab. Jember'),
(203, 'ABDUL GHOFUR, S.Ag, M.Sy', '197808252000121004', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(204, 'SUMARTO?', '196412262007011010', 'II/c', 'Pengantar', 'Pengadministrasi KUA Kec. Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(205, 'Drs. AKSEN NURUL HAQ, M.HI', '196611251989031004', 'IV/a', 'Pembina', 'Kepala KUA Kec. Sumberbaru Kabupaten Jember Provinsi Jawa Timur'),
(206, 'MUHAMMAD IBNU HAJAR MAKI, S.EI, M.HI', '198011072005011002', 'III/d', 'Penata TK 1', 'Penghulu Muda pada KUA Kec. Sumberbaru Kabupaten Jember Provinsi Jawa Timur'),
(207, 'SUBHAN AIDIY?', '197801022014111003', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Sumberbaru Kabupaten Jember Provinsi Jawa Timur'),
(208, 'MOHAMMAD AMINUDIN HARIANA?', '197510052014111006', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Sumberbaru Kabupaten Jember Provinsi Jawa Timur'),
(209, 'MUHAMMAD IZUDIN S,Ag, M.HI', '197802202005011005', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Sumberjambe Kabupaten Jember Provinsi Jawa Timur'),
(210, 'DARA QUTHNI, S.Ag, M, Ag', '197610072006041003', 'III/d', 'Penata TK 1', 'Penghulu Muda pada KUA Kec. Sumberjambe Kabupaten Jember Provinsi Jawa Timur'),
(211, 'MOCH. RIDAWI, S. Ag., M.Sy', '197204082000031002', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(212, 'R. A. RUFIATUS NUR NUSIYAH?', '196102161982032001', 'III/d', 'Penata TK 1', 'Pengadministrasi KUA Kec. Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(213, 'SITA DELILAH SUSANTI S.Sos I', '197907072003122003', 'III/d', 'Penata TK 1', 'Penyuluh Agama Muda pada KUA Kec. Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(214, 'RUDI BAWONO, SE', '196804171990011001', 'III/c', 'Penata', 'Petugas Ketatausahaan dan Kerumahtanggaan pada KUA Kec. Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(215, 'KUSNO, S.Ag., M.Pd.I', '197207021993031003', 'IV/a', 'Pembina', 'Penghulu Madya/Kepala pada KUA Kec. Tanggul Kabupaten Jember Provinsi Jawa Timur'),
(216, 'YAUMIL HIKMAH SY. S.H.I.', '197807262014112003', 'III/a', 'Penata Muda', 'Penyuluh Agama, pada KUA Kec. Tanggul Kabupaten Jember Provinsi Jawa Timur'),
(217, 'ABDULLAH?', '197503082014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada KUA Kec. Tanggul Kabupaten Jember Provinsi Jawa Timur'),
(218, 'Drs. YUSRON BARID?', '196601311994031001', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Tempurejo Kabupaten Jember Provinsi Jawa Timur'),
(219, 'HASINUDDIN, S.FiL.I., M.Sy.', '198209152009011008', 'III/d', 'Penata TK 1', 'Penyuluh Agama Muda Seksi Bimbingan Masyarakat Islam Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur pada KUA Kec. Tempurejo Kabupaten Jember Provinsi Jawa Timur'),
(220, 'NURUL HUDA?', '196703082014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Tempurejo Kabupaten Jember Provinsi Jawa Timur'),
(221, 'MOH ZUHAL KHUMAIDI SH', '196604251990031002', 'III/d', 'Penata TK 1', 'Kepala KUA Kec. Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(222, 'ASMUNI, S.Ag', '196911222006041008', 'III/c', 'Penata', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(223, 'ZAINUL ABIDIN?', '197308022014111001', 'II/a', 'Pengantar Muda', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(224, 'Drs. SULTON NUDIN, M. HI', '196604082000031002', 'IV/a', 'Pembina', 'Kepala KUA Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(225, 'SITI SULIKAH, S.Pd.I, M.Pd.I', '196212081987032003', 'III/d', 'Penata TK 1', 'Petugas Ketatausahaan dan Kerumahtanggaan KUA Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(226, 'IKMAL MUNTADHOR, S.HI, M.Sy', '198004182009011008', 'III/c', 'Penata', 'Penghulu Muda pada KUA Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(227, 'TAUFIQUROHMAN?', '196511072014111005', 'II/a', 'Pengantar Muda', 'Pengadministrasi KUA Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(228, 'Drs. ASYHAR, M.Pd.I', '196704241997031003', 'IV/b', 'Pembina TK 1', 'Guru Madya / Kepala MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(229, 'Dra SRI NURHAYATI?', '196304151992032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Pendidikan Agama Islam (PAI), pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(230, 'RIRIN INDRAYATI. S. Pd', '197209171998032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Kewarganegaraan, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(231, 'SRI HIDAYATI S.Pd.,M.M.Pd.', '197103152000122001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Kimia, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(232, 'SUPRIYADI, S.Pd', '197209212003121002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Fisika, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(233, 'Drs. MUH. MUHRIZIN, M.Pd.I', '196903302003121001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi BP/Konseling, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(234, 'I. MUSTHOFA ZUHRI S. Ag., M.Pd.I', '197201012002121006', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Aqidah Akhlaq, Al-Qur\'an Hadits pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(235, 'DINA SOFIA, S.Pd.', '198103042005012002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa dan Sastra Indonesia, pada pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(236, 'G. ARIS SULISTIYORINI S.Pd.', '197008312005012004', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Ekonomi, pada pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(237, 'BUDI SANTOSA, S.Pd', '197210102005011005', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi PPKN, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(238, 'IMAM HANAFI S.Pd', '196805162005011001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Indonesia, pada pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(239, 'SITI NURFADILAH S. Ag', '197110292000032002', 'III/d', 'Penata TK 1', 'Guru Muda MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(240, 'BIBIT WAHYUNINGSIH, S.Pd', '198006052005012009', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Biologi, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(241, 'LUTHFI MAWADDAH, S.Pd.', '197708222005012008', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Inggris, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(242, 'SITI TRI SUTARTI, S.Pd.', '197211142005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(243, 'ASRI PURWANINGSIH, S.Pd', '197810052006042019', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fisika, pada pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(244, 'MOKHAMMAD JUNAIDI, S.Pd', '197401232006041008', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Penjaskes, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(245, 'KASWORO, S.Pd', '197204162006041008', 'III/c', 'Penata', 'Guru Muda Bidang Studi Kimia pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(246, 'MOH. MUHTADI, S.Pd', '197001012005011005', 'III/c', 'Penata', 'Guru Muda Bidang studi Penjaskes pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(247, 'ABDULLAH, S.Pd.I', '197110252005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(248, 'Dra. SITI MUNASIKAH?', '196407142007012019', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(249, 'ELI RACHMAWATI S.Pd', '198310252005012002', 'III/c', 'Penata', 'Guru Muda Bidang studi Matematika, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(250, 'Dra. SRI SUHARWATI?', '196706082007012024', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(251, 'IMAM SYAHRONI, S.Pd.', '198309202009011007', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(252, 'HENI HIDAYATI, S.Pd', '197904082007102002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Biologi pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(253, 'SUPRIYADI S.Pd', '197203092007101003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Kimia Pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(254, 'Dra. SHOLIHAH?', '196909172007102001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(255, 'ZIDNI ILMA S.Ag', '197701202007102003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Arab, pada MAN 3 Jember kabupaten Jember Provinsi Jawa Timur'),
(256, 'ISMAIL, S.Pd.I', '196208042007011015', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Sejarah Kebudayaan Islam pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(257, 'SLAMET SAHRUDIN, S.Pd', '198206222011011004', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Sejarah Nasional, pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(258, 'MUHAMMAD MUKHSYIR?', '197106032009011007', 'II/b', 'Pengantar Muda TK 1', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(259, 'IMAM SYAFI\'I?', '196708202014111001', 'II/a', 'Pengantar Muda', 'Guru pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(260, 'SITI NUR HASANAH?', '197412172014112001', 'II/a', 'Pengantar Muda', 'Guru Bidang studi Fiqih pada MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(261, 'LILIK KHOBIBAH, S.Pd', '196508211991032003', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(262, 'ASRI QURNIAWATI, SE', '198007172007012025', 'III/a', 'Penata Muda', 'Bendahara Penerimaan/Pengeluaran pada Urusan Tata Usaha MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(263, 'SURYANTO SE', '197112052007011025', 'III/a', 'Penata Muda', 'Pengelola BMN pada Urusan Tata Usaha MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(264, 'SRI MUJAYATI?', '198011092007012017', 'II/c', 'Pengantar', 'Penyusun Program Anggaran dan Pelaporan pada Urusan Tata Usaha MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(265, 'MASHURI?', '196910052014111003', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada Urusan Tata Usaha MAN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(266, 'AINUL FITROH, S.Pd', '196402201987032001', 'IV/b', 'Pembina TK 1', 'Guru Madya Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(267, 'Drs. MARTHIUS AFFANDY?', '196103231989031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPS pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(268, 'Drs. M. HUSAIN TUANAYA, M.Ag', '196303121991031004', 'IV/a', 'Pembina', 'Guru Madya Sejarah Kebudayaan Islam MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(269, 'Drs. RICO ASIKIN, M.Pd', '196307261992031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(270, 'Drs. TUGI HARTONO?', '196306261991031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Keterampilan, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(271, 'Drs. ANWARUDIN?', '196508121994031002', 'IV/a', 'Pembina', 'Guru Utama / Kepala Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(272, 'Drs. AGUS SUYATNO?', '196508051994031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi BP/Konseling, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(273, 'Drs. ALI AL MUTA\'SIM, M.Pd', '196601011993031005', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Kimia, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(274, 'ALI QOMARUL ZAMAN, S.Pd', '196908041996031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Olah Raga, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(275, 'Drs. MAHMUDI, M.Pd', '196707171995031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Fisika pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(276, 'Drs. SUPARNO?', '196308111994031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(277, 'Dra. ENY PURWATI?', '196702051995032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(278, 'Drs. MUHAMAD NATSIR?', '196801231995031002', 'IV/a', 'Pembina', 'Guru Pembina'),
(279, 'Drs. SATIMAN?', '196808221995031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Fisika pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(280, 'Drs. DARDIRI?', '196304091996031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Indonesia (Sekolah), pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(281, 'HUMAIDAH AINI, S.Pd', '196910141997032002', 'IV/a', 'Pembina', 'Guru Dewasa Tk.I Bidang Studi Biologi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(282, 'RETNO WAHYUNI, S.Pd', '197304061998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Kimia, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(283, 'BUARI, S.Pd', '196707141998031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(284, 'RODHIYAH S.Pd', '196909191998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(285, 'Drs MUHAMMAD NATSIR AL FIRDAUS?', '196907101997031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(286, 'YURIADI, S.Pd', '197104031998031004', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Sejarah Nasional, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(287, 'NUR KOLIS, S.Pd., M.Sc.', '197107231997031004', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(288, 'KANADA, S.Pd', '197207041999031003', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Keterampilan Otomotif pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(289, 'MOH. TAROM S.Pd', '196911201999031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Keterampilan, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur');
INSERT INTO `data_pegawai` (`id_pegawai`, `nama`, `nip`, `gol`, `pangkat`, `jabatan`) VALUES
(290, 'Dra. HIKMAH?', '196301131998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Indonesia (Sekolah), pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(291, 'NELY DAMAYANTY, S,Pd', '197008301998032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Ekonomi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(292, 'Drs BOGIE AGUS GIANTO?', '196608102000031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Kimia, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(293, 'MAMIK ISGIYANTI, S,Pd', '197109202005012001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi PPKN, pada pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(294, 'RARAS INDRIYANI, S.Pd.', '197601272005012004', 'IV/a', 'Pembina', 'Guru Madya pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(295, 'ADE SA\'DIYAH S,Pd', '197203102005012001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Sejarah Nasional, pada pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(296, 'SITI ROFIAH, S.Pd.', '197503152005012003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Indonesia, pada pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(297, 'Drs. KHUSNUL HUDA?', '196510062001121001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(298, 'EKO SULISTYININGSIH, S.Pd.', '197308062005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(299, 'UMRIYATIN SH', '197101032005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Kewarganegaraan, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(300, 'DEWI RACHMAYANTI, S.Pd.', '197712142005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bahasa Inggris (Sekolah) MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(301, 'SOFIA RATNANINGSIH, S.Pd', '197504162005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fisika pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(302, 'MASLIKAH, S.Pd.', '197709222005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Keterampilan, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(303, 'YUNUS, S.Ag', '197304032005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(304, 'JAMANHURI S.Ag., M.Pd.I.', '197607142005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(305, 'RINA POEJI ASTOETIK, S.Pd', '197606072006042011', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Geografi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(306, 'HADI PRAJITNO, S.Pd.', '197208082005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Penjaskes Pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(307, 'MUHAMMAD MAHFUD, S.Pd', '197302252005011001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(308, 'YUNITA DIRMAYANTI S,Pd', '197606062005012003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Geografi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(309, 'MOCHAMMAD HUSNI THAMRIN S.Pd', '197703032007101002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Keterampilan, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(310, 'AHMAD M.Pd.I', '197104162007101003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Al-Qur\'an Hadits, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(311, 'WAHYU KIRANA DEWI S.Pd', '197709082007102003', 'III/c', 'Penata', 'Guru Pertama Bahasa Inggris (Sekolah) MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(312, 'FITRIA CANDRA, S.Pd', '198407042009012006', 'III/c', 'Penata', 'Guru Muda Bidang Studi Ekonomi, pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(313, 'EMI SRIWIJAYANTI SE', '197304212007102003', 'III/c', 'Penata', 'Guru Muda MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(314, 'BUDI SANTOSO, S.Pd.', '196202052014111001', 'III/a', 'Penata Muda', 'Guru Pertama pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(315, 'DRA. LILIK SUHARTINI?', '196808152014112002', 'III/a', 'Penata Muda', 'Guru Pertama pada MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(316, 'SAIFUDDIN?', '196907272014111002', 'III/a', 'Penata Muda', 'Guru Pertama MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(317, 'INDRA RUDIANTO, SH', '196211131994031001', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(318, 'BAMBANG ADI SUCIPTO, S.Si', '198002012006041001', 'III/d', 'Penata TK 1', 'Pengadministrasi pada Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(319, 'HENDRA GANDA SUNDARTA, M.P', '197811042009101002', 'III/c', 'Penata', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(320, 'TAUFIQUR RAHMAN?', '197504191998031001', 'III/b', 'Penata Muda TK 1', 'Penyusun Program Anggaran dan Pelaporan pada Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(321, 'SITI MARATUL HOLISAH S.Sos', '197303031998032002', 'III/b', 'Penata Muda TK 1', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(322, 'AHMAD SYAHIRUL ALIM FIKRI, A.Md', '198004192009101002', 'III/a', 'Penata Muda', 'Bendahara Penerimaan/Pengeluaran pada Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(323, 'SUDAR?', '196303082007011020', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(324, 'RIFAI?', '197209262009101001', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(325, 'LUSIANAH?', '197407022009012005', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(326, 'MUHAMMAD SAUKI?', '197407232009011009', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(327, 'MASRUD?', '197008182007011032', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(328, 'SITI ASYIZAH?', '197710032009102001', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(329, 'RASMAN?', '197104112009011003', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(330, 'ABDUL HALIM?', '196407272014111002', 'I/a', 'Juru Muda', 'Pengadministrasi pada Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(331, 'ABDUL AZIS?', '196409032014111003', 'I/a', 'Juru Muda', 'Pengadministrasi pada Urusan Tata Usaha MAN 1 Jember Kabupaten Jember Provinsi Jawa Timur'),
(332, 'Drs. SUHARNO, M.Pd.I', '196804081996031004', 'IV/b', 'Pembina TK 1', 'Guru Madya / Kepala MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(333, 'Dra. JUNI HERMAWATI?', '196606011995032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(334, 'Dra. KODARIAH MARDIANA?', '196811191994032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(335, 'YA SALAM, S.Pd?', '197001011997031002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Fisika, pada pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(336, 'Dra. DWIASIH HENIASTUTI?', '197003221997032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(337, 'Dra. SARIFAH INDIANA?', '196806071998032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(338, 'ENIKE KUSUMAWATI, S.Pd', '197206201997032001', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Fisika, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(339, 'Drs. SUGENG CAHYONO?', '196507281999031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Sejarah Nasional, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(340, 'Drs. IMAM NAWAWI?', '196501011994031002', 'IV/a', 'Pembina', 'Guru Madya Biologi MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(341, 'HERI WIDODO, S.Pd., MM', '196907172001121001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(342, 'ATMAM LAILI, S.Ag', '197712042003121002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(343, 'Dra. ELIS BARIROH?', '196904182005012003', 'III/d', 'Penata TK 1', 'Guru Muda MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(344, 'IKA IFFAH ILMIAH, S.Pd', '197710312005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Kimia, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(345, 'MOH. HOSEN, S.Pd.I', '197701012005011006', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Al-Qur\'an Hadits, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(346, 'HADI NA\'IM, S.Pd, M.Si', '197704102005011005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Ekonomi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(347, 'RITA ZAHARA, S.Pd.', '197611142005012003', 'III/d', 'Penata TK 1', 'Guru Muda Geografi MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(348, 'SUWANDI, S.Pd.,M.Si', '197108112005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(349, 'AINUL ILMI UTIYAD DAROJAH, S.Pd.', '197901132005012004', 'III/d', 'Penata TK 1', 'Guru Muda bidang Studi Matematika pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(350, 'GIMAN S.Pd', '196902122007011037', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Ekonomi, pada pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(351, 'MUNADIROH, S.Pd', '197402102006042007', 'III/c', 'Penata', 'Guru Muda Biologi MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(352, 'LUQMANUL HAKIM, S.Ag', '197210102006041006', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Arab pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(353, 'IDA ARIANI S.Pd.', '196904132007012033', 'III/c', 'Penata', 'Guru Muda Bidang Studi Ekonomi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(354, 'Drs. ASRORI?', '196711072007011016', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(355, 'NUR HIDAYAT S.Pd', '197406252007011033', 'III/c', 'Penata', 'Guru Muda Bidang Studi Teknik Informatika dan Komunikasi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(356, 'KHOIRUL ANJARWATI S.Th.I.,S.Pd', '197804082007102001', 'III/c', 'Penata', 'Guru Muda Bidang Studi BP/Konseling, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(357, 'WAHMAN SUMANJAYA S.Pd', '196602172005011003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Olah Raga dan Kesehatan, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(358, 'MOH. KHAIRUL ANAM, SE', '197109212007101003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Ekonomi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(359, 'ERNY SRIWIDIAWATI SE', '197408222007102001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Ekonomi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(360, 'JOKO PURNOMO, S.Pd.', '197102222007011021', 'III/c', 'Penata', 'Guru Muda Bidang Studi Kimia, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(361, 'TITIK MURNIYATIM, S.Si', '198011022009012007', 'III/c', 'Penata', 'Guru Muda Bidang Studi Kimia, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(362, 'RISKA DAMAYANTI FITRIANA S.Pd', '198207272007102006', 'III/c', 'Penata', 'Guru Muda Bidang Studi Ekonomi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(363, 'TIEN LUTFIA, S.Pd', '197309032007012012', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(364, 'A. MAHDI S.Pd.I', '197406012007101005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(365, 'DWI ISTI MU\'ALIMAH, S.Pd', '198112232009012006', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Inggris, pada pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(366, 'DYANA SUMIYANTO S.Pd., M.Pd', '197504292007102001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Sosiologi, pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(367, 'Drs. GATOT SOEWANDIONO?', '196212302014111001', 'III/a', 'Penata Muda', 'Guru Pertama Bidang Studi Sosiologi, pada pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(368, 'MASHUR?', '197401012014111003', 'II/a', 'Pengantar Muda', 'Guru pada MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(369, 'BAMBANG SUHARTO S.Sos., M.Sy.', '196604271986031001', 'IV/a', 'Pembina', 'Kepala Urusan Tata Usaha MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(370, 'HARIYANTO, SH', '196612252007011035', 'III/b', 'Penata Muda TK 1', 'Pengelola BMN Urusan Tata Usaha MAN 2 Jember Kabupaten Jember'),
(371, 'ELIANA?', '198302252003122003', 'III/a', 'Penata Muda', 'PELAKSANA'),
(372, 'RATNADI?', '198010272009011003', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(373, 'M. NAJMUR ROSYID?', '198412052009011006', 'II/c', 'Pengantar', 'Bendahara Penerimaan/Pengeluaran Urusan Tata Usaha MAN 2 Jember'),
(374, 'SITI MUNAWAROH?', '197304092009012003', 'II/c', 'Pengantar', 'Pengelola Administrasi dan Dokumentasi Urusan Tata Usaha MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(375, 'ASMARI?', '197609142007011016', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MAN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(376, 'ESTI SRI REDJEKI?', '196511042014112003', 'II/a', 'Pengantar Muda', 'Pengadministrasi Pada Urusan Tata Usaha MAN 2 Jember'),
(377, 'NUR ALIYAH, S. Pd.', '197204191998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPA, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(378, 'Dra. SITI KURIATUL JANNAH?', '196505161993032004', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Aqidah Akhlaq, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(379, 'IHSANUDDIN, S.Pd', '197108081999031004', 'IV/a', 'Pembina', 'Guru Madya / Kepala Bidang Studi IPA, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(380, 'RHENY INDAHARI, S.Pd', '197011141999032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPA, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(381, 'AKHMAD KUSNAN S.Pd', '197107202003121001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(382, 'Drs. SARTO PRAWOTO?', '196810102005011004', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(383, 'Drs. JUNAEDI M.Pd.I', '196602152005011002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi BP/Konseling, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(384, 'ENI SITI NURHAYATI S.Pd., M.Pd.I', '197512011999032002', 'IV/a', 'Pembina', 'Guru Muda Bidang Study Bahasa Indonesia pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(385, 'RUHANA QUDUS NURYASIN, S.Pd.', '198005012005012008', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Matematika, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(386, 'SUBHAN, S.Ag', '197812112005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Al-Qur\'an Hadits, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(387, 'Dra. INDAYATI?', '196608252005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(388, 'MOHAMMAD RIDWAN MUSLIH, S.Pd', '196903162006041002', 'III/d', 'Penata TK 1', 'Guru Muda MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(389, 'SYAIKHUDIN ZUHRI S.Pd', '197003162000121003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Kewarganegaraan, pada'),
(390, 'MOHAMAD NUR ROHMAN, S.Pd, MM. Pd.', '198301012005011013', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Ingris pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(391, 'LASIYO, S.Pd.', '196711212005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Olah Raga dan Kesehatan Pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(392, 'Dra MASFIYATI?', '196308312006042001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Kewarganegaraan, pada'),
(393, 'WIDODO S.Pd.', '197104152007101002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Indonesia, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(394, 'UMI AZIZAH S.Pd', '198101012007102004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fisika, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(395, 'Dra MIFTAHUL DJANNAH?', '196601082007012020', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Arab, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(396, 'LUKMAN HAKIM S.Pd', '197105222007101001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(397, 'SYAHID S.Pd.', '196712282005011002', 'III/c', 'Penata', 'Bendahara Penerimaan/Pengeluaran MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(398, 'M. NURUL HUDA S.Pd.I', '196908032007011024', 'III/b', 'Penata Muda TK 1', 'Penyusun Program Anggaran dan Pelaporan MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(399, 'ERLIDIANTO?', '198501102009101003', 'III/a', 'Penata Muda', 'Pengadministrasi MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(400, 'DWI UTAMI DEWI?', '197202192007012010', 'III/a', 'Penata Muda', 'Pengelola BMN MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(401, 'SUDIBYO SE', '196401291989031002', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(402, 'NURHIDAYATUL KHUSNIYAH?', '197607241998032007', 'III/b', 'Penata Muda TK 1', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan Urusan Tata Usaha MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(403, 'PURNOMO SIDIQ?', '196603062007011018', 'II/c', 'Pengantar', 'Pengadministrasi Urusan Tata Usaha MTsN Kencong Kabupaten Jember Provinsi Jawa Timur'),
(404, 'Drs SUPARYITNO M.Pd', '196407241992031003', 'IV/b', 'Pembina TK 1', 'Guru Madya / Kepala MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(405, 'SITI ISNAINI NURDININGRUM, S.Pd', '196705151992032004', 'IV/a', 'Pembina', 'Guru Pembina Bahasa Inggris (Sekolah) MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(406, 'MA\'RUF, S.Ag', '196902111998031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Arab, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(407, 'NURUL LAILI, S.Pd', '197208081998032002', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Matematika, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(408, 'Dra. USWATUN HASANAH?', '196908052000032005', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Sejarah Kebudayaan Islam, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(409, 'Drs. HASIT, M.Pd.I', '196705272005011002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(410, 'DEFI MASRUROH, S.Ag', '197704142005012002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Aqida Akhlaq pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(411, 'AKHMAD JUNAIDI S,Pd', '197204012005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(412, 'YATIMAN, S.Pd.M.Pd', '196402052003121001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fiqih, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(413, 'EKO BUDI SETIYADI, S.Pd', '197304172005011007', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(414, 'IZZA NUR LAILA, S.Ag.', '197407222005012005', 'III/d', 'Penata TK 1', 'Guru Muda MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(415, 'YUNI HERAWATI, S.Pd.', '197606192005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(416, 'DARMANI, S.Pd', '197212102005011005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(417, 'SOIM, S.Pd.I', '196911102006041001', 'III/c', 'Penata', 'Guru Madya Bidang Studi Bahasa Arab, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(418, 'DRS MOHAMMAD AMENAN?', '196201122006041005', 'III/c', 'Penata', 'Guru Muda Bidang Studi IPA, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(419, 'M. FATKHIS SUUD A.Ma.', '198310302005011001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MTsN Umbulsari Kab.Jember Provinsi Jawa Timur'),
(420, 'SUJARWATI S.Pd', '197007012007012026', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Indonesia, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(421, 'CHUSNUL CHOTIMAH S.Pd', '197506252007102003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi IPA, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(422, 'SITI FATHIMAH S.Pd', '197604052007102007', 'III/c', 'Penata', 'Guru Pertama MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(423, 'IVA AMINATUZ ZUHRIYAH, S.Pd', '197803152007102005', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Indonesia, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(424, 'SUHAIRI S.Ag', '197510022007101002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Arab, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(425, 'SRI HIDAYATI S.Pd', '197212092007102002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi IPA, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(426, 'ANIS SA`ADAH, S.Pd', '197510172007012021', 'III/c', 'Penata', 'Guru Pertama MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(427, 'HERMAWAN SUPRIYADI S.Pd', '198203102007101001', 'III/c', 'Penata', 'Guru Pertama MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(428, 'EMI MASRUROH S.Ag', '197403012007102001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fiqih, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(429, 'AGUS SUPANIADI S.Pd', '197008142009011007', 'III/c', 'Penata', 'Guru Pertama Bidang Studi PPKN, pada MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(430, 'ELIK SETIYANINGSIH?', '198508292009102002', 'III/a', 'Penata Muda', 'Bendahara Penerimaan/Pengeluaran MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(431, 'NIKMATUL UMI?', '198105182007102004', 'III/a', 'Penata Muda', 'Pengelola BMN MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(432, 'YULIA YUSNITA , S.Sos.', '198507272009102002', 'III/a', 'Penata Muda', 'Penyusun Program Anggaran dan Pelaporan MTsN 7 Jember Kabupaten Jember Provinsi Jawa Timur'),
(433, 'MURTAMAT, A.Ma.', '196103102006041006', 'II/d', 'Pengantar TK 1', 'Pengadministrasi MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(434, 'ASYHARI, SE.', '196403291993031001', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MTsN Umbulsari Kabupaten Jember Provinsi Jawa Timur'),
(435, 'AGUS HARIYANTO?', '198101102014111002', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada Urusan Tata Usaha MTsN 7 Jember Kabupaten Jember Provinsi Jawa Timur'),
(436, 'Drs. SYAMSUL MA\'ARIF?', '196307171992031005', 'IV/a', 'Pembina', 'Guru Madya / Kepala pada MTsN 8 Jember Kabupaten Jember Provinsi Jawa Timur'),
(437, 'M. JAZIMUL FADHIL, S.Ag', '197001122000031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Sejarah Kebudayaan Islam, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(438, 'SOFIA CANDRAWATI S.Pd', '197108201998032001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(439, 'ARISATUN NASUHAH S,Pd', '197804262005012005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(440, 'RIRIN SULISTYOWATI S,Pd', '197010122005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(441, 'Dra. MAHMUDAH S?', '196610192006042002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Indonesia Pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(442, 'MOCHAMAD ZOEDIANTO MARTONO, S.Pd.,M.Pd.I', '197006272005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi PKn, Pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(443, 'SUGIMAN, S.Pd', '197706202006041009', 'III/d', 'Penata TK 1', 'Guru Bidang Studi Bahasa Inggris pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(444, 'Dra. INDAH ARIYANI?', '197002082006042001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN 8 Jember Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(445, 'SUYONO S.Pd', '197704222007101002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(446, 'AKSAN HUDORI S.Pd.,M.Pd.I', '197603232007011034', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN, pada MTs Negeri Sumberbaru Kabupaten Jember Provinsi Jawa Timur'),
(447, 'MAISAROH S.Pd.I', '197112192007012010', 'III/c', 'Penata', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(448, 'SITI ASIYA S.Pd', '196905112007012034', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(449, 'MARATUN HASANAH S.Ag', '197708152007102005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(450, 'MUMFARIDAH, S.Ag', '197404062007102005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(451, 'SITI RUKYANI, S.Pd', '197106132007102002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi IPA, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(452, 'MOH. MUNAWIR, S.Pd., M.Pd.I', '197302202007101001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Inggris, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(453, 'WIWIN SUGIHARTATIK, S.Pd', '198108302007102001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Matematika, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(454, 'SYAIFUL HANAN S.Pd.', '196906112007011029', 'III/b', 'Penata Muda TK 1', 'Guru Penjaskes pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(455, 'HESSY SUSANTI, S.Si', '198104062009102001', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Matematika, pada MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(456, 'JUNAIDAH, S.Pd', '197102132006042003', 'III/d', 'Penata TK 1', 'Guru Ilmu Pendidikan Alam Terpadu pada Urusan Tata Usaha MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(457, 'SUKARDI, SH', '196112211998031001', 'III/c', 'Penata', 'Pengadministrasi Urusan Tata Usaha MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(458, 'SAMURI?', '196505071985031005', 'III/b', 'Penata Muda TK 1', 'Kepala Urusan Tata Usaha MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(459, 'IRFAN KHOIRI S.Sos', '198010252009011013', 'III/a', 'Penata Muda', 'Pengelola BMN pada Urusan Tata Usaha MTsN 8 Jember Kabupaten Jember Provinsi Jawa Timur'),
(460, 'WASIATUN?', '196609172007012016', 'II/c', 'Pengantar', 'Bendahara Penerimaan/Pengeluaran Urusan Tata Usaha MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(461, 'SU`ID?', '196807122014111005', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Sumber Baru Kabupaten Jember Provinsi Jawa Timur'),
(462, 'Drs. RIDUWAN?', '196410121991031004', 'IV/a', 'Pembina', 'Guru Madya / Kepala pada MTsN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(463, 'SUWAHID, S.Pd', '197105261997031003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(464, 'MOHAMMAD SOLIKHIN, S.Pd', '196407041994031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(465, 'LULUK INDRAWATI, S.Pd', '196711141994032003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(466, 'HARTINI, S.Pd.', '197105042005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(467, 'AWANG CAHYO DAHONO S,Pd', '197807142005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(468, 'HUSNUL HOTIMAH, S.Pd', '198004022005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(469, 'MUHAMMAD MUJIBUL IMAN S,Pd', '197605032005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Penjaskes, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(470, 'ATIK HISTORINI DWI LESTARI, S.Pd', '197406132005012011', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(471, 'Dra. ANIK SUDARWATI?', '196909012005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(472, 'SRI TAQWIYATI, S.Pd.I.', '197904182005012005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(473, 'DYAH WIJAYANTI S,Pd', '197506172005012006', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(474, 'LINDA AGUSWATI, S.Pd', '196908072005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Inggris pada MTsN 3 Jember Prov. Jawa Timur'),
(475, 'SAIFUL HUDA, S.Pd', '197306232005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(476, 'USWATUN HASANAH S.Pd.I', '196907122005012008', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(477, 'ENDANG ROHMAWATI S.AG', '197107032006042046', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(478, 'SYAIFUR ROHIM S.AG', '196805292007011013', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Arab, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(479, 'ACH SYAIFUL BACHRI S.Ag', '197707072007101005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(480, 'MUTIATUS SAKDIYAH S.Pd.I.', '197710092007102005', 'III/c', 'Penata', 'Guru Muda Bidang Studi SKI, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(481, 'HIJRAH ISNAINI, S.Pd', '198501282009011003', 'III/c', 'Penata', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(482, 'YUDI YUNIDIAN, S.Pd', '197606252007102007', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(483, 'SUYANTO S.Sos.', '196706052007011075', 'III/a', 'Penata Muda', 'Guru Pertama Bidang Studi BP/Konseling, pada pada MTsN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(484, 'NURUL HAYATI, SE.', '196808222014112002', 'III/a', 'Penata Muda', 'Guru Pertama Bidang Studi IPS, pada pada MTsN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(485, 'WILDAN, SE.,M.Si', '196610251988031004', 'IV/a', 'Pembina', 'Kepala Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(486, 'NURUL HIDAYATI S.Sos.', '197602182009102001', 'III/a', 'Penata Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(487, 'TEBI SISWANTO S.Sos.', '196808062007011047', 'III/a', 'Penata Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(488, 'RUDY HARTONO A,Md', '197103152007011020', 'III/a', 'Penata Muda', 'Penyusun Program Anggaran dan Pelaporan Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(489, 'RAHMAD KARSUM S.Sos.', '197503152007011032', 'III/a', 'Penata Muda', 'Bendahara Penerimaan/Pengeluaran Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(490, 'MOKHAMAD KHOTIB?', '196808162009011005', 'II/b', 'Pengantar Muda TK 1', 'Petugas Keamanan Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(491, 'MUKRI?', '196908172014111007', 'I/a', 'Juru Muda', 'Petugas Keamanan Urusan Tata Usaha MTsN Jember 03 Kabupaten Jember Provinsi Jawa Timur'),
(492, 'Drs. SYAIFUL ANWAR, M.Pd', '196410121992031003', 'IV/b', 'Pembina TK 1', 'Guru Madya / Kepala Bidang Studi Bahasa Inggris, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(493, 'EKO PRASTYA HATININGWAN. S S. Pd', '197309131997031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(494, 'Drs. ISKHAQ?', '196007051992031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Fiqih, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(495, 'LULUK ARINIE MUSFIROH, S.Pd', '196803251998032003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Biologi, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(496, 'ARFIYANTI FADILAH, S.Pd', '197507241999032003', 'IV/a', 'Pembina', 'Guru Madya MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(497, 'MASRIYANI S.Pd', '196912161998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(498, 'DYAH MU\'MIROH, S.Pd', '197012161998032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(499, 'AKHMAD HARIRI, S.Pd', '197204082001121002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Penjaskes, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(500, 'ABDULLAH, S.Pd', '196711192005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(501, 'SITI MUNFARIDA, S.Pd.', '197203192005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Biologi, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(502, 'Drs. DARMADJI?', '196510052005011005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(503, 'DEWI ASRI INSYRIA S.Pd', '197305271998032002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada pada MTsN Bangsalsari'),
(504, 'IZZATUL MILLAH, S.Ag. M.Pd.I', '197501292005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fiqih, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(505, 'ANDI WIDODO, S.Pd.', '197001012005011006', 'III/d', 'Penata TK 1', 'Guru Muda MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(506, 'MASYHUDI S.Pd', '197802182005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(507, 'UTAMI DEWI, S.Pd.', '197202232005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Indonesia, pada pada MTsN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(508, 'Drs. SAIFUL FAOZI M.Pd.I', '196610152006041001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(509, 'IROHAN, S.TH.I', '197612012007101003', 'III/c', 'Penata', 'Guru Dewasa Bidang Studi Bahasa Arab, pada MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(510, 'MUHAMMAD ISROK S.Pd', '197005042007011036', 'III/c', 'Penata', 'Guru Muda MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(511, 'AMINAH, S.Pd', '198505312009122008', 'III/b', 'Penata Muda TK 1', 'Guru Pertama MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(512, 'NIYATI, SE', '197701242001122010', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(513, 'NOVI HARIYANTO?', '197711182009101001', 'II/c', 'Pengantar', 'Bendahara Penerimaan/Pengeluaran pada Urusan Tata Usaha MTsN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(514, 'DWI OKTA HARDIYANTO?', '198510222009101001', 'II/c', 'Pengantar', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan pada Urusan Tata Usaha MTsN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(515, 'SUPARDI?', '196606272014111003', 'II/a', 'Pengantar Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(516, 'Ir. HARIYANTO, M.Pd', '196107211990031002', 'IV/c', 'Pembina Utama Muda', 'Guru Madya / Kepala pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(517, 'SRI CHIKMAWATI, S.Ag', '197103041996032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Aqidah Akhlaq, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(518, 'IRNAWATI, S.Pd', '197205071998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Bahasa Inggris pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(519, 'ANI HIDAYATI, S.Pd.', '197801272005012004', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Bahasa Inggris, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(520, 'PALUPI MEDYA ASLAMANINGSIH, S.Pd', '198009042005012002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Matematika, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(521, 'ADI SUCIPTO S,Pd', '197204262005011005', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Biologi, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(522, 'DYAH ARIANI, S.Pd', '196601011998032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPS, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(523, 'WIWIN AGUSTINI, S.Pd', '197408182005012002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi BP/Konseling, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(524, 'ABDUL MU\'IN, S.Pd', '196911071998031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPS, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(525, 'NUR WAHID, S.Pd.I, M.PdI', '197406241998031004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Sejarah Kebudayaan Islam, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(526, 'FATIMATUZ ZUHRO S.Pd', '197006042007012038', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(527, 'IRWAN SOFIYANTO, S.Pd.', '197512162005011002', 'III/c', 'Penata', 'Guru Muda Bahasa Arab Pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(528, 'NURHASANAH, S.Pd.Ina.', '197312112005012001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(529, 'RATNA KUSUMAWATI S.SI', '197803132007102005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(530, 'SITI KHANSYA, S.Pd', '198010152007102002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fisika, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(531, 'SRI HARTATIK, S.Pd', '197409072007102002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Biologi, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(532, 'SOFI NURDIANA, S.Pd', '197906262007102002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi IPS, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(533, 'SRI RAHAYU AR, S.Pd', '198305062009122003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fisika, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(534, 'MUJIATI, SS', '197903292009012003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Indonesia (Sekolah), pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(535, 'KARTONO, S.Pd.I', '197304012007011032', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi PPKN, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(536, 'EDY SUPRIYANTO, A,Ma', '198301172007011004', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Penjaskes, pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(537, 'AZIS POERDIJANTO, S.Pd.', '196806102014111003', 'II/c', 'Pengantar', 'Guru pada / Guru Kelas, pada pada MTsN 5 Jember Kabupaten Jember Provinsi Jawa Timur'),
(538, 'SUMARYONO S.Sos', '196308231985031003', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(539, 'MUSRIFAH?', '196505032007012028', 'III/a', 'Penata Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(540, 'IWAN GHOZALI?', '198107112009101001', 'III/a', 'Penata Muda', 'Bendahara Penerimaan/Pengeluaran Urusan Tata Usaha MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(541, 'KHUSNUL KHOTIMAH?', '198110232007102004', 'II/c', 'Pengantar', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan Urusan Tata Usaha MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(542, 'ISMARI?', '198602142014111001', 'I/c', 'Juru', 'Pegawai Penjaga Kebersihan Pada MTsN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(543, 'MAIJOSO S. Ag', '197304132000031006', 'IV/a', 'Pembina', 'Guru Madya / Kepala, Bidang Studi Fiqih, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(544, 'SUKARYO S. Ag', '197101032000031001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Aqidah Akhlaq, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(545, 'KUNROZAZI, S.Pd', '197611132005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(546, 'SLAMET HARIANTO, S.Pd', '197512282006041010', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Olah Raga dan Kesehatan, pada pada MTsN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(547, 'FITRI EKASARI KURNIYAWATI, S.Pd.', '197809122005012005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(548, 'SITI HOLIFAH, S.Pd', '196805072005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(549, 'KHALIFAH SL, S.Pd.', '197605122005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Indonesia (Sekolah), pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(550, 'A. JUFRI HASYIM, S.Ag', '196712312005011039', 'III/c', 'Penata', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(551, 'PATHOR RASI S.PD', '196802242007011031', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(552, 'NUR FATIMAH, S.Ag', '197411062007012023', 'III/c', 'Penata', 'Guru Muda Bidang Studi Sejarah Kebudayaan Islam, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(553, 'AHMAD BAIHAKI. S.Ag', '197510282007011021', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada pada MTsN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(554, 'SRI RATNANINGSIH S.Pd', '197608202007102001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTs Negeri Sukowono Kab. Jember'),
(555, 'OKTORIKA SUWARNI S.PD', '196710042007012021', 'III/c', 'Penata', 'Guru Madya Bidang Studi Matematika, pada MTsN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(556, 'ONI HERMAWAN S.Pd', '197101132007101001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Inggris pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(557, 'MISBAH AL AYYUBY, SS', '197203292009011003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi IPS, pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(558, 'SITI MAISAROH S.Pd.I', '197805052007102002', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Bahasa Arab pada MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(559, 'ACHMAD MAS UDI, SE', '197104161998031002', 'III/c', 'Penata', 'Kepala Urusan Tata Usaha MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(560, 'MOH. MUHAJIR ALFATAWI?', '198203302007101002', 'III/a', 'Penata Muda', 'Penyusun Program Anggaran dan Pelaporan Urusan Tata Usaha MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(561, 'ABD. RAHMAN?', '196610252007011030', 'III/a', 'Penata Muda', 'Bendahara Pengeluaran Urusan Tata Usaha MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(562, 'AHMAD ROFIK?', '197601272005011007', 'II/c', 'Pengantar', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan Urusan Tata Usaha MTsN Sukowono Kabupaten Jember Provinsi Jawa Timur'),
(563, 'Drs. MOHAMAD ISKAK?', '196907021997031002', 'IV/b', 'Pembina TK 1', 'Guru Madya/Kepala Pada MTs Negeri Jember I Kabupaten Jember Propinsi Jawa Timur'),
(564, 'Dra. ST NURHAYATI, M.Pd', '196408031994032001', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Bahasa Inggris, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(565, 'TUTIK SUSIYANA, S.Pd', '196510141994032002', 'IV/a', 'Pembina', 'Guru Dewasa Tk.I (Jabatan Lama, hanya dipakai untuk riwayat) Bidang Studi Matematika, pada pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(566, 'DRA ST ROKHMATUN?', '196401061991032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Aqidah Akhlaq, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(567, 'AZIZAH WAHYUNI, S.Pd.', '197212281997032001', 'IV/a', 'Pembina', 'Guru Pembina MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(568, 'ROHMIYATI, S.Pd', '196507251993032003', 'IV/a', 'Pembina', 'Guru Pembina IPS MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(569, 'ENDANG YUANA, S.Pd, M.Pd', '197111151996032001', 'IV/a', 'Pembina', 'Guru Pembina Bahasa Inggris (Sekolah) MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(570, 'HARININGSIH, S.Pd', '196603101992032003', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Matematika, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(571, 'YULI ASTUTIK, S.Pd.', '197007051998032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi PKN pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(572, 'ZAENOL HASAN, S.Pd.', '197006191999031002', 'IV/a', 'Pembina', 'Guru Madya/Wakil Kepala MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(573, 'MULIK SISWANDANI, S.Pd.', '198103172005012004', 'IV/a', 'Pembina', 'Guru Muda Bahasa Indonesia (Sekolah) MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(574, 'MUKMINA, S.Pd', '196808082005012002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Kewarganegaraan, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(575, 'SUGIARTIK, S.Pd', '197702102005012004', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Pendidikan Sejarah, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(576, 'HAFSAH HASAN, S.Pd', '196909162005012004', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Biologi, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(577, 'MUHAMMAD SODIQ, S.Ag', '197510032005011006', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab (Bidang Studi), pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(578, 'MARIA ULFA, S.Pd.', '197911272005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Olah Raga dan Kesehatan, pada'),
(579, 'MOH. BADRUS SHOLEH, S.Pd.I, M.Pd.I', '198004172009011009', 'III/d', 'Penata TK 1', 'Guru Muda MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(580, 'BURHANUDIN S.Pd', '197609092005011003', 'III/d', 'Penata TK 1', 'Guru Muda, Bidang Studi IPS, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(581, 'SITI ALFIAH, S.Pd.M.Si', '198108292005012005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(582, 'Dra AMYANAH?', '196601042005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(583, 'ABDUL BARI, S.Pd', '197506082006041009', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTsN Jember 01 Kab. Jember Prov. Jawa Timur'),
(584, 'MUHAMMAD TANTOWI, S.Pd.I, M.Pd.I', '198111212009011012', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Arab pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(585, 'ACH. RAMLI, S.Ag', '197403212007011022', 'III/c', 'Penata', 'Guru Pertama MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(586, 'NUR HASANAH KURNIASARI S.Pd', '197911072005012006', 'III/c', 'Penata', 'Guru Muda Bidang Studi BP/Konseling, pada pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(587, 'IKA INDRIYATI RAHAYU S.Pd.', '197604302007102002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Biologi, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(588, 'MUTAMIMAH, S.Pd', '197704232007102001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Bahasa Indonesia (Sekolah), pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(589, 'Dra BUDIARTI?', '196509302007012026', 'III/c', 'Penata', 'Guru Pertama bidang studi IPS'),
(590, 'SANTONO S.Pd.I', '197409182007101001', 'III/c', 'Penata', 'Guru Pertama MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(591, 'SRIAMAH, S.Pd', '197508152007102003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Matematika, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(592, 'SITI WASILAH?', '196401012014112002', 'II/c', 'Pengantar', 'Guru pada Bidang Studi Bahasa Inggris, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(593, 'UBAIDULLAH?', '196810162014111003', 'II/a', 'Pengantar Muda', 'Guru Pratama Bidang Studi Teknologi Informasi dan Komunikasi, pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(594, 'YAZIRUL AZIZ?', '197007112014111002', 'II/a', 'Pengantar Muda', 'Guru pada MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(595, 'Drs. AGUS EKO SETIAWAN, M.Si', '196608281994031011', 'IV/a', 'Pembina', 'Kepala Urusan Tata Usaha MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(596, 'FARIDA HERIASTUTIK SINGGIH FITRIYANINGSIH, BA', '196103171987032002', 'III/c', 'Penata', 'Pengadministrasi Urusan Tata Usaha MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(597, 'NUR AZIZAH RAHMAN, S.Pd', '197308061998032003', 'III/c', 'Penata', 'Bendahara Penerimaan/Pengeluaran Urusan Tata Usaha MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur');
INSERT INTO `data_pegawai` (`id_pegawai`, `nama`, `nip`, `gol`, `pangkat`, `jabatan`) VALUES
(598, 'NUR HAKIMA?', '196709141987032001', 'III/b', 'Penata Muda TK 1', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan pada MTsN Jember I'),
(599, 'NADIM, S.Ag.', '196503082014111001', 'III/a', 'Penata Muda', 'Pengadministrasi pada Urusan Tata Usaha MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(600, 'MOHAMMAD FAUZAN FARDIAN?', '198111112009101002', 'II/c', 'Pengantar', 'Penyusun Program Anggaran dan Pelaporan pada MTsN Jember I'),
(601, 'ENY AGUSTINAH?', '196908182014112002', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada Urusan Tata Usaha MTsN Jember 01 Kabupaten Jember Provinsi Jawa Timur'),
(602, 'Dra. TITIK FAUZIYAH?', '196205161987032003', 'IV/a', 'Pembina', 'Guru Pembina pada MTsN Jember 02 Kab. Jember Propinsi Jawa Timur'),
(603, 'Dra. SUSILA?', '196402131994032004', 'IV/a', 'Pembina', 'Guru Pembina Bidang Studi Pendidikan Agama Islam (PAI) pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(604, 'Dra. NURUL FARIDHA?', '196307161994032001', 'IV/a', 'Pembina', 'Guru Madya / Kepala Bidang Studi Matematika, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(605, 'FAEKOTUL JANNAH, S.Pd', '196503281992032001', 'IV/a', 'Pembina', 'Guru Muda MTsN Jember 02 Kab. Jember Provinsi Jawa Timur'),
(606, 'Drs. TJUTJUK JUSNEARTO?', '196705231994031003', 'IV/a', 'Pembina', 'Guru Pembina MTsN Jember 02'),
(607, 'NUR WAHIDAH, S.Pd', '196607281994032003', 'IV/a', 'Pembina', 'Guru Madya MTsN Jember 02 Kab. Jember Provinsi Jawa Timur'),
(608, 'Dra. NUR INDAH RAKHMAWATI?', '196805311999032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPS, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(609, 'IIS SURYADEWI S.Pd', '197106251999032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi PPKN, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(610, 'HERU WIDIYASTUTI, S.Pd', '197505302005012002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi IPS, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(611, 'QOSIM MULYADI, S.Pd', '197008202005011003', 'III/d', 'Penata TK 1', 'Guru Muda Tk.I Bahasa Indonesia (Sekolah) MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(612, 'QURATULAINI S,Pd', '197701272005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(613, 'RIRIN SULISTYOWATI, S,Pd', '198101152005012006', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(614, 'AGUS SUPRAYITNO, S.Pd.', '197505252005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Inggris, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(615, 'LAILI SURYANAH, S.Pd', '198011202005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(616, 'ANI KUNTARIANI, S.Pd', '197004072005012004', 'III/d', 'Penata TK 1', 'Guru Muda MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(617, 'AKHMAD MAKHIN, S.Pd', '197102142005011004', 'III/d', 'Penata TK 1', 'Guru Muda Olah Raga MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(618, 'JUNAIDI RAHMAN, S.Pd.', '197903242005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Teknik Informatika dan Komunikasi, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(619, 'MUHAMMAD ABI SHOLEH, M.Pd.I', '197810182001121001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Sejarah Kebudayaan Islam, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(620, 'ALEX MAHRUS ANWAR, M.Pd.I', '197410122005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(621, 'ARIF SETYO PURNOMO, S.Pd', '198104252005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(622, 'RESTUTI YULISTYORINI, S.Pd', '197807292005012003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(623, 'DWI RAHARJO S.Sn', '197110202005011005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Seni, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(624, 'ULIL FARHAH, S.Ag', '197111142005012003', 'III/d', 'Penata TK 1', 'Guru Muda Tk.I Bidang Studi Al-Qur`an Hadits, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(625, 'ANIK RUMPIATI, S.Pd.', '197908142005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPA, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(626, 'RATNA HIDAYAH SUGIARTI, S.Pd.I', '197104292000032001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(627, 'MARTI, M.Pd.', '197803302005012002', 'III/c', 'Penata', 'Guru Muda Bahasa Inggris (Sekolah) MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(628, 'RIKA NURUL BAROKAH, S.Si', '198209082007102002', 'III/c', 'Penata', 'Guru Muda Pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(629, 'ELIEF FITRIANA, S.Ag', '197709172007102002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(630, 'FATHUR ROSI S.Pd', '198210272009011013', 'III/c', 'Penata', 'Guru pada Bidang Studi IPA, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(631, 'SRI RAHAYU NINGSIH, S.Pd', '196812032009102001', 'III/c', 'Penata', 'Guru pada Bidang Studi Bahasa Indonesia, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(632, 'HOSNAN, S.Pd', '198305212011011002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Matematika, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(633, 'IIK SUKMASARI S.Pd', '197910172007102002', 'III/b', 'Penata Muda TK 1', 'Guru Madya Bidang Studi Bahasa Indonesia, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(634, 'RIA KUPATIYAH PIRWANTI, S.S', '198207292011012010', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Bahasa Indonesia, pada MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(635, 'SITI FATIMAH, S.Pd.', '196904182014112003', 'III/a', 'Penata Muda', 'Guru Muda Bidang Studi IPS, pada pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(636, 'MENOK NANIEK HEROWATI, S.Pd.', '197011202014112005', 'III/a', 'Penata Muda', 'Guru pada Bidang Studi Matematika, pada MTsN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(637, 'IKA ANDRIATI?', '196602042007102001', 'II/c', 'Pengantar', 'Pengadministrasi MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(638, 'NIKMATUL MASYKUROH, S.Ag', '197302251998032002', 'III/d', 'Penata TK 1', 'Kepala Urusan Tata Usaha MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(639, 'MOHAMMAD RIJAL TEJA KUSUMA SE', '198112022005011003', 'III/c', 'Penata', 'Pengadministrasi pada Urusan Tata Usaha MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(640, 'SURYA SE', '197906182006042001', 'III/a', 'Penata Muda', 'Pengadministrasi Urusan Tata Usaha MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(641, 'ABDULLAH?', '197004142007011050', 'I/b', 'Juru Muda TK 1', 'Petugas Keamanan Urusan Tata Usaha MTsN Jember 02 Kabupaten Jember Provinsi Jawa Timur'),
(642, 'ABDUL KOHAR, S.Ag', '197205181998031002', 'IV/a', 'Pembina', 'Guru Madya / Kepala Bidang Studi Aqidah Akhlaq, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(643, 'NINIK ERNAWATI S.Pd', '197011302005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Guru Kelas, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(644, 'NUR HAMIDAH YUSUF, S.Pd.I', '197106232005012001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(645, 'WAHYU WIYONO S.Pd.', '197306202005011004', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(646, 'NURAINI, S.Pd.I', '197005122005012003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(647, 'LISSA NURHIDAYAH AR, S.Pd.', '198211212005012005', 'III/c', 'Penata', 'Guru Muda MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(648, 'IKA PUSPITA WULANDARI, S.Pd.I', '197812212005012004', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(649, 'SUTALI S.Pd.I', '197305062005011007', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sempolan'),
(650, 'ACHMAD FAUZAN ADIMAH S.Pd', '197912082005011004', 'III/c', 'Penata', 'Guru Muda MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(651, 'SLAMET WIDIYANTO, S.Pd.I', '197808062005011003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(652, 'RAHMAT MULYONO, S.Pd', '198005052007101003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Penjaskes, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(653, 'MUHAMAD SUHADI, S.Pd.I', '197008082006041016', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Al-Qur`an Hadits, pada MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(654, 'NUR FARIDA, S.Pd.I', '197011152007012015', 'III/b', 'Penata Muda TK 1', 'Guru Pertama / Guru Kelas, pada'),
(655, 'KURNAINI IRMA FITRIYANTI?', '197609302005012011', 'II/d', 'Pengantar TK 1', 'Pengadministrasi MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(656, 'HOSNIYAH, A.Ma', '197411112007012024', 'II/c', 'Pengantar', 'Pengadministrasi MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(657, 'SUWATI?', '196701012014112005', 'II/a', 'Pengantar Muda', 'Guru Pertama MIN Sempolan Kabupaten Jember Provinsi Jawa Timur'),
(658, 'SATINI, S.Pd.I', '196403181990032002', 'IV/a', 'Pembina', 'Guru Madya/Guru Kelas pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(659, 'ERWIN TRISNAWATI, S.Pd.I', '198301142005012002', 'III/d', 'Penata TK 1', 'Guru Muda / Bidang Studi Aqidah Akhlaq, pada MIN 4 Jember'),
(660, 'PUTUT ARIBOWO, S.Ag, M.Pd.I', '197301162005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(661, 'AKHMAD NURUL HIDAYAT S,Pd', '197602192005011005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Penjaskes, pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(662, 'WIWIK SUMIYATI, S.Pd.I', '197811062005012001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Sejarah Kebudayaan Islam, pada MIN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(663, 'NASIRUDIN F, S.PdI,M.Pd.I', '198102102005011001', 'III/c', 'Penata', 'Guru Muda / Kepala Bidang Studi Aqidah Akhlaq, pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(664, 'HINDAR WAHYUDI, S. Pd', '197802242005011001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(665, 'JOKO SUGIARTO, S.Pd.I', '197805022007101007', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Fiqih, pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(666, 'NURJANAH S.Pd.I', '198006142007102002', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Al-Qur\'an Hadits, pada MIN Garahan Kabupaten Jember Provinsi Jawa Timur'),
(667, 'A. FAUZI HASAN?', '197208232007011026', 'II/c', 'Pengantar', 'Pengadministrasi Kanwil Kementerian Agama Provinsi Jawa Timur pada MIN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(668, 'FARID ROSYIDI?', '197704292009101002', 'II/c', 'Pengantar', 'Bendahara Pengeluaran Pembantu pada MIN 4 Jember Kabupaten Jember Provinsi Jawa Timur'),
(669, 'Dra. HINDANAH?', '196704011998032003', 'IV/a', 'Pembina', 'Guru Madya / Kepala / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(670, 'HUSNUL HOTIMAH, S. Pd. I.', '197008191997032002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(671, 'KHAFIDHOH, S.Pd.I', '197702111999032001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(672, 'SRI KUSTATIK S. Pd.', '197310282005012002', 'III/d', 'Penata TK 1', 'Guru Kelas, pada pada MIN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(673, 'ANI PURWATININGSIH S. Pd.', '197908222005012007', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada pada MIN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(674, 'SUMINING, S.Pd.', '197011152005012002', 'III/c', 'Penata', 'Guru Muda MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(675, 'SITI HOTIJAH, S, Pd.', '197503012006042009', 'III/c', 'Penata', 'Guru Muda Guru Kelas, pada'),
(676, 'SITI KHUSNUL KHOTIMAH, S. Pd. I.', '196707272000032001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(677, 'SOLIHIN, S.Pd.I', '197408171998031003', 'III/c', 'Penata', 'Guru Pertama MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(678, 'NIDAUL HURIYAH, S.Pd.I', '197808032007102004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI), pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(679, 'EKO ISWANTO, S.Pd.', '196910102005011003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tutul Balung Kabupaten Jember Provinsi Jawa Timur'),
(680, 'MUHAMMAD HADI SUSILO, S.Pd', '198404012006041009', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(681, 'AGUS SALIM, S.Pd., MM.Pd.', '197607062007011030', 'III/c', 'Penata', 'Guru Muda MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(682, 'AHMAD SYAIKHUNA SIDDIQ, S.Pd.', '197504082005011004', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(683, 'S.ANIK ANDRIYANI S.Ag', '197012262007012023', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(684, 'MUKHTARIKIN S.Pd', '196811112005011001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Olah Raga, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(685, 'MUSLIM AL HUDA S.Pd.I', '197311212009011005', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(686, 'KHUSNALIYAH, S. Pd. I.', '196909242005012002', 'III/c', 'Penata', 'Guru pada / Guru Kelas, pada MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(687, 'INDRA NOORMANSYAH, A.Ma', '198410052009101001', 'II/c', 'Pengantar', 'Penyusun Rencana Program dan Anggaran MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(688, 'LULUK NUR FARIDA, A.Ma.Pd.', '198508292009102001', 'II/c', 'Pengantar', 'Bendahara Pengeluaran Pembantu MIN 2 Jember Kabupaten Jember Provinsi Jawa Timur pada MIN 2 Jember Kabupaten Jember Provinsi Jawa Timur'),
(689, 'EMY MUTI\'AH, A.Ma.', '197710152009102001', 'II/c', 'Pengantar', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan MIN Tutul Kabupaten Jember Provinsi Jawa Timur'),
(690, 'RIBUT SETIANINGSIH, S.Pd.I', '196708021993032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Pendidikan Agama Islam (PAI), pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(691, 'NAWAWI, S.Pd', '196804181998031002', 'IV/a', 'Pembina', 'Guru Madya / Kepala / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(692, 'SITI ASROFAH, S.Pd.I', '196904251997032002', 'IV/a', 'Pembina', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(693, 'LUTFI HANDAYANI S.Pd.I', '197711132005012005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fiqih, pada MIN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(694, 'KHOLIFAH, S.Pd.I', '198210302005012003', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(695, 'MUNDIR, S.Pd.I', '195908071998031003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(696, 'ISHAQ KHOLILUR ROHMAN, S.Pd., M.MPd', '198409212006041003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(697, 'DEDI EPENDI, S. Ag., M.MPd', '197404082007011028', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(698, 'SOFWANA, S.Ag., M.MPd', '197206042007102003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(699, 'ARI PRASETYANINGTIAS, S.Pd.I', '198103132007102001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(700, 'FITRIYANI PURWANTI, S.Pd.I', '198403052007102001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(701, 'ANSHORI, S.Pd.I', '197611062007101001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(702, 'MAMIK NURHAKIM, S.Pd', '197509032007102006', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(703, 'SYAIFUDIN ZUHRI, S.Pd.I', '198512192009011005', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Sejarah Kebudayaan Islam, pada MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(704, 'LAILY MAZIDATUR ROHMAH, S.Sos.', '197509302009012002', 'III/a', 'Penata Muda', 'Bendahara Pengeluaran Pembantu pada MIN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(705, 'WIJI ISWANTI?', '198508202009102002', 'II/c', 'Pengantar', 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan MIN Tanggul Wetan Kabupaten Jember Provinsi Jawa Timur'),
(706, 'SUPANGAT?', '196809242014121001', 'II/a', 'Pengantar Muda', 'Pengadministrasi pada MIN 6 Jember Kabupaten Jember Provinsi Jawa Timur'),
(707, 'SITI FATHUNNURROHMIYATI, S.Ag.', '197106211997032001', 'IV/b', 'Pembina TK 1', 'Guru Madya / Kepala Bidang Studi Aqidah Akhlaq, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(708, 'SRI LESTARI, S.Pd', '197009242002122002', 'IV/a', 'Pembina', 'Guru Muda Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(709, 'FITRA MAMONG SETIYO RAHARJO S,Pd', '197709152005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Olah Raga dan Kesehatan, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(710, 'YULIANI S.Pd', '197012232005012002', 'III/d', 'Penata TK 1', 'Guru Muda Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(711, 'ARIE FURWATI SP.d.I', '196807102005012003', 'III/d', 'Penata TK 1', 'Guru Muda Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(712, 'HOLIFAH, S.Pd.I', '197603272005012005', 'III/d', 'Penata TK 1', 'Guru Muda Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(713, 'INARISTIYANI, S.Pd.I', '198012142005012002', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(714, 'SAIFUL, S.Ag', '197303092007011032', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(715, 'ABDUL MU\'IS?', '197302022009011006', 'II/c', 'Pengantar', 'Pengadministrasi MIN Arjasa Kabupaten Jember Provinsi Jawa Timur'),
(716, 'DIDIK MARDIANTO, S.Pd, M.Pd.', '196710191998031001', 'IV/a', 'Pembina', 'Guru Madya / Kepala / Guru Kelas, pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(717, 'MOCHAMAD SUBANDI, S.Pd', '196812172005011001', 'III/d', 'Penata TK 1', 'Guru Muda MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(718, 'KHOTIMATUL BARRIYAH, S.Ag', '197102122006042005', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Al-Qur`an Hadits, pada MIN SUMBERSARI KAB JEMBER PROP JAWA TIMUR'),
(719, 'SAEFULLAH S.Pd.I', '196212291998031002', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(720, 'INDAH ISWATI, S.Pd, M.Pd.I', '196904022005012011', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(721, 'IKA ZULIK NURHAYATI, S.Pd.I', '197902232005012005', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada MIN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(722, 'LULUK S.Pd', '196604152006042002', 'III/c', 'Penata', 'Guru Muda MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(723, 'FIFIN ANDRIYANI, S.Pd.I', '198211082006042011', 'III/c', 'Penata', 'Guru Muda MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(724, 'ENDIWIJAYATI, SP.d', '196804222005012002', 'III/c', 'Penata', 'Guru Muda MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(725, 'NANANG SETIAWAN S.Pd.', '197312072005011005', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(726, 'UYUNUL CHUSNIAH, S.Pd.I', '197503262005012001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN 3 Jember Kabupaten Jember Provinsi Jawa Timur'),
(727, 'ALFIAH, S.Pd', '197009132007102003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sumbersari Kab. Jember Prov. Jawa Timur'),
(728, 'ERNI NOVIANITA, S.Pd.', '198111252005012013', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIN Sumbersari Kab. Jember Prov. Jawa Timur'),
(729, 'WIWIN SUPARTINAH SE', '197408242007102005', 'III/b', 'Penata Muda TK 1', 'Pengelola Administrasi dan Dokumentasi pada MIN Sumbersari Kab. Jember'),
(730, 'AGUS EKO JUNIANTO?', '198106052006041002', 'II/c', 'Pengantar', 'Pengadministrasi pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(731, 'MOH. SAMSUL HAMBALI?', '197106172009011002', 'II/c', 'Pengantar', 'Pengadministrasi MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(732, 'HOLILI?', '196809022007011033', 'II/c', 'Pengantar', 'Pengadministrasi MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(733, 'ANSHORI, A.Ma.', '197001112014111002', 'II/b', 'Pengantar Muda TK 1', 'Guru pada / Guru Kelas, pada MIN Sumbersari Kabupaten Jember Provinsi Jawa Timur'),
(734, 'MOH ZAINURI, S.Ag.', '197407122005011003', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Bahasa Arab, pada MA Darul Hidayah Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(735, 'ARIF ZAINULLAH SAHRONI, S.Pd', '197204142000121001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fisika, pada MAS Darus Sholah Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(736, 'ATIK DWI IRAWATI, S.Pd', '197310132005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Matematika, pada MAS Al Husna Kabupaten Jember Provinsi Jawa Timur'),
(737, 'HARIYANTO, S.Pd.', '197104302011011001', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Fisika pada MAS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(738, 'SUUDI, S.Ag.', '197401032007011028', 'III/a', 'Penata Muda', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MAS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(739, 'ALFIYAH, S.Pd.I', '195912151993032001', 'IV/a', 'Pembina', 'Guru Madya / Kepala Bidang Studi Fiqih, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(740, 'FAIKATUL WARDA, S.Ag.', '197803162005012002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Fiqih, pada MTsS Sunan Ampel Kabupaten Jember Provinsi Jawa Timur'),
(741, 'IMAM BAEHAQI, S.Pd', '197604162005011005', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Matematika, dengan tugas Tambahan sebagai Kepala MTsS Nahdlatuth Thalabah Kesilir Kec. Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(742, 'MOH. NASIR, S.Pd.,M.Pd.I', '197703172005011008', 'IV/a', 'Pembina', 'Guru Muda / Kepala Bidang Studi BP/Konseling, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(743, 'MUHAMMAD NURUL HUDA. S.Pd.I.,M.Pd.I', '198011252005011007', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Arab, pada MTS Salafiyah Syafi\'iyah Mumbulsari Jember Kabupaten Jember Provinsi Jawa Timur MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(744, 'Dra. UMI NURJANAH?', '196804152005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi IPS, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(745, 'SRI WAHYUNI, S.Pd.', '197112312005012007', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Bahasa Indonesia, pada MTs Hidayatul Mubtadi\'in Tempurejo Kabupaten Jember Provinsi Jawa Timur'),
(746, 'MOCH. ROFIQ ROHMATULLAH, S.Ag.', '196904221998031003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MTsS Raudlatul Jannah Kec. Mayang Kabupaten Jember Provinsi Jawa Timur'),
(747, 'TITARINI, S.Pd', '197405122005012005', 'III/d', 'Penata TK 1', 'Guru Muda bidang Studi Bahasa Ingris pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(748, 'LULUK MASLUCHAH, M.Pd.I', '198001022005012004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(749, 'HANIFAH, S.Pd.', '197708142005012008', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(750, 'RITA RUDIYANI SULFIYAH, SE', '197707152007012020', 'III/c', 'Penata', 'Guru Muda Bidang Studi IPS, pada MTsS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(751, 'MUH. JIHAD FISABILILLAH?', '197107072003121010', 'II/c', 'Pengantar', 'Guru Madya Tk.I Madrasah Tsanawiyah Swasta (MTsS) se Kab. Jember'),
(752, 'PONIYEM. S.Ag.', '196408011993032001', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Pendidikan Agama Islam (PAI), pada SMPN 2 Wuluhan Kabupaten Jember Provinsi Jawa Timur'),
(753, 'LILIS LAILATUL FITHROTIN, S.Ag', '197510222000032001', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Al-Qur\'an Hadits, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(754, 'INFARIDAH, S.Ag', '196501011993032002', 'IV/a', 'Pembina', 'Guru Madya Bidang Studi Pendidikan Agama Islam (PAI), pada MIS Nurus Syukur Kabupaten Jember Provinsi Jawa Timur'),
(755, 'Dra. TITIK NURHAYATI, M.Pd.I', '196706042005012001', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(756, 'LILIS INDARWATI, S.Ag., M.Pd.I', '197408212005012002', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(757, 'Dra. SITI FATIMAH?', '196210242000032001', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi Guru Kelas, pada MIS MA 01 KH. Shiddiq Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(758, 'ACIK MUNDAI, S.Pd.', '196805042000032006', 'IV/a', 'Pembina', 'Guru Muda Bidang Studi PPKN (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(759, 'MUH. FAHRU ROSYID, M.Pd.I', '197904262005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Al-Qur\'an Hadits, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(760, 'MOH. RIDWAN, S.Pd.,M.Pd.I', '197206052005011019', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(761, 'NENENG DIAH PUSPITASARI, S.Pd', '198002222005012012', 'III/d', 'Penata TK 1', 'Guru Dewasa Tk.I Bidang Studi Penjaskes, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(762, 'SUPRAPTO, S.Pd.', '196505162005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(763, 'AKHMAD SLAMETRIADI, S.Pd', '196612132005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi BP/Konseling, pada pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(764, 'SUUD ALKAF, A.Ma', '196012011992032001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MIS Diponegoro Kec. Patrang Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(765, 'AGUNG SAPUTRO, S.Pd.', '196906132005011009', 'III/d', 'Penata TK 1', 'Guru Pertama Bidang Studi Biologi (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(766, 'YANI SRI WAHYUNI, S.Pd.', '197502142005012003', 'III/d', 'Penata TK 1', 'Guru Pertama Bidang Studi Biologi (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(767, 'SYAIFULLOH, S.Pd., M. Pd.I', '197307112005011001', 'III/d', 'Penata TK 1', 'Guru Muda pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(768, 'EKO MUJIONO, S.Pd', '197105152005011003', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Penjaskes, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(769, 'MOH. MUDAKIR, S.Pd.I', '197010252005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(770, 'SUGIYANTO, S.Pd.I', '197108072005011002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(771, 'FADLIL LATIF, S.Pd.I, M.Pd.I', '197504292005011001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(772, 'AHMAD TAUFIQ, S.Pd.I', '197811052005011004', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MI Abul Abbas Kaliwining Kec. Rsmbipuji Ksb. Jember'),
(773, 'SRIYATININGSIH, S.Pd.I', '197408282005012006', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(774, 'SUSIATI, S.Pd.I', '196704152005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(775, 'MOCHAMMAD TOHAWI, S. Pd.I', '196806152005011001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Bidang Studi Matematika, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(776, 'AH SUBAIRI S.Pd.I', '196509302005011001', 'III/d', 'Penata TK 1', 'Guru Muda / Kepala Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(777, 'MOHAMAD JUMHARI, S.Pd.I', '197410252000121002', 'III/d', 'Penata TK 1', 'Guru Muda / Kepala Bidang Studi Al-Qur\'an Hadits, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(778, 'ENIK RUSDIANI, S.Pd.I', '197405102005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(779, 'NING WAHIBA MAGHFUROH, S.Pd.I', '196704252000032001', 'III/d', 'Penata TK 1', 'Guru Muda / Guru Kelas, pada MIS Imam Bonjol Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(780, 'SITI KHASANAH, S.Pd.I', '196807102000032009', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(781, 'LILIK SUPRIYANI, S.Pd.I', '196904202005012002', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(782, 'MARIA ULVA, S.Ag', '197312252006042017', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS Nuris Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(783, 'HANIK MURDLORINI, S.Pd.I', '197612302005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Fiqih, pada MIS Al Hidaya Kabupaten Jember Provinsi Jawa Timur'),
(784, 'SUPRAPTO, S.Pd', '196608242005011001', 'III/c', 'Penata', 'Guru Dewasa Bidang Studi BP/Konseling (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(785, 'AMARI, S.Pd.I', '196808061997031003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MI Bustonul Ulum Nogosari Rambipuji Kabupaten Jember Provinsi Jawa Timur'),
(786, 'HAIRUL FAUSI, S.Pd.I', '198104182005011001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS Riyadlatul Afkar Petung Kecamatan Bangsalsari di lingkungan Kabupaten Jember Provinsi Jawa Timur'),
(787, 'YAYUK AHYANA, S.Ag', '197710142006042004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(788, 'BERLIANTI, S.PD., M.M.Pd', '196702042005012002', 'III/c', 'Penata', 'Guru Muda pada MI MIFTAHUL HUDA Jatisari Wonorejo Kecamatan Kencong Kabupaten Jember Propensi Jawa Timur'),
(789, 'WARDATUZZUBAIDAH, S.Pd.I', '196909291991032001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(790, 'NUR FADHILAH, S.Pd.', '197411152005012003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Riyadlus Sholihin Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(791, 'FATMAWATI, S.Pd.I', '196901132005012002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada MIS Nurul Muhith Kec. Tanggul dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(792, 'SAMIN, S.Pd.I', '196210112000121001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada MIS Al Irsyad Kec. Sumbersari dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(793, 'BADRIYAH, S.Pd.I', '197303062005012009', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(794, 'UMI SHOLIHATI, S.Ag', '197104122005012005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(795, 'IDA SUHARTINI SINTA DEWI, S.Pd.', '197405242005012005', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MIS Miftahul Huda Mlokorejo Kecamatan Puger Kabupaten Jember Provinsi Jawa Timur'),
(796, 'SITI FARIDA, S.Pd.I', '197206012000122002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(797, 'NUR WAHYUDI, S.Pd.I', '197009282005011005', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(798, 'ROSID HARUN, S.Ag., M.Pd.I', '197303312005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Arab, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(799, 'NUR KHOLIFAH, S.Pd.I', '196808082000032005', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(800, 'A. HASYIM, S.Pd.I', '196805122000031002', 'III/c', 'Penata', 'Guru Muda / Kepala Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(801, 'SUGIARNO, S.Pd.I', '197004192005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(802, 'SITI AISYAH, S.Pd.I', '197706142005012002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS Bustanul Ulum Bulugading, Langkap, Kecamatan Bangsalsari Kabupaten Jember Provinsi Jawa Timur'),
(803, 'NURUL HIDAYAH, S.Pd.', '198301112005012001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(804, 'IDA FITRIA, S.Pd.', '198008172005012007', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(805, 'ISTIQOMAH, S.Pd.I', '197010112003122001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(806, 'HARIYONO, S.Pd.', '196802032005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Penjaskes, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(807, 'NUR MOH KHOIRUDDIN, S.Pd.I', '197702202005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(808, 'AHMAD JUNAEDI EFENDI S.Pd.I, M.Pd.I', '198306252005011002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS di lingkungan Kabupaten Jember Provinsi Jawa Timur'),
(809, 'WIWIN EKO SRI WINARTI, S.Pd', '197111042005012003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Sejarah (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(810, 'NUR HASYIM, S.Pd.I.', '196806142005011002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(811, 'KHOLIK, S.Pd.I', '196604272005011001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(812, 'LUDY FITRIANDILA, S.Pd.I', '198307052005011003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(813, 'NURIANA TRIASTUTI, S.Pd.', '197005222005012003', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS Ar-Roudhoh Kec. Patrang Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(814, 'LAILI MASRUROH, S.Pd.I', '198408062005012001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(815, 'AHMAD LAILI, S.Pd.I', '197308102005011003', 'III/c', 'Penata', 'Guru Pertama MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(816, 'SITI SOFIYAH, S.Pd.', '197001082005012001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi PPKN (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(817, 'FARIDATUL KHUSNAH, S.Pd', '198105062005012006', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(818, 'HURIN\'IN, S.Pd.I', '197001032005012003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(819, 'WIWIK SURYANI, S.Pd.', '197303172005012003', 'III/c', 'Penata', 'Guru Pertama MIS MIFTAHUL HUDA Jatisari Wonorejo Kecamatan Kencong Kabupaten Jember Provinsi Jawa Timur'),
(820, 'ARIMAN SISWANTORO, S.Pd.I', '196612172005011002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(821, 'ISTIQOMAH, S.Pd.I', '197910042005012004', 'III/c', 'Penata', 'Guru Pertama MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(822, 'ZURAIDA ARDIYANTI, S.Pd', '197701282005012003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Sejarah / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(823, 'SUROSO. S.Pd.I', '196804232005011004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Bahasa Indonesia, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(824, 'ENI ROSIDATUL LAILIN, S.Pd.I', '198407272005012001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS MA Condro Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(825, 'MUHAMMAD FADIL, S.Pd.I', '196510162005011003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(826, 'SITI NURIPAH, S.Pd.I', '197306102005012003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(827, 'IIN INDRAWATI, S.Pd', '197111022005012001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(828, 'SYA\'RONI, S,Pd.I', '197307242005011002', 'III/c', 'Penata', 'Guru Muda  Bidang Studi Al-Qur`an Hadits, pada pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(829, 'CIKRATIARINI, S.Pd.', '196902172005012008', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Al-Hidayah Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(830, 'TRI MARTINI, S.Pd.', '197203032005012002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas pada MIS Laboratorium MAN 2 Kec. Patrang Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(831, 'BUDI SANTOSO, S.Pd.I', '197205182005011001', 'III/c', 'Penata', 'Guru Muda MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(832, 'ELYA NURUL HASANAH, S.Ag.', '197009172005012001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(833, 'KUSMIATI, S.Pd', '197108182005012002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(834, 'ERVA\'UL ULUM, S.Pd.I', '197911292005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Aqidah Akhlaq, pada MIS di lingkungan Kabupaten Jember Provinsi Jawa Timur'),
(835, 'MALIHATUS SUBHIYAH, S.Pd.I', '197609272005012003', 'III/c', 'Penata', 'Guru Muda MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(836, 'DEWI MASITA, S.Pd.I', '197907062005012006', 'III/c', 'Penata', 'Guru Muda Bidang Studi Matematika, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(837, 'MAFTUHIRRIDLO, S.Pd.I', '197003212005011001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(838, 'WIDI HARIYATI, S.Pd.', '197211102005012004', 'III/c', 'Penata', 'Guru Muda MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(839, 'LUTFIATUL CHOIRIYAH, S.Pd.I', '196509112003122001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS MA Condro Kec. Kaliwates Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(840, 'AFIFATUS SHOLEHA, S.Pd.', '197904172005012008', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Sunan Ampel Kec. Patrang Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(841, 'MOH KHOIRI, S.Pd.I', '197206102005011004', 'III/c', 'Penata', 'Guru Muda Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(842, 'EDY PURWANTO, S.Pd.I', '197203242005011001', 'III/c', 'Penata', 'Guru Muda Mapel Aqidah Akhlak pada MI Inayatur Rohman Kec. Tempurejo dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(843, 'ROFI\'ATI, S.Pd.I', '197301062005012003', 'III/c', 'Penata', 'Guru Muda MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(844, 'ELIN IDA SABTI, S.Pd.I', '197607032005012003', 'III/c', 'Penata', 'Guru Muda MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(845, 'MASFUFAH, S.Pd', '197206212005012002', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(846, 'SITI SULAIKA, S.Pd.', '198002122005012003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Hidayatul Mubtadi\'in Kec. Rambipuji Kantor Kementerian Agama Kabupaten Jember Provinsi Jawa Timur MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(847, 'NUR FADLILAH, S.Pd', '197703162005012003', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(848, 'SUKRIS RAHMAT, S.Pd.', '196905282005011001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Penjaskes, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(849, 'SAROJI, S.Pd.I', '197005152005011004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(850, 'MUSLIKAH. S.Pd.I', '196708272005012001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Aqidah Akhlaq, pada MIS Mabdaul Ulum Rowosari Kec. Sumberjambe Kabupaten Jember Provinsi Jawa Timur'),
(851, 'MUSLIM, S.Pd.I', '196904042005011002', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(852, 'ABD ROHIM, S.Pd.I', '197007062005011004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Sejarah Kebudayaan Islam, pada MI Miftahul Ulum I Kepatihan Gumukmas'),
(853, 'KHUSNUL KHOLILAH, S.Pd.I', '198301022005012002', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS di lingkungan Kabupaten Jember Provinsi Jawa Timur'),
(854, 'SITI FATIMAH S.Pd.I', '197103272005012003', 'III/c', 'Penata', 'Guru Pertama Aqidah Akhlaq MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(855, 'SHONY KHOLIQIN ROFIQ. S.Pd.I', '197306222005011004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(856, 'MOH. KHOIRI, S.Pd.I', '196906122006041001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(857, 'TUNIYEM, S.Pd.I', '196606192006042002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MI Ma\'arif Darul Ulum Kencong Kabupaten Jember Provinsi Jawa Timur'),
(858, 'SANTI BUDI MIRAHATI, S.Pd.', '198204092005012004', 'III/c', 'Penata', 'Guru Muda Bidang Studi PPKN (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(859, 'EKO MOLYADI, S.Pd.I', '197401222005011003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(860, 'DWI RAHAYU, S.Pd', '197211142005012002', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(861, 'MASHATIN ROZIQOH, S.Pd.I', '198403172005012001', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS Al Huda Purwoasri Gumukmas Kabupaten Jember Provinsi Jawa Timur'),
(862, 'ELOK FAIQOTUS SOLIHA, S.Pd.I', '198301032005012004', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Miftahul Ulum Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(863, 'MARIDHOTUL HASANAH, S.Pd.I', '196903022005012001', 'III/c', 'Penata', 'Guru Muda/Guru Kelas pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(864, 'HARYONO, S.Pd.I', '197209172005011004', 'III/c', 'Penata', 'Guru Muda/bidang studi PAI pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(865, 'FAKRURROJI, S.Pd.I', '196703132005011003', 'III/c', 'Penata', 'Guru Muda/Bidang Studi PAI pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(866, 'ISTINWAROH, S.Pd.I', '196906012005012002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Bahasa Arab, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(867, 'YAYUK HASANAH, S.Pd.I', '197601292005012001', 'III/c', 'Penata', 'Guru Muda/Guru Kelas pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(868, 'SITI NUR CHASANAH, S.Pd.I', '197107032005012002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada MIS Laboratorium MAN 2 Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(869, 'ARIS ANA FIQIYAH RAHMAN, S.Pd.I', '198402162005012001', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada MIS HasanuddinKec. Puger dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(870, 'SITI MUJARI\'AH, S.Pd.', '196701102005012001', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(871, 'MUHALI, S.Pd.', '196610202000031004', 'III/c', 'Penata', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(872, 'KHUSNUL KHOTIMAH, S.Pd.I', '197208042005012003', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(873, 'NUR HADI IRAWAN, S.Pd.I, M.Pd.I', '197105042005011005', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(874, 'NUR HAYATI, S.Pd', '196908102005012005', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi BP/Konseling (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(875, 'NURLAILA, S.Pd.I', '196907072005012003', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI) / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(876, 'HERI SURYANTO, S.Pd.', '197006102005011004', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Penjaskes, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(877, 'NI\'MATUR ROHMAH, S.Pd', '197804042005012006', 'III/b', 'Penata Muda TK 1', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(878, 'LULUK KHOTIMAH, A.Ma.', '197208032003122003', 'III/b', 'Penata Muda TK 1', 'Guru Pertama / Guru Kelas, pada pada MIS Miftahul Ulum Kec. Sumbersari Kabupaten Jember Provinsi Jawa Timur Kabupaten Jember Provinsi Jawa Timur'),
(879, 'SURHAERI. S.Pd.I', '196904112005011002', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(880, 'ZAELANI, S.Pd.I', '197002272005011003', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Fiqih, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(881, 'DARMANTO, S.Pd.I', '197605012005011003', 'III/b', 'Penata Muda TK 1', 'Guru Pertama/Guru Kelas pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(882, 'ARGO PRIYONO. S.Pd.', '197204212005011002', 'III/b', 'Penata Muda TK 1', 'Guru Pertama / Guru Kelas, pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(883, 'RAHMAD WIDODO S.Pd.', '197505222005011004', 'III/b', 'Penata Muda TK 1', 'Guru Pertama / Guru Kelas, pada pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(884, 'MUNIP HADI SONNA, A.Ma', '196901042005011005', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Al-Qur\'an Hadits, pada MIS Al Husna Gambiran Kalisat di lingkungan Kabupaten Jember Provinsi Jawa Timur'),
(885, 'DWI RAHAYU AGUSTINI, S.Pd.', '198408092005012001', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi PPKN (Guru Kelas), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(886, 'LUTFI?', '197007152005011001', 'III/a', 'Penata Muda', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI), pada MIS dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(887, 'ENDANG ARISTU HANDAYANI, A.Ma', '197008272005012001', 'II/c', 'Pengantar', 'Guru Muda / Guru Kelas, pada MIS Ulum Kemiri I Kec. Panti dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(888, 'SUPIYATI, S.Pd.I', '197404152005012004', 'III/c', 'Penata', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI), pada RA/BA dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(889, 'LILIK WIDAYATI, S.Pd', '197103052005012002', 'III/c', 'Penata', 'Guru Muda / Guru Kelas, pada pada RA/BA Dewi Masitoh MUslimat NU dilingkungan Kabupaten Jember Provinsi Jawa Timur');
INSERT INTO `data_pegawai` (`id_pegawai`, `nama`, `nip`, `gol`, `pangkat`, `jabatan`) VALUES
(890, 'Dra. NURUL HIDAYATI?', '196912111994032002', 'IV/a', 'Pembina', 'Guru Madya mengajar Bidang Studi Pendidikan Agama Islam pada SLTA Negeri 1 Jember Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(891, 'MUSRIYATUN, S.Ag', '196610182000032001', 'III/d', 'Penata TK 1', 'Guru Muda SLTP Negeri dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(892, 'NURUL HASAN, S.Pd.I', '196507012005011003', 'III/b', 'Penata Muda TK 1', 'Guru Pertama Bidang Studi Pendidikan Agama Islam (PAI), pada SLTP Negeri 3 Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(893, 'LILIK SHOLEHATI, S.Ag.', '197108012005012001', 'III/d', 'Penata TK 1', 'Guru Muda Bidang Studi Pendidikan Agama Islam (PAI), pada SDN Klatakan 1 Kec. Tanggul Kabupaten Jember Provinsi Jawa Timur'),
(894, 'DWI ATMINI, S.Pd., S.Th.', '196412172000122003', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Kristen, pada SD Negeri Karangrejo 02 Kec. Sumbersari Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(895, 'SUTIJAH, S.Ag.', '196912102000032002', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Buddha, pada SD Negeri Patrang II Kec. Patrang Kementerian Agama Kabupaten Jember Provinsi Jawa Timur'),
(896, 'KATIMIN, S.Ag', '196602152000031002', 'III/c', 'Penata', 'Guru Muda SD Negeri dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(897, 'KATMIARSIH S.Ag', '197107152000032001', 'III/c', 'Penata', 'Guru Muda SD Negeri dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(898, 'SUTARNO S.Ag.', '196812252000031001', 'III/c', 'Penata', 'Guru Muda Bidang Studi Pendidikan Agama Buddha, pada SD Negeri dilingkungan Kabupaten Jember Provinsi Jawa Timur'),
(899, 'SAMAN S.Pd', '196812152005011001', 'III/b', 'Penata Muda TK 1', 'Guru Pratama pada SDN Tegal Waru 03 Mayang di lingkungan Kab. Jember Prov. Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `m_kabko`
--

CREATE TABLE `m_kabko` (
  `id` int(2) NOT NULL,
  `kode_kabko` varchar(4) NOT NULL,
  `kode_kabkolama` varchar(4) DEFAULT NULL,
  `kabko` varchar(50) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon_fax` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kabko`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `m_kodeklasifikasi`
--

CREATE TABLE `m_kodeklasifikasi` (
  `id` int(11) NOT NULL,
  `klasifikasi1` varchar(50) NOT NULL DEFAULT '0',
  `klasifikasi2` varchar(50) NOT NULL DEFAULT '0',
  `klasifikasi3` varchar(50) NOT NULL DEFAULT '0',
  `nama_klasifikasi` varchar(150) NOT NULL DEFAULT '0',
  `uraian_klasifikasi` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kodeklasifikasi`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `m_man`
--

CREATE TABLE `m_man` (
  `id` int(11) NOT NULL,
  `id_kabko` int(5) NOT NULL DEFAULT '0',
  `nsm` varchar(11) NOT NULL DEFAULT '0',
  `nama_man` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_man`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `m_ppk`
--

CREATE TABLE `m_ppk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `wilayah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_ppk`
--

INSERT INTO `m_ppk` (`id`, `nama`, `nip`, `wilayah`) VALUES
(1, 'Misbakul Munir', '198606192011011005', 'Ditjn Bimas Islam Bimas Islam'),
(2, 'Ahmad Tholabi', '196106051986031005', 'Sub Bagian Tata Usaha dan Ditjen PHU\r\n'),
(3, 'Erwyn Sulthony', '196903062000031002', 'Ditjen Pendidikan Islam\r\n'),
(4, 'Tyas Suka Trisuwita', '197007092000031001', 'Ditjen Kristen\r\n'),
(5, 'Pitono', '197207052005011004', 'PPK Pengadaan');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `perihal` varchar(100) NOT NULL DEFAULT '0',
  `isi` varchar(500) NOT NULL DEFAULT '0',
  `file_pengumuman` varchar(100) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `username`, `name`, `perihal`, `isi`, `file_pengumuman`, `date`) VALUES
(1, 'adminkabko', 'Adminnya KabKo', 'Tutorial', 'Tutorial Aplikasi Surat Kab.Tuban', '14b26-materi-tuban.pdf', '2018-05-13 14:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `ref_asalsurat`
--

CREATE TABLE `ref_asalsurat` (
  `id` int(11) NOT NULL,
  `asal_surat` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_asalsurat`
--

INSERT INTO `ref_asalsurat` (`id`, `asal_surat`) VALUES
(1, 'Kabko'),
(2, 'MAN'),
(3, 'lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `ref_bidang`
--

CREATE TABLE `ref_bidang` (
  `id` int(11) NOT NULL,
  `kode_suratbidang` varchar(15) NOT NULL DEFAULT '0',
  `kode_bidangcek` varchar(50) NOT NULL DEFAULT '0',
  `nama_bidang` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_bidang`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `ref_jabatan`
--

CREATE TABLE `ref_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_jabatan`
--

INSERT INTO `ref_jabatan` (`id`, `jabatan`) VALUES
(1001, 'Kepala Kantor'),
(1002, 'Kasi/kasubag'),
(1003, 'Pelaksana');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jenissurat`
--

CREATE TABLE `ref_jenissurat` (
  `id` int(11) NOT NULL,
  `buku` int(11) DEFAULT '0',
  `id_bidang` int(11) DEFAULT '0',
  `jenissurat` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_jenissurat`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `ref_seksi`
--

CREATE TABLE `ref_seksi` (
  `id` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL DEFAULT '0',
  `kode_suratseksi` varchar(5) NOT NULL DEFAULT '0',
  `kode_seksicek` varchar(10) NOT NULL DEFAULT '0',
  `nama_seksi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_seksi`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `ref_sifat`
--

CREATE TABLE `ref_sifat` (
  `id` int(11) NOT NULL,
  `nama_sifat` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_sifat`
--

INSERT INTO `ref_sifat` (`id`, `nama_sifat`) VALUES
(1, 'Biasa'),
(2, 'Penting'),
(3, 'Segera'),
(4, 'Rahasia');

-- --------------------------------------------------------

--
-- Table structure for table `t_chatpersonal`
--

CREATE TABLE `t_chatpersonal` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kirim` int(11) NOT NULL DEFAULT '0',
  `id_terima` int(11) NOT NULL DEFAULT '0',
  `pesan` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_chatroom`
--

CREATE TABLE `t_chatroom` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT NULL,
  `id_rules` int(11) NOT NULL DEFAULT '0',
  `pesan` varchar(255) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_chatroom`
--

INSERT INTO `t_chatroom` (`id`, `username`, `nama`, `foto`, `id_rules`, `pesan`, `date`) VALUES
(1, 'fihani', 'Fitri Raihani Rasmana', '951d4-untitled.png', 1, 'Testing  Chat Room...', '2018-03-04 10:00:37'),
(2, 'adminkabko', 'Adminnya KabKo', 'f2cfd-demo.png', 1001, 'hallo', '2018-05-09 09:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `t_disposisi`
--

CREATE TABLE `t_disposisi` (
  `id` int(11) NOT NULL,
  `id_suratmasuk` int(11) NOT NULL DEFAULT '0',
  `id_pemberi` int(11) NOT NULL DEFAULT '0',
  `id_penerima` int(11) NOT NULL DEFAULT '0',
  `tanggal_disposisi` date NOT NULL,
  `catatan_disposisi` varchar(150) NOT NULL,
  `id_userdisposisi` int(11) NOT NULL,
  `tanggal_rekamdisposisi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_disposisi`
--

INSERT INTO `t_disposisi` (`id`, `id_suratmasuk`, `id_pemberi`, `id_penerima`, `tanggal_disposisi`, `catatan_disposisi`, `id_userdisposisi`, `tanggal_rekamdisposisi`) VALUES
(1, 1, 1005, 1004, '2018-05-13', 'TL', 1002, '2018-05-13 07:41:00'),
(2, 1, 1004, 1003, '2018-05-15', 'TL', 1004, '2018-05-13 13:25:08'),
(3, 1, 1003, 1003, '2018-05-14', 'Sudah di TL', 1003, '2018-05-13 13:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `t_suratdinas`
--

CREATE TABLE `t_suratdinas` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `dasar` varchar(255) NOT NULL,
  `nomorsuratundangan` varchar(100) NOT NULL,
  `kode_devisi` int(11) NOT NULL,
  `tingkat_biaya` varchar(50) NOT NULL,
  `maksud` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `alat_angkut` varchar(50) NOT NULL,
  `tempat_berangkat` varchar(100) NOT NULL,
  `tempat_tujuan` varchar(100) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `id_ppk` int(11) NOT NULL,
  `tanggal_pembuatan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_suratdinas`
--

INSERT INTO `t_suratdinas` (`id`, `id_pegawai`, `pangkat`, `dasar`, `nomorsuratundangan`, `kode_devisi`, `tingkat_biaya`, `maksud`, `tempat`, `alat_angkut`, `tempat_berangkat`, `tempat_tujuan`, `tanggal_awal`, `tanggal_akhir`, `atas_nama`, `id_ppk`, `tanggal_pembuatan`) VALUES
(1, 41, 'Penata Muda Tk I', 'Brosur Workshop ITS Surabaya', '45', 82, 'C', 'Manghadiri Sebagai Peserta Kegiatan Workshop Business Intellegence and Data Crawling', 'Ruang AJ201, Gedung Teknik Elektro, Kampus ITS Surabaya. Jl. Raya ITS Surabaya', 'Kendaraan Umum', 'Jember', 'Sidoarjo', '2018-11-06', '2018-11-06', 'Kepala kemenag', 2, '2018-11-06 06:36:59'),
(2, 0, 'a', 'aa', '', 142, 'asd', 'a', 'aa', 'as', 'as', 'as', '2018-11-01', '2018-11-02', 'Kepala kemenag', 2, '2018-11-06 06:49:22'),
(3, 0, 'ndak tau', 'jalan-jalan', '', 0, 'murah', 'bermain', 'jalan buntu', 'sepeda', 'jember', 'surabaya', '2018-11-07', '2018-11-08', 'Kasubbag', 3, '2018-11-07 01:40:57'),
(4, 0, 'a', 'a', '', 4, 'a', 'a', 'a', 'a', 'a', 'a', '2018-11-14', '2018-11-14', 'Kepala kemenag', 4, '2018-11-14 04:32:32'),
(5, 11, '', 'surat kepala kanwil kemnag jatim', '112', 20, 'c', 'rapat koordinasi', 'jalan apa', 'mobil', 'jember', 'surabaya', '2018-12-13', '2018-12-14', 'Kasubbag', 2, '2018-12-13 07:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `t_suratkeluar`
--

CREATE TABLE `t_suratkeluar` (
  `id` int(11) NOT NULL,
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
  `kode_kabko` varchar(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_suratkeluar`
--

INSERT INTO `t_suratkeluar` (`id`, `id_kodeklasifikasi`, `id_tujuansurat`, `penerima`, `id_jenissurat`, `nomor_surat`, `perihal`, `indeks_surat`, `tanggal_surat`, `tanggal_rekam`, `id_sifat`, `lampiran`, `id_user`, `file_suratkeluar`, `catatan_BO`, `status_BO`, `kode_kabko`) VALUES
(1, 158, 3, 'Dinas Pendidikan', 1, 1, 'Undangan USBN', 'usbn', '2018-05-13', '2018-05-13', 2, '-', 1003, 'db2ff-logo-kemkeu-igggd.png', '<p>\r\n	ok</p>\r\n', 0, '1317'),
(2, 24, 3, 'ybs', 4, 1, 'Surat Tugas ke Kanwil', 'Surat Tugas', '2018-05-13', '2018-05-13', 2, '-', 1003, '9843a-book1.xlsx', NULL, 0, '1317');

-- --------------------------------------------------------

--
-- Table structure for table `t_suratmasuk`
--

CREATE TABLE `t_suratmasuk` (
  `id` int(11) NOT NULL,
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
  `kode_kabko` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_suratmasuk`
--

INSERT INTO `t_suratmasuk` (`id`, `id_asalsurat`, `pengirim`, `nomor_surat`, `perihal`, `indeks_berkas`, `id_sifat`, `lampiran`, `id_user`, `file_suratmasuk`, `tanggal_surat`, `tanggal_rekam`, `terima_sekkab`, `kode_kabko`) VALUES
(1, 3, 'Dinas Pendidikan', '12345678', 'Jadwal USBN', 'usbn', '2', '-', 1002, 'b8c3c-surat-pernyataan.docx', '2018-05-13', '2018-05-13', 0, '1317'),
(2, 3, 'Dinas Pendidikan Kabupaten Tuban', '1234567890', 'Undangan Rapat Koordinasi Pelaksaaan Ujian', 'Undangan', '2', '-', 1002, '66645-surat-pernyataan-gresik.docx', '2018-05-10', '2018-05-13', 0, '1317');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(3) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_paswd` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `role` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `nama`, `u_name`, `u_paswd`, `role`) VALUES
(3, 'User admin', 'User', '21232f297a57a5a743894a0e4a801fc3', 'User'),
(4, 'andrian', 'andrianext', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_rules` int(1) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_seksi` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_rules`, `name`, `username`, `password`, `id_bidang`, `id_seksi`, `id_jabatan`, `status`, `ket`, `foto`) VALUES
(1001, 1001, 'admin', 'admin', 'admin', 1000, 0, 0, 1, NULL, 'f2cfd-demo.png'),
(1002, 1002, 'sekretaris', 'sekretaris', 'sekretaris', 1000, 1001, 1003, 1, 'sekre', '92b13-578ce64bdd725-sunder-the-handsome.png'),
(1003, 1004, 'pengguna', 'pengguna', 'pengguna', 1000, 1003, 1003, 1, NULL, '4df2d-demo.png'),
(1004, 1003, 'kasi', 'kasi', 'kasi', 1000, 1003, 1002, 1, NULL, '139e2-demo.png'),
(1005, 1002, 'Kepala Kantor', 'kepala', 'kepala', 1000, NULL, 1001, 1, NULL, NULL),
(1006, 0, 'asd', NULL, '', 1000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_rules`
--

CREATE TABLE `users_rules` (
  `id` int(100) NOT NULL,
  `rules` varchar(50) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_rules`
--

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_disposisi`
-- (See below for the actual view)
--
CREATE TABLE `v_disposisi` (
`id` int(11)
,`id_suratmasuk` int(11)
,`id_pemberi` int(11)
,`id_penerima` int(11)
,`tanggal_disposisi` date
,`catatan_disposisi` varchar(150)
,`id_userdisposisi` int(11)
,`tanggal_rekamdisposisi` datetime
,`id_pemberi_bidang` int(11)
,`id_pemberi_seksi` int(11)
,`id_pemberi_jabatan` int(11)
,`id_penerima_bidang` int(11)
,`id_penerima_seksi` int(11)
,`id_penerima_jabatan` int(11)
,`id_asalsurat` int(11)
,`pengirim` varchar(255)
,`nomor_surat` varchar(50)
,`perihal` varchar(255)
,`indeks_berkas` varchar(50)
,`tanggal_surat` date
,`tanggal_rekam` date
,`id_sifat` varchar(50)
,`lampiran` varchar(50)
,`id_user` int(11)
,`file_suratmasuk` varchar(255)
,`kode_kabko` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_disposisi_id_last`
-- (See below for the actual view)
--
CREATE TABLE `v_disposisi_id_last` (
`id_suratmasuk` int(11)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_disposisi_last`
-- (See below for the actual view)
--
CREATE TABLE `v_disposisi_last` (
`id` int(11)
,`id_suratmasuk` int(11)
,`id_pemberi` int(11)
,`id_penerima` int(11)
,`tanggal_disposisi` date
,`catatan_disposisi` varchar(150)
,`id_userdisposisi` int(11)
,`tanggal_rekamdisposisi` datetime
,`id_pemberi_bidang` int(11)
,`id_pemberi_seksi` int(11)
,`id_pemberi_jabatan` int(11)
,`id_penerima_bidang` int(11)
,`id_penerima_seksi` int(11)
,`id_penerima_jabatan` int(11)
,`id_asalsurat` int(11)
,`pengirim` varchar(255)
,`nomor_surat` varchar(50)
,`perihal` varchar(255)
,`indeks_berkas` varchar(50)
,`tanggal_surat` date
,`tanggal_rekam` date
,`id_sifat` varchar(50)
,`lampiran` varchar(50)
,`id_user` int(11)
,`file_suratmasuk` varchar(255)
,`kode_kabko` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_suratkeluar`
-- (See below for the actual view)
--
CREATE TABLE `v_suratkeluar` (
`id` int(11)
,`id_kodeklasifikasi` int(11)
,`id_tujuansurat` int(11)
,`penerima` varchar(255)
,`id_jenissurat` int(11)
,`nomor_surat` int(11)
,`perihal` varchar(100)
,`indeks_surat` varchar(50)
,`tanggal_surat` date
,`tanggal_rekam` date
,`id_sifat` int(11)
,`lampiran` varchar(50)
,`id_user` int(11)
,`file_suratkeluar` varchar(255)
,`catatan_BO` text
,`status_BO` int(11)
,`kode_kabko` varchar(5)
,`id_bidang` int(11)
,`id_seksi` int(11)
,`id_jabatan` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_suratmasuk_posisi`
-- (See below for the actual view)
--
CREATE TABLE `v_suratmasuk_posisi` (
`kode_kabko` varchar(5)
,`id` int(11)
,`id_asalsurat` int(11)
,`pengirim` varchar(255)
,`nomor_surat` varchar(50)
,`perihal` varchar(255)
,`indeks_berkas` varchar(50)
,`tanggal_surat` date
,`tanggal_rekam` date
,`id_sifat` varchar(50)
,`file_suratmasuk` varchar(255)
,`id_pemberi` int(11)
,`id_penerima` int(11)
,`tanggal_disposisi` date
,`catatan_disposisi` varchar(150)
,`id_penerima_bidang` int(11)
,`id_penerima_seksi` int(11)
,`terima_sekkab` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_users`
-- (See below for the actual view)
--
CREATE TABLE `v_users` (
`id` int(11)
,`id_rules` int(1)
,`name` varchar(50)
,`username` varchar(50)
,`password` varchar(50)
,`id_bidang` int(11)
,`id_seksi` int(11)
,`id_jabatan` int(11)
,`status` int(11)
,`ket` varchar(200)
,`foto` varchar(200)
,`kode_bidangcek` varchar(50)
,`nama_bidang` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `v_disposisi`
--
DROP TABLE IF EXISTS `v_disposisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi`  AS  select `d`.`id` AS `id`,`d`.`id_suratmasuk` AS `id_suratmasuk`,`d`.`id_pemberi` AS `id_pemberi`,`d`.`id_penerima` AS `id_penerima`,`d`.`tanggal_disposisi` AS `tanggal_disposisi`,`d`.`catatan_disposisi` AS `catatan_disposisi`,`d`.`id_userdisposisi` AS `id_userdisposisi`,`d`.`tanggal_rekamdisposisi` AS `tanggal_rekamdisposisi`,`u1`.`id_bidang` AS `id_pemberi_bidang`,`u1`.`id_seksi` AS `id_pemberi_seksi`,`u1`.`id_jabatan` AS `id_pemberi_jabatan`,`u2`.`id_bidang` AS `id_penerima_bidang`,`u2`.`id_seksi` AS `id_penerima_seksi`,`u2`.`id_jabatan` AS `id_penerima_jabatan`,`sm`.`id_asalsurat` AS `id_asalsurat`,`sm`.`pengirim` AS `pengirim`,`sm`.`nomor_surat` AS `nomor_surat`,`sm`.`perihal` AS `perihal`,`sm`.`indeks_berkas` AS `indeks_berkas`,`sm`.`tanggal_surat` AS `tanggal_surat`,`sm`.`tanggal_rekam` AS `tanggal_rekam`,`sm`.`id_sifat` AS `id_sifat`,`sm`.`lampiran` AS `lampiran`,`sm`.`id_user` AS `id_user`,`sm`.`file_suratmasuk` AS `file_suratmasuk`,`sm`.`kode_kabko` AS `kode_kabko` from (((`t_disposisi` `d` join `users` `u1`) join `users` `u2`) join `t_suratmasuk` `sm`) where ((`d`.`id_pemberi` = `u1`.`id`) and (`d`.`id_penerima` = `u2`.`id`) and (`d`.`id_suratmasuk` = `sm`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_disposisi_id_last`
--
DROP TABLE IF EXISTS `v_disposisi_id_last`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi_id_last`  AS  select `t_disposisi`.`id_suratmasuk` AS `id_suratmasuk`,max(`t_disposisi`.`id`) AS `id` from `t_disposisi` group by `t_disposisi`.`id_suratmasuk` ;

-- --------------------------------------------------------

--
-- Structure for view `v_disposisi_last`
--
DROP TABLE IF EXISTS `v_disposisi_last`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_disposisi_last`  AS  select `d`.`id` AS `id`,`d`.`id_suratmasuk` AS `id_suratmasuk`,`d`.`id_pemberi` AS `id_pemberi`,`d`.`id_penerima` AS `id_penerima`,`d`.`tanggal_disposisi` AS `tanggal_disposisi`,`d`.`catatan_disposisi` AS `catatan_disposisi`,`d`.`id_userdisposisi` AS `id_userdisposisi`,`d`.`tanggal_rekamdisposisi` AS `tanggal_rekamdisposisi`,`d`.`id_pemberi_bidang` AS `id_pemberi_bidang`,`d`.`id_pemberi_seksi` AS `id_pemberi_seksi`,`d`.`id_pemberi_jabatan` AS `id_pemberi_jabatan`,`d`.`id_penerima_bidang` AS `id_penerima_bidang`,`d`.`id_penerima_seksi` AS `id_penerima_seksi`,`d`.`id_penerima_jabatan` AS `id_penerima_jabatan`,`d`.`id_asalsurat` AS `id_asalsurat`,`d`.`pengirim` AS `pengirim`,`d`.`nomor_surat` AS `nomor_surat`,`d`.`perihal` AS `perihal`,`d`.`indeks_berkas` AS `indeks_berkas`,`d`.`tanggal_surat` AS `tanggal_surat`,`d`.`tanggal_rekam` AS `tanggal_rekam`,`d`.`id_sifat` AS `id_sifat`,`d`.`lampiran` AS `lampiran`,`d`.`id_user` AS `id_user`,`d`.`file_suratmasuk` AS `file_suratmasuk`,`d`.`kode_kabko` AS `kode_kabko` from (`v_disposisi` `d` join `v_disposisi_id_last` `idl`) where (`d`.`id` = `idl`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_suratkeluar`
--
DROP TABLE IF EXISTS `v_suratkeluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_suratkeluar`  AS  select `sk`.`id` AS `id`,`sk`.`id_kodeklasifikasi` AS `id_kodeklasifikasi`,`sk`.`id_tujuansurat` AS `id_tujuansurat`,`sk`.`penerima` AS `penerima`,`sk`.`id_jenissurat` AS `id_jenissurat`,`sk`.`nomor_surat` AS `nomor_surat`,`sk`.`perihal` AS `perihal`,`sk`.`indeks_surat` AS `indeks_surat`,`sk`.`tanggal_surat` AS `tanggal_surat`,`sk`.`tanggal_rekam` AS `tanggal_rekam`,`sk`.`id_sifat` AS `id_sifat`,`sk`.`lampiran` AS `lampiran`,`sk`.`id_user` AS `id_user`,`sk`.`file_suratkeluar` AS `file_suratkeluar`,`sk`.`catatan_BO` AS `catatan_BO`,`sk`.`status_BO` AS `status_BO`,`sk`.`kode_kabko` AS `kode_kabko`,`u`.`id_bidang` AS `id_bidang`,`u`.`id_seksi` AS `id_seksi`,`u`.`id_jabatan` AS `id_jabatan` from (`t_suratkeluar` `sk` join `users` `u` on((`sk`.`id_user` = `u`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_suratmasuk_posisi`
--
DROP TABLE IF EXISTS `v_suratmasuk_posisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_suratmasuk_posisi`  AS  select `sm`.`kode_kabko` AS `kode_kabko`,`sm`.`id` AS `id`,`sm`.`id_asalsurat` AS `id_asalsurat`,`sm`.`pengirim` AS `pengirim`,`sm`.`nomor_surat` AS `nomor_surat`,`sm`.`perihal` AS `perihal`,`sm`.`indeks_berkas` AS `indeks_berkas`,`sm`.`tanggal_surat` AS `tanggal_surat`,`sm`.`tanggal_rekam` AS `tanggal_rekam`,`sm`.`id_sifat` AS `id_sifat`,`sm`.`file_suratmasuk` AS `file_suratmasuk`,`dl`.`id_pemberi` AS `id_pemberi`,`dl`.`id_penerima` AS `id_penerima`,`dl`.`tanggal_disposisi` AS `tanggal_disposisi`,`dl`.`catatan_disposisi` AS `catatan_disposisi`,`dl`.`id_penerima_bidang` AS `id_penerima_bidang`,`dl`.`id_penerima_seksi` AS `id_penerima_seksi`,`sm`.`terima_sekkab` AS `terima_sekkab` from (`t_suratmasuk` `sm` left join `v_disposisi_last` `dl` on((`sm`.`id` = `dl`.`id_suratmasuk`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_users`
--
DROP TABLE IF EXISTS `v_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_users`  AS  select `users`.`id` AS `id`,`users`.`id_rules` AS `id_rules`,`users`.`name` AS `name`,`users`.`username` AS `username`,`users`.`password` AS `password`,`users`.`id_bidang` AS `id_bidang`,`users`.`id_seksi` AS `id_seksi`,`users`.`id_jabatan` AS `id_jabatan`,`users`.`status` AS `status`,`users`.`ket` AS `ket`,`users`.`foto` AS `foto`,`ref_bidang`.`kode_bidangcek` AS `kode_bidangcek`,`ref_bidang`.`nama_bidang` AS `nama_bidang` from (`users` left join `ref_bidang` on((`users`.`id_bidang` = `ref_bidang`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `m_kabko`
--
ALTER TABLE `m_kabko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kodeklasifikasi`
--
ALTER TABLE `m_kodeklasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_man`
--
ALTER TABLE `m_man`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_ppk`
--
ALTER TABLE `m_ppk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_asalsurat`
--
ALTER TABLE `ref_asalsurat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_bidang`
--
ALTER TABLE `ref_bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_jenissurat`
--
ALTER TABLE `ref_jenissurat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_seksi`
--
ALTER TABLE `ref_seksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_sifat`
--
ALTER TABLE `ref_sifat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_chatpersonal`
--
ALTER TABLE `t_chatpersonal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_chatroom`
--
ALTER TABLE `t_chatroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_disposisi`
--
ALTER TABLE `t_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_suratdinas`
--
ALTER TABLE `t_suratdinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_suratkeluar`
--
ALTER TABLE `t_suratkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_suratmasuk`
--
ALTER TABLE `t_suratmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_rules`
--
ALTER TABLE `users_rules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT for table `m_kabko`
--
ALTER TABLE `m_kabko`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `m_kodeklasifikasi`
--
ALTER TABLE `m_kodeklasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `m_man`
--
ALTER TABLE `m_man`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `m_ppk`
--
ALTER TABLE `m_ppk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_asalsurat`
--
ALTER TABLE `ref_asalsurat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_bidang`
--
ALTER TABLE `ref_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1339;

--
-- AUTO_INCREMENT for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `ref_jenissurat`
--
ALTER TABLE `ref_jenissurat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `ref_seksi`
--
ALTER TABLE `ref_seksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `ref_sifat`
--
ALTER TABLE `ref_sifat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_chatpersonal`
--
ALTER TABLE `t_chatpersonal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_chatroom`
--
ALTER TABLE `t_chatroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_disposisi`
--
ALTER TABLE `t_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_suratdinas`
--
ALTER TABLE `t_suratdinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_suratkeluar`
--
ALTER TABLE `t_suratkeluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_suratmasuk`
--
ALTER TABLE `t_suratmasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `users_rules`
--
ALTER TABLE `users_rules`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
