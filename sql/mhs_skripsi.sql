-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 04:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhs_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftarujian`
--

CREATE TABLE `daftarujian` (
  `id_skripsi` int(11) NOT NULL,
  `data_skripsi` varchar(500) NOT NULL,
  `sertifikat_toefel` varchar(500) NOT NULL,
  `ujikom` varchar(500) NOT NULL,
  `ijazah` varchar(500) NOT NULL,
  `nilai_krs` varchar(500) NOT NULL,
  `sertifikat_kegiatan` varchar(500) NOT NULL,
  `kartu_bimbingan` varchar(500) NOT NULL,
  `seminar_proposal` varchar(500) NOT NULL,
  `reboan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftarujian`
--

INSERT INTO `daftarujian` (`id_skripsi`, `data_skripsi`, `sertifikat_toefel`, `ujikom`, `ijazah`, `nilai_krs`, `sertifikat_kegiatan`, `kartu_bimbingan`, `seminar_proposal`, `reboan`) VALUES
(1, '', 'toefel.pdf', 'ujikom.pdf', 'ijazah.pdf', 'nilai.pdf', 'kegiatan.pdf', 'bimbingan.pdf', 'seminar.pdf', 'reboan.pdf'),
(2, 'iot', 'toefel.pdf', 'ujokim.pdf', 'ijazah.pdf', 'niai.pdf', 'kegiatan.pdf', 'bimbingan.pdf', 'seminar.pdf', 'reboan.pdf'),
(3, 'tes', 'pdf.pdf', 'dfghj.pdf', 'PPP.pdf', 'kkk.pdf', 'lll.pdf', 'oo.pdf', 'uu.pdf', 'll.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nip` char(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `matkul_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nip`, `nama_dosen`, `email`, `matkul_id`) VALUES
(1, '12345678', 'Koro Sensei', 'korosensei@gmail.com', 1),
(3, '01234567', 'Tobirama Sensei', 'tobirama@gmail.com', 5),
(4, '22222222', 'Awis', 'awis@dosen.com', 2),
(5, '09876543', 'retno', 'retno@gmail.com', 3),
(6, '123454321', 'apip', 'apip@gmail.com', 2);

--
-- Triggers `dosen`
--
DELIMITER $$
CREATE TRIGGER `edit_user_dosen` BEFORE UPDATE ON `dosen` FOR EACH ROW UPDATE `users` SET `email` = NEW.email, `username` = NEW.nip WHERE `users`.`username` = OLD.nip
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_user_dosen` BEFORE DELETE ON `dosen` FOR EACH ROW DELETE FROM `users` WHERE `users`.`username` = OLD.nip
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dospem`
--

CREATE TABLE `dospem` (
  `id_dosen` int(11) NOT NULL,
  `nama_dospem` varchar(500) NOT NULL,
  `dosen_tamu` varchar(500) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dospem`
--

INSERT INTO `dospem` (`id_dosen`, `nama_dospem`, `dosen_tamu`, `keterangan`) VALUES
(12, 'pou', 'pou', ''),
(13, 'Afif Hendrawan', 'afifah retn', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'dosen', 'Pembuat Soal dan ujian'),
(3, 'mahasiswa', 'Peserta Ujian');

-- --------------------------------------------------------

--
-- Table structure for table `h_ujian`
--

CREATE TABLE `h_ujian` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(11) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `h_ujian`
--

INSERT INTO `h_ujian` (`id`, `ujian_id`, `mahasiswa_id`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(1, 1, 1, '1,2,3', '1:B:N,2:A:N,3:D:N', 3, '100.00', '100.00', '2019-02-16 08:35:05', '2019-02-16 08:36:05', 'N'),
(2, 2, 1, '3,2,1', '3:D:N,2:C:N,1:D:N', 1, '33.00', '100.00', '2019-02-16 10:11:14', '2019-02-16 10:12:14', 'N'),
(3, 3, 1, '5,6', '5:C:N,6:D:N', 2, '100.00', '100.00', '2019-02-16 11:06:25', '2019-02-16 11:07:25', 'N'),
(5, 4, 2, '9,7,8', '9:C:N,7:E:N,8:A:N', 2, '66.00', '3.00', '2021-06-15 08:05:12', '2021-06-15 08:10:12', 'N'),
(6, 7, 3, '12,7', '12:D:N,7:C:N', 0, '0.00', '2.00', '2021-07-28 08:33:29', '2021-07-28 10:13:28', 'N'),
(7, 8, 3, '12', '12:B:N', 0, '0.00', '0.00', '2021-07-28 09:04:55', '2021-07-28 10:04:55', 'Y'),
(8, 9, 3, '7,8', '7:B:N,8:C:N', 0, '0.00', '4.00', '2021-07-28 09:06:30', '2021-07-28 09:08:30', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknik Informatika'),
(3, 'pou'),
(5, 'yu'),
(7, 'trtr');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan_matkul`
--

CREATE TABLE `jurusan_matkul` (
  `id` int(11) NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jurusan_matkul`
--

INSERT INTO `jurusan_matkul` (`id`, `matkul_id`, `jurusan_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(6, 5, 2),
(7, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `jurusan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jurusan_id`) VALUES
(1, '12.1E.13', 1),
(2, '11.1A.13', 1),
(3, '10.1D.13', 1),
(7, '12.1A.10', 2),
(8, '12.1B.10', 2),
(9, 'Kelas Website', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_dosen`
--

CREATE TABLE `kelas_dosen` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas_dosen`
--

INSERT INTO `kelas_dosen` (`id`, `kelas_id`, `dosen_id`) VALUES
(11, 9, 3),
(12, 9, 1),
(19, 8, 4),
(20, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE `keterangan` (
  `komentar` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` char(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kelas_id` int(11) NOT NULL COMMENT 'kelas&jurusan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `email`, `jenis_kelamin`, `kelas_id`) VALUES
(1, 'Muhammad Ghifari Arfananda', '12183018', 'mghifariarfan@gmail.com', 'L', 8),
(2, 'Muhammad Abdurrohman Alhafidh', '12111001', 'hafidz@gmail.com', 'L', 9),
(3, 'afifah', '19030033', 'afifah@gmail.com', 'P', 9),
(4, 'ppp', '190876509', 'pp@gmail.com', 'P', 1);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`) VALUES
(1, 'Bahasa Inggris'),
(2, 'Dasar Pemrograman'),
(3, 'Enterpreneurship'),
(5, 'Matematika Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `m_ujian`
--

CREATE TABLE `m_ujian` (
  `id_ujian` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `jenis` enum('acak','urut') NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_ujian`
--

INSERT INTO `m_ujian` (`id_ujian`, `dosen_id`, `matkul_id`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(1, 1, 1, 'First Test', 3, 1, 'acak', '2019-02-15 17:25:40', '2019-02-20 17:25:44', 'DPEHL'),
(2, 1, 1, 'Second Test', 3, 1, 'acak', '2019-02-16 10:05:08', '2019-02-17 10:05:10', 'GOEMB'),
(3, 3, 5, 'Try Out 01', 2, 1, 'acak', '2019-02-16 07:00:00', '2019-02-28 14:00:00', 'IFSDH'),
(4, 4, 2, 'Percobaan Ujian', 3, 5, 'acak', '2021-06-15 04:28:53', '2021-06-15 08:28:59', 'CMLWF'),
(5, 5, 3, 'tes', 1, 5, 'urut', '2021-07-21 10:02:18', '2021-07-21 10:10:24', 'JAQSU'),
(6, 5, 3, 'tes', 2, 50, 'acak', '2021-07-28 08:28:34', '2021-07-30 08:28:40', 'BJFPC'),
(7, 4, 2, 'tes', 2, 100, 'acak', '2021-07-28 08:32:44', '2021-07-30 08:32:46', 'JXEXU'),
(8, 4, 2, 'part1', 1, 60, 'acak', '2021-07-28 09:04:18', '2021-07-30 09:04:21', 'PVHLN'),
(9, 4, 2, 'part2', 2, 2, 'urut', '2021-07-28 09:05:35', '2021-07-30 09:05:37', 'DVAMQ');

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id_seminar` int(11) NOT NULL,
  `proposal_skripsi` varchar(500) NOT NULL,
  `bukti_acc` varchar(500) NOT NULL,
  `kartu_bimbingan` varchar(500) NOT NULL,
  `kartu_sempro` varchar(500) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id_seminar`, `proposal_skripsi`, `bukti_acc`, `kartu_bimbingan`, `kartu_sempro`, `keterangan`) VALUES
(1, 'iot', 'acc.pdf', 'kartu.pdf', 'kartu2.pdf', 'lulus'),
(2, '6-dikonversi.pdf', '6-dikonversi.pdf', '6-dikonversi.pdf', '6-dikonversi.pdf', 'asa'),
(3, '6-dikonversi.pdf', '6-dikonversi.pdf', '6-dikonversi.pdf', 'ci_online_test-sql database(1).zip', 'ok'),
(4, '', '', '', '', 'luuls'),
(5, '6-dikonversi.pdf', '6-dikonversi.pdf', '6-dikonversi.pdf', '6-dikonversi.pdf', 'lulus'),
(6, 'CCNA_RSE_Chp1 Indonesia.pdf', 'Abstract Focus _ by Slidesgo.pptx', '178-Article Text-263-1-10-20180622.pdf', 'd3 ti 2a (4).png', 'skripsi'),
(7, 'Notes_201018_211506_d2e.pdf', 'pengajuan.docx', 'Notes_201018_211506_d2e.pdf', 'pengajuan.docx', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id_judulskripsi` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `transkip_nilai` varchar(50) NOT NULL,
  `krs_terakhir` varchar(50) NOT NULL,
  `proposal_skripsi` varchar(50) NOT NULL,
  `jurnal_internasional3` varchar(50) NOT NULL,
  `jurnal_nasional3` varchar(50) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id_judulskripsi`, `nama`, `judul`, `transkip_nilai`, `krs_terakhir`, `proposal_skripsi`, `jurnal_internasional3`, `jurnal_nasional3`, `keterangan`, `status`) VALUES
(1, '', 'tes judul', 'nilai.pdf', 'krs.pdf', 'proposal.pdf', 'jurnal.pdf', 'jurnal2.pdf', '', ''),
(2, '', 'tes judul', 'nilai.pdf', 'krs.pdf', 'proposal.pdf', 'jurnal.pdf', 'jurnal2.pdf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id_soal` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `bobot` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tipe_file` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `file_a` varchar(255) NOT NULL,
  `file_b` varchar(255) NOT NULL,
  `file_c` varchar(255) NOT NULL,
  `file_d` varchar(255) NOT NULL,
  `file_e` varchar(255) NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `created_on` int(11) NOT NULL,
  `updated_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id_soal`, `dosen_id`, `matkul_id`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `file_a`, `file_b`, `file_c`, `file_d`, `file_e`, `jawaban`, `created_on`, `updated_on`) VALUES
(1, 1, 1, 1, '', '', '<p>Dian : The cake is scrumptious! I love i<br>Joni : … another piece?<br>Dian : Thank you. You should tell me the recipe.<br>Joni : I will.</p><p>Which of the following offering expressions best fill the blank?</p>', '<p>Do you mind if you have</p>', '<p>Would you like</p>', '<p>Shall you hav</p>', '<p>Can I have you</p>', '<p>I will bring you</p>', '', '', '', '', '', 'B', 1550225760, 1550225760),
(2, 1, 1, 1, '', '', '<p>Fitri : The French homework is really hard. I don’t feel like to do it.<br>Rahmat : … to help you?<br>Fitri : It sounds great. Thanks, Rahmat!</p><p><br></p><p>Which of the following offering expressions best fill the blank?</p>', '<p>Would you like me</p>', '<p>Do you mind if I</p>', '<p>Shall I</p>', '<p>Can I</p>', '<p>I will</p>', '', '', '', '', '', 'A', 1550225952, 1550225952),
(3, 1, 1, 1, 'd166959dabe9a81e4567dc44021ea503.jpg', 'image/jpeg', '<p>What is the picture describing?</p><p><small class=\"text-muted\">Sumber gambar: meros.jp</small></p>', '<p>The students are arguing with their lecturer.</p>', '<p>The students are watching their preacher.</p>', '<p>The teacher is angry with their students.</p>', '<p>The students are listening to their lecturer.</p>', '<p>The students detest the preacher.</p>', '', '', '', '', '', 'D', 1550226174, 1550226174),
(5, 3, 5, 1, '', '', '<p>(2000 x 3) : 4 x 0 = ...</p>', '<p>NULL</p>', '<p>NaN</p>', '<p>0</p>', '<p>1</p>', '<p>-1</p>', '', '', '', '', '', 'C', 1550289702, 1550289724),
(6, 3, 5, 1, '98a79c067fefca323c56ed0f8d1cac5f.png', 'image/png', '<p>Nomor berapakah ini?</p>', '<p>Sembilan</p>', '<p>Sepuluh</p>', '<p>Satu</p>', '<p>Tujuh</p>', '<p>Tiga</p>', '', '', '', '', '', 'D', 1550289774, 1550289774),
(8, 4, 2, 40, '', '', '<p>Siapa Nama Presiden Pertama Indonesia</p>', '<p>Ir. Soekarno</p>', '<p>Jendral Soeharto</p>', '<p>BJ Habibie</p>', '<p>Megawati</p>', '<p>Jokowi</p>', '', '', '', '', '', 'A', 1623706118, 1623706118),
(9, 4, 2, 20, '', '', '<p>Siapa Pencipta Lagu Indonesia Raya?</p>', '<p>Ibu Sud</p>', '<p>Ibu Kartini</p>', '<p>Ibu Teresa</p>', '<p>Ibu Kita</p>', '<p>Semua Jawaban Salah</p>', '', '', '', '', '', 'E', 1623718726, 1623718726),
(10, 5, 3, 12, '', '', '<p>apa itu TI</p>', '<p>Teknik Informtika</p>', '<p>Teknik Mesin</p>', '<p>RPL</p>', '<p>Akper</p>', '<p>jurusan</p>', '', '', '', '', '', 'A', 1626836516, 1626836516),
(11, 5, 3, 6, '', '', '<p>askd</p>', '<p>anjsnkdi</p>', '<p>njslwijdmk</p>', '<p>nskwldik</p>', '<p>wioepdj</p>', '<p>insxjn</p>', '', '', '', '', '', 'D', 1627435692, 1627435692),
(12, 4, 2, 4, '', '', '<p>asbc</p>', '<p>asdf</p>', '<p>aswd</p>', '<p>aqws</p>', '<p>aqwedd</p>', '<p>aasddfc</p>', '', '', '', '', '', 'C', 1627435947, 1627435947);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'Administrator', '$2y$12$tGY.AtcyXrh7WmccdbT1rOuKEcTsKH6sIUmDr0ore1yN4LnKTTtuu', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1627525016, 1, 'Admin', 'Istrator', 'ADMIN', '0'),
(3, '::1', '12111001', '$2y$10$8MPEdPLKsmGQmWw0raoMC.6420NgNHl9ACIBsg8RuqcPF7o6AA6Y.', 'hafidz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550225511, 1623719001, 1, 'Muhammad', 'Hafidz', NULL, NULL),
(4, '::1', '12345678', '$2y$12$tGY.AtcyXrh7WmccdbT1rOuKEcTsKH6sIUmDr0ore1yN4LnKTTtuu', 'korosensei@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550226286, 1550743600, 1, 'Koro', 'Sensei', NULL, NULL),
(8, '::1', '01234567', '$2y$10$5pAJAyB3XvrGEkvGak2QI.1pWqwK/S76r3Pf4ltQSGQzLMpw53Tvy', 'tobirama@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550289356, 1550743585, 1, 'Tobirama', 'Sensei', NULL, NULL),
(9, '::1', '22222222', '$2y$10$Dl.jOWQYcZPoU8gP0//gke2Gxu2lfT679mynUwZY4YBtAyhrMcz3q', 'awis@dosen.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1623705826, 1627435893, 1, 'Awis', 'Awis', NULL, NULL),
(10, '::1', '19030033', '$2y$10$FgU1iUjpBx.FzhC8pWgiUe.Yq/1rowy.9gQXuJWs8kpxIOwFDQNze', 'afifah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626659049, 1627521871, 1, 'afifah', 'afifah', NULL, NULL),
(11, '::1', '09876543', '$2y$10$eAe.Z3zx.Semhnc4GLatR.jkNYvh2DkshvYLnmUfPcJA02TaxS6HC', 'retno@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626660583, 1627525984, 1, 'retno', 'retno', NULL, NULL),
(12, '127.0.0.1', '12183018', '$2y$10$fX.z8L7F07DD7BlRkPLA3.ykgTB4YH5gph4.G3VlKwMsHA8ZV74zi', 'mghifariarfan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1627009552, 1627009608, 1, 'Muhammad', 'Arfananda', NULL, NULL),
(13, '::1', '190876509', '$2y$10$St8RQwxkL9e32OI7/KueQ.GLhCPZ/94fGfDx5Ph4p9zoDZ87uiZqy', 'pp@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1627279700, NULL, 1, 'ppp', 'ppp', NULL, NULL),
(14, '127.0.0.1', '123454321', '$2y$10$1ZjrkYnWah5ZiRsa6bNQaOSXlpT5uxeUiuFYCRh3oM12EHXXWguqq', 'apip@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1627525958, NULL, 1, 'apip', 'apip', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(5, 3, 3),
(6, 4, 2),
(10, 8, 2),
(11, 9, 2),
(12, 10, 3),
(13, 11, 2),
(14, 12, 3),
(15, 13, 3),
(16, 14, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftarujian`
--
ALTER TABLE `daftarujian`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `matkul_id` (`matkul_id`);

--
-- Indexes for table `dospem`
--
ALTER TABLE `dospem`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h_ujian`
--
ALTER TABLE `h_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ujian_id` (`ujian_id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `jurusan_matkul`
--
ALTER TABLE `jurusan_matkul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurusan_id` (`jurusan_id`),
  ADD KEY `matkul_id` (`matkul_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `kelas_dosen`
--
ALTER TABLE `kelas_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `m_ujian`
--
ALTER TABLE `m_ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `matkul_id` (`matkul_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id_seminar`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id_judulskripsi`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `matkul_id` (`matkul_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`),
  ADD UNIQUE KEY `uc_email` (`email`) USING BTREE;

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftarujian`
--
ALTER TABLE `daftarujian`
  MODIFY `id_skripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dospem`
--
ALTER TABLE `dospem`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `h_ujian`
--
ALTER TABLE `h_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jurusan_matkul`
--
ALTER TABLE `jurusan_matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelas_dosen`
--
ALTER TABLE `kelas_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_ujian`
--
ALTER TABLE `m_ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id_seminar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id_judulskripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id_matkul`);

--
-- Constraints for table `h_ujian`
--
ALTER TABLE `h_ujian`
  ADD CONSTRAINT `h_ujian_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `m_ujian` (`id_ujian`),
  ADD CONSTRAINT `h_ujian_ibfk_2` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id_mahasiswa`);

--
-- Constraints for table `jurusan_matkul`
--
ALTER TABLE `jurusan_matkul`
  ADD CONSTRAINT `jurusan_matkul_ibfk_1` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `jurusan_matkul_ibfk_2` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id_matkul`);

--
-- Constraints for table `kelas_dosen`
--
ALTER TABLE `kelas_dosen`
  ADD CONSTRAINT `kelas_dosen_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `kelas_dosen_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `m_ujian`
--
ALTER TABLE `m_ujian`
  ADD CONSTRAINT `m_ujian_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `m_ujian_ibfk_2` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id_matkul`);

--
-- Constraints for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD CONSTRAINT `tb_soal_ibfk_1` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `tb_soal_ibfk_2` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
