-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2021 at 04:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` varchar(25) NOT NULL,
  `judul` varchar(111) NOT NULL,
  `pengarang` varchar(45) NOT NULL,
  `penerbit` varchar(45) NOT NULL,
  `jenis_buku` varchar(25) DEFAULT NULL,
  `kode_buku` varchar(35) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `jenis_buku`, `kode_buku`, `foto`) VALUES
('10', '26 Trik Panas.komputer dan Internet paling diburu', 'Andrea Adel Heid', 'Elex media Kompotindo', 'Lainnya', '27379439', 'default.jpg'),
('100', 'The Best Encryption Tools', 'wahana Komputer', 'Elex media Kompotindo', 'Multimedia', '86002542', 'default.jpg'),
('101', 'Cara Kilat Rekayasa Foto', 'Nyoto Kurniawan ', 'Elex media Kompotindo', 'Lainnya', '74517607', 'default.jpg'),
('102', 'Mahir desain Photoshop CS5', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '59936733', 'default.jpg'),
('103', 'Siapa bilang Hacking itu sulit', 'Tim Beranda Egency', 'Elex media Kompotindo', 'Lainnya', '84005162', 'default.jpg'),
('104', 'Aplikasi Jejaring Sosial untuk Ponsel', 'Hangky Alexander Mangkulo', 'Elex media Kompotindo', 'umum Produktif', '48551667', 'default.jpg'),
('105', 'Blogspot', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Lainnya', '77513677', 'default.jpg'),
('106', 'Membuat toko online dengan Facebook', 'Hangky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '48651536', 'default.jpg'),
('107', 'Router Linux menggunakan Freesco dan Flopy FW', 'Harianto Pribadi', 'Elex media Kompotindo', 'Lainnya', '49350619', 'default.jpg'),
('108', 'Flash Design dan animasi Web', 'Siti Mutmainnah', 'Elex media Kompotindo', 'Lainnya', '80509747', 'default.jpg'),
('109', 'out Sourching Implementasi di Indonesia ', 'Ir. Candra Suwondo MM,Ph,D', 'Elex media Kompotindo', 'Lainnya', '54543807', 'default.jpg'),
('11', 'Most Wanted tips of Blackberry', 'Jerry Rumken Y', 'Elex media Kompotindo', 'Umum Produktif', '56041842', 'default.jpg'),
('110', 'Tune Up PC dengan 25 Software Gratis Dari Microsoft', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '60036602', 'default.jpg'),
('111', 'The Best Windows Tuning Tools', 'Wahana Komputer', 'Elex media Kompotindo', 'Multimedia', '86102411', 'default.jpg'),
('112', 'Wireless Hacking ', 'E Fuy Zam', 'Elex media Kompotindo', 'RPL', '40861754', 'default.jpg'),
('113', 'Proyek Membuat Website dengan Jomla', 'Tim EMS', 'Elex media Kompotindo', 'Lainnya', '85003852', 'default.jpg'),
('114', 'Free ware d share ware sistem Operasi windows', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52047082', 'default.jpg'),
('115', 'pengamanan total data d informasi penting    beranda agency', 'Beranda Agancy', 'Elex media Kompotindo', 'Lainnya', '32372889', 'default.jpg'),
('116', 'Windowas Xp Ekstrim Protection ', 'dadan rahmat', 'Elex media Kompotindo', 'RPL', '36667256', 'default.jpg'),
('117', 'trik rahasia anti lupa pasword serumit apun    jubilee enterprise', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60136471', 'default.jpg'),
('118', 'koleksi lengkap softwere hacking', 'java creatifity', 'Elex media Kompotindo', 'Lainnya', '55542497', 'default.jpg'),
('119', 'belajar sendiri membuat robot cerdas', 'Widodo budiharto', 'Elex media Kompotindo', 'Lainnya', '88299529', 'default.jpg'),
('12', 'Kesalahan fatal dalam mengoprasikan Comp', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '58238960', 'default.jpg'),
('120', 'Bengkel Power Point', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60236340', 'default.jpg'),
('121', 'Step by Step Menjual Apapun Keahlian Anda di Internet', 'Muhammad Rustam ', 'Elex media Kompotindo', 'RPL', '73818524', 'default.jpg'),
('122', 'Mengamankan Jaringan Komputer dengan Untangle', 'Yuwan Yusdistira', 'Elex media Kompotindo', 'Rpl', '90396778', 'default.jpg'),
('123', 'Step by Step Menjual Apapun Keahlian Anda di Internet', 'Muhammad Rustam ', 'Elex media Kompotindo', 'Multimedia', '73918393', 'default.jpg'),
('124', 'Step by Step Desain Robot dengan Photoshop CS5', 'lensa teknologi', 'Elex media kompotindo', 'Multimedia', '70522847', 'default.jpg'),
('125', 'Mesin Uang Internet', 'Joe Fitale Julian ', 'Gramedia', 'Lainnya', '91994682', 'default.jpg'),
('126', 'Menjadi dokter PC dan Laptop anda Sendiri', 'Tim E Media', 'Elex media Kompotindo', 'Umum produktif', '84105031', 'default.jpg'),
('127', 'Aneka Poster Film Dengan Photoshop', 'Wahana Komputer', 'Elex media Kompotindo', 'Multimedia', '86202280', 'default.jpg'),
('128', 'Gampang Menyusun Laporan Keuangan Organisasi Nirlaba', 'Lilis Setiyawati', 'Elex media Kompotindo', 'Multimedia', '70622716', 'default.jpg'),
('129', 'Pemrograman Excel', 'Yudi Wicaksono', 'Elex media Kompotindo', 'Lainnya', '89997302', 'default.jpg'),
('13', 'Sousi dahsyat pemasalahan Blackberry', 'Nyoto Kurniawan ', 'Elex media Kompotindo', 'Umum Produktif', '74417738', 'default.jpg'),
('130', 'Membuat Pola Rajutan Menggunakan Komputer', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60336209', 'default.jpg'),
('131', 'Langkah Mudah Memanfaatkan Microsoft Office 2010', 'Wahana Komputer', 'Elex media Kompotindo', 'Umum Produktif', '86302149', 'default.jpg'),
('132', 'Panduan Praktis Ngeblog di Kompasiana', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum produktif', '60436078', 'default.jpg'),
('133', 'Branding Promotion with Social Network', 'Dominikus Juju', 'Elex media Kompotindo', 'RPL', '39163981', 'default.jpg'),
('134', 'IBM Database DB2 For Bigginer ', 'Deni Sutani', 'Elex media Kompotindo', 'RPL', '37466208', 'default.jpg'),
('135', 'Kas Machine', 'Rinky Mandala Putra S', 'Elex media Kompotindo', 'Lainnya', '78512367', 'default.jpg'),
('136', 'Tingkatan Omset Bisnis Dengan E-mail Marketing', 'Dedik Kurniawan', 'Elex media Kompotindo', 'Umum Produktif', '37166601', 'default.jpg'),
('137', 'Resep Top PHP untuk Programmer Pemula', 'Edy Winarno S,T', 'Elex media Kompotindo', 'RPL', '41161361', 'default.jpg'),
('138', '5 Jurus Editing Foto Digital dengan Photoshop Cs5', 'Ardianto Nugroho', 'Elex media Kompotindo', 'Multimedia', '29077212', 'default.jpg'),
('139', 'Kursus Kilat AutoCAd 2011', 'Sofi Ansori', 'Elex media Kompotindo', 'Lainnya', '81108961', 'default.jpg'),
('14', 'Windows Forensic', 'Eddy Winaro St', 'Elex media Kompotindo', 'Lainnya', '41061492', 'default.jpg'),
('140', 'Grafis dan Card Spectakuler Excel', 'Criss Topher Lee', 'Elex media Kompotindo', 'Umum Produktif', '35169221', 'default.jpg'),
('141', 'Trik Pintar Dan Gratis untuk Proteci Windows', 'Tim E Media Solusindo', 'Elex media Kompotindo', 'Rpl', '84204900', 'default.jpg'),
('142', '101 ide Promosi Grilya Pakai Internet', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60535947', 'default.jpg'),
('143', 'Google Ninja', 'Criss Topher Lee', 'Elex media Kompotindo', 'Lainnya', '35269090', 'default.jpg'),
('144', 'Latihan Soal Gambar 2 Dimensi dalam AutoCad 2000', 'Handi Candra ', 'Elex media Kompotindo', 'Umum produktif', '48052322', 'default.jpg'),
('145', 'Aplikasi Top Blackbary', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60635816', 'default.jpg'),
('146', 'Yahoo Mesangger ICQ dan Windows Live Mesangger', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '60735685', 'default.jpg'),
('147', 'Belajar cepat Google Hacking', 'Wahana Komputer', 'Elex media Kompotindo', 'Lainnya', '86402018', 'default.jpg'),
('148', 'Reparasi Dan Upgrade PC', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Umum Produktif', '41261230', 'default.jpg'),
('149', 'Aplikasi Internet Penting untuk PC dan Laptop', 'Hangky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '48751405', 'default.jpg'),
('15', 'Hacking Joomla', 'Vyctoria.com', 'Elex media Kompotindo', 'Lainnya', '85802804', 'default.jpg'),
('150', 'cara mudah membuat robot Trading Profitable', 'Harianto Pribadi', 'Elex media Kompotindo', 'Lainnya', '49450488', 'default.jpg'),
('151', 'Adobe Photoshop 7.0', 'Budi Permana S,E', 'Elex media kompotindo', 'Multimedia', '32872234', 'default.jpg'),
('152', 'Adobe Photoshop 6.0', 'Candra', 'Elex media Kompotindo', 'Multimedia', '34570007', 'default.jpg'),
('153', 'Windows Terminal Service', 'Beny Benardy', 'Elex media Kompotindo', 'R8', '32273020', 'default.jpg'),
('154', 'Mudahnya Mengeruk Dollar dari File Hosting', 'surya Van Diego', 'Elex media Kompotindo', 'Umum Produktif', '82706865', 'default.jpg'),
('155', 'Tri Amperiyanto', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52146951', 'default.jpg'),
('156', 'Excel Intellegent cara pintar membangun strategi Marketing', 'Fajri Rahmat Umbara', 'Elex media Kompotindo', 'Lainnya', '43857824', 'default.jpg'),
('157', 'spss Dalam Penelitian', 'Getut Pramesti', 'Elex media Kompotindo', 'Lainnya', '47153501', 'default.jpg'),
('158', 'Moding Android ', 'Erik R Prabowo', 'Elex media Kompotindo', 'Lainnya', '43458348', 'default.jpg'),
('159', 'Corel Draw X5', 'Rachmad Hakim', 'Elex media Kompotindo', 'Lainnya', '76115511', 'default.jpg'),
('16', 'Interaksi Ardunio dan LabView', 'Dian Artanto', 'Elex media Kompotindo', 'Lainnya', '38564767', 'default.jpg'),
('160', 'Windows Terminal Service', 'Beny Benardi', 'Elex media Kompotindo', 'Lainnya', '31973413', 'default.jpg'),
('161', 'Sirvel Light dan Expresion Blend ', 'Fuadi Rusma', 'Elex media Kompotindo', 'Lainnya', '46953763', 'default.jpg'),
('162', 'Pencatatan dan Pengolahan Data keuangan dengan Excel', 'Lilis Setiyawati', 'Elex media Kompotindo', 'Umum produktif', '70722585', 'default.jpg'),
('163', 'Software Tracking', 'ferisulianta', 'Elex media Kompotindo', 'Lainnya', '45755335', 'default.jpg'),
('164', 'IPad untuk Fotografi Digital', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60835554', 'default.jpg'),
('165', 'Desain Kaos Bekas Dengan Corel Draw', 'Derry iswidharma Jaya', 'Elex media Kompotindo', 'Lainnya', '37865684', 'default.jpg'),
('166', 'Utility Easy CD Dan DVD Creator Versi 6', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52246820', 'default.jpg'),
('167', 'Aplikasi Chatting dan Push E-mail Gratisa Untuk Semua HP', 'Setia Gunawan', 'Elex media Kompotindo', 'Umum Produktif', '79810664', 'default.jpg'),
('168', 'Windows Vista ', 'Budi Permana S,E', 'Elex media Kompotindo', 'Lainnya', '32972103', 'default.jpg'),
('169', 'Formula Excel', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Lainnya', '41361099', 'default.jpg'),
('17', 'Step by Step Word 2007', 'Yod Wicaksono', 'Elex media Kompotindo', 'Lainnya', '89597826', 'default.jpg'),
('170', 'Digital Greeting Card', 'Bayu Stefano', 'Elex media Kompotindo', 'Lainnya', '31873544', 'default.jpg'),
('171', 'Produk Gratisan Membuat saya Kaya Raya', 'Lutfia Afandi', 'Elex media Kompotindo', 'Multimedia', '71221930', 'default.jpg'),
('172', 'Explorasi Microsoft Excel Untuk Simulasi Bisnis', 'Johar Arifin', 'Elex media Kompotindo', 'Lainnya', '56840794', 'default.jpg'),
('173', 'Trik Rahasia Flash Cs3', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '60935423', 'default.jpg'),
('174', 'Dasar-dasar Pemrograman', 'Ady Wicaksono', 'Elex media Kompotindo', 'Lainnya', '25282190', 'default.jpg'),
('175', 'Kolaborasi Pemrograman Flash,PHP,dan Database', 'Wiwit Siswo Utomo', 'Elex media Kompotindo', 'Umum produktif', '88998612', 'default.jpg'),
('176', 'Desain  dan Editing Web', 'Fery Herlambang', 'Elex media Kompotindo', 'Lainnya', '46054942', 'default.jpg'),
('177', 'Facebook Mobile', 'Hangky Alexander Mangkulo', 'Elex media Kompotindo', 'Multimedia', '48851274', 'default.jpg'),
('178', 'Buku Latihan SPss Statistik Non Pra-Matrik', 'Singgih Santoso', 'Elex media Kompotindo', 'Lainnya', '80210140', 'default.jpg'),
('179', 'Kreasi Maksimal Dengan Kamera Digital Minimal', 'Zaslina Zainudin', 'Elex media Kompotindo', 'Lainnya', '90496647', 'default.jpg'),
('18', 'Membuat Aplikasi Manajemen stok.Gudang', 'Asih.Widi Harini Ridwan Sanjaya', 'Elex media Kompotindo', 'Umum Produktif', '30675116', 'default.jpg'),
('180', 'Bebas Virus Selamanya', 'Ahmad Suhandro', 'Elex media Kompotindo', 'Multimedia', '26380749', 'default.jpg'),
('181', 'Teknchal Analisis Bersama Sony Indikator', 'Dr.Sony Siswoyo', 'Elex media Kompotindo', 'Lainnya', '40362409', 'default.jpg'),
('182', 'Menyusun Laporan Keuangan dan Auditing di Excel', 'Christopherlee', 'Elex media Kompotindo', 'Umum produktif', '34869614', 'default.jpg'),
('183', 'Resume Builder ', 'ferisulianta', 'Elex media Kompotindo', 'Lainnya', '45855204', 'default.jpg'),
('184', 'Microsoft Acess 2000', 'Djoko Pramono', 'Elex media Kompotindo', 'Lainnya', '38964243', 'default.jpg'),
('185', 'Kursus Kilat AutoCad 2011', 'Sofi Ansori', 'Elex media Kompotindo', 'Lainnya', '81208830', 'default.jpg'),
('186', 'IBM Busi Nes Intelegency Solution', 'Deny Sutani', 'Elex media Kompotindo', 'Lainnya', '37665946', 'default.jpg'),
('187', 'Web Makin Dahsyat Dengan Jquery', 'Arista prasetyo Adi', 'Elex media Kompotindo', 'Umum Produktif', '29876164', 'default.jpg'),
('188', 'Explorasi Microsoft Excel ', 'Johar Arifin', 'Elex media Kompotindo', 'Lainnya', '56940663', 'default.jpg'),
('189', 'Dokumentasi PhotoShop', 'Friza Raihan', 'Elex media Kompotindo', 'Lainnya', '46554287', 'default.jpg'),
('19', 'Mahir Otodidak Rumus Fungsi Excel 2007', 'Hamdan Lugina Jaya.SPD', 'Elex media Kompotindo', 'Umum Produktif', '47952453', 'default.jpg'),
('190', 'Membuat Desain Creatif dengan Photoshop CS5', 'Mikael Sugianto', 'Elex media Kompotindo', 'Lainnya', '72919703', 'default.jpg'),
('191', 'Black Book Menembus Blokir Situs ', 'Kincay TJ45', 'Neo media press', 'Rpl', '94591276', 'default.jpg'),
('192', 'Photoshop Preneur dari Desain menuju Duwit', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '61035292', 'default.jpg'),
('193', 'Teknik Reparasi Export Inport Konversi Untuk semua Kebutuhan', 'ferisulianta', 'Elex media Kompotindo', 'Rpl', '45955073', 'default.jpg'),
('194', 'Kerajinan Digital Membuat Pola Rajutan Menggunakan Komputer', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '61135161', 'default.jpg'),
('195', 'Kupas Tuntas Problem IT', 'Arif Rohmadi', 'Elex media Kompotindo', 'Multimedia', '29376819', 'default.jpg'),
('196', 'Teknik mendownlod apapun dari Internet', 'Rafknowledge', 'Elex media Kompotindo', 'Lainnya', '76315249', 'default.jpg'),
('197', 'Apapun Permintaannya crystalreport jawabannya', 'Irnawan', 'Elex media Kompotindo', 'Rpl', '55143021', 'default.jpg'),
('198', 'Meta Data Under Cover', 'Eko Arryawan', 'Elex media Kompotindo', 'Umum Produktif', '42659396', 'default.jpg'),
('199', 'Microsoft Office 2007 Standart Edition', 'Budi Permana S,E', 'Elex media Kompotindo', 'Lainnya', '33071972', 'default.jpg'),
('2', 'Visual basic. net 2005 dan perintah SQl', 'Kok yung', 'Elex media Kompotindo', 'RPL', '68924943', 'default.jpg'),
('20', 'Desain Pertokoan dengan Archicad 10', 'Mikael Sugianto', 'Elex media Kompotindo', 'RPL', '72719965', 'default.jpg'),
('200', 'Jurus Maut Berinternet', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '61235030', 'default.jpg'),
('201', 'Mencari dan Menjual Info Rumah dan Kos-Kosan dengan Internet', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '61334899', 'default.jpg'),
('202', 'Menguasai Visual Basic. Net', 'widodo budiharto', 'Elex media Kompotindo', 'Rpl', '88399398', 'default.jpg'),
('203', '62 Trik dan Login terbaik JQUERY', 'Agus Saputro', 'Elex media Kompotindo', 'Rpl', '25681666', 'default.jpg'),
('204', 'Buzz Marketing dengan Google Buzz dan Google Wave', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '61434768', 'default.jpg'),
('205', 'Teknik Mendonlowd apapun dari Internet', 'Rafknowledge', 'Elex media Kompotindo', 'Lainnya', '76415118', 'default.jpg'),
('206', 'Mencari Laba Besar dari Situs Keanggotaan', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '61534637', 'default.jpg'),
('207', 'Sukses Managemen Sales dengan Sales force', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '61634506', 'default.jpg'),
('208', 'Membuat Dunia 3D dengan VRML', 'Adi Kurniadi', 'Elex media Kompotindo', 'Lainnya', '24183631', 'default.jpg'),
('209', '20 Bisnis Gampang Untung Hanya Modal Koneksi Internet 1 MB', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '61734375', 'default.jpg'),
('21', 'Menguasai Gambas', 'Rusmanto Sugianto', 'Dian rakyat', 'RPL', '13797255', 'default.jpg'),
('210', 'Awas Ada Trojhan ', 'A. M. Hirin', 'Elex media Kompotindo', 'Lainnya', '23384679', 'default.jpg'),
('211', 'Menciptakan Penjualan Melalui Sosial Media', 'Crreasion Brand', 'Elex media Kompotindo', 'Umum produktif', '36167911', 'default.jpg'),
('212', '26 Trik Panas.komputer dan Internet paling diburu', 'Andrea Adel Heid', 'Elex media Kompotindo', 'Lainnya', '27479308', 'default.jpg'),
('213', 'Aplikasi Office Geratis Untuk Ponsel', 'Hangky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '48951143', 'default.jpg'),
('214', '5 Forum Diskusi Indonesia untuk Jualan', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '61834244', 'default.jpg'),
('215', 'Mengupas Tuntas Autocad Release 14', 'Sofi Ansori', 'Elex media Kompotindo', 'Multimedia', '81308699', 'default.jpg'),
('216', 'Mastering CM5 dengan Mambo/Joomla', 'Andhi Rachdian', 'Elex media Kompotindo', 'Lainnya', '27179701', 'default.jpg'),
('217', 'Corel Drow 10 dan Corel Photopaint 10', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52346689', 'default.jpg'),
('218', '30 Kreasi Logo Top Dunia Corel Drow x4', 'Leni Marlina', 'Elex media Kompotindo', 'Lainnya', '70323109', 'default.jpg'),
('219', '50 Add Ons untuk Menambah Fungsi Onalitas Firofox', 'wahana Komputer', 'Elex media Kompotindo', 'Umum Produktif', '86501887', 'default.jpg'),
('22', 'Heart Revolution', 'Eko jaw Santoso', 'Elex media Kompotindo', 'Lainnya', '43258610', 'default.jpg'),
('220', 'Forex Online Trading ', 'Sawidji Widoatmodjo', 'Elex media Kompotindo', 'umum produktif', '79610926', 'default.jpg'),
('221', 'Efek Spesial Web Site dengan Dream Weaver 4', 'Gregorius Agung', 'Elex media Kompotindo', 'Lainnya', '47453108', 'default.jpg'),
('222', 'For Square ', 'Jery Rumkeny', 'Elex media Kompotindo', 'Lainnya', '56341449', 'default.jpg'),
('223', 'Meledakkan Profit dengan Blok dan email', 'Jeffelly Heliantu Sonfri', 'Elex media Kompotindo', 'Lainnya', '55742235', 'default.jpg'),
('224', 'Membuat Hompage Interaktif dengan GGE atau PERL', 'Gregorius Agung', 'Elex media Kompotindo', 'Rpl', '47552977', 'default.jpg'),
('225', 'Software Terbaik untuk Hacking Hardware', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Rpl', '41460968', 'default.jpg'),
('226', 'Aplikasi Excel Untuk Guru', 'Adi Kusrianto', 'Elex media Kompotindo', 'Lainnya', '24583107', 'default.jpg'),
('227', 'Web Sait Joomla 1,7 dengan 20 Angka Ekstensi Terpopuler', 'Lucy Permana', 'Elex media Kompotindo', 'umum Produktif', '71122061', 'default.jpg'),
('228', 'warna Under Cover ', 'Eko Ariyawan', 'Elex media Kompotindo', 'Lainnya', '42559527', 'default.jpg'),
('229', 'Blogging dengan Blogger', 'Asdani Kindarto', 'Elex media Kompotindo', 'Lainnya', '30475378', 'default.jpg'),
('23', 'Micxed Methods', 'Jonathan Sarwono', 'Elex media Kompotindo', 'Lainnya', '57340139', 'default.jpg'),
('230', '101 Template populer Blog Spot', 'Antok G Wahyudi', 'Elex media Kompotindo', 'Rpl', '28178391', 'default.jpg'),
('231', 'Desain Objek Teks dan Kaos Distro dengan Corel Draow', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '61934113', 'default.jpg'),
('232', 'Tip dan Trik Windows Microsoft Word 2010', 'Yahya Kurniawan ST.', 'Elex media Kompotindo', 'Lainnya', '89298219', 'default.jpg'),
('233', 'Memberdayakan Potensi Tersembunyi Google', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62033982', 'default.jpg'),
('234', 'Tumber Block Foto dan Peruntungan Anda', 'Jubilee enterprise', 'Elex media Kompotindo', 'umum Produktif', '62133851', 'default.jpg'),
('235', '20 Aplikasi Portable ', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '62233720', 'default.jpg'),
('236', '100 Software Downloader Ajaib', 'Anwari dan Java kreativity', 'Elex media Kompotindo', 'Lainnya', '28378129', 'default.jpg'),
('237', 'Bermain-main dengan Regristry Windows ', 'Tri Amperiyanto', 'Elex media Kompotindo', 'umum Produktif', '85203590', 'default.jpg'),
('238', 'Pemrograman Aplikasi Wireless dengan Java', 'Ady Wicaksono', 'Elex media Kompotindo', 'Lainnya', '25382059', 'default.jpg'),
('239', 'Cisco DSL Rouster ASA Virewall dan VPN', 'Hendra Wijaya', 'Elex media kompotindo ', 'Lainnya', '90896123', 'default.jpg'),
('24', 'BlackBerry for Bussines', 'Jerry Rumken Y', 'Elex media Kompotindo', 'Lainnya', '56141711', 'default.jpg'),
('240', 'Panduan Menggunakan Paypal untuk Pembayaran Online', 'W Imanto', 'Elex media Kompotindo', 'Lainnya', '85902673', 'default.jpg'),
('241', 'Blog Spot', 'Teguh Wahyono', 'Elex media Kompotindo', 'Rpl', '83505817', 'default.jpg'),
('242', 'Corel Draw', 'Fery Sulianta', 'Elex media Kompotindo', 'Lainnya', '46154811', 'default.jpg'),
('243', 'Cari Duwit dengan Paid Review dan Blogger', 'Kurniawan dan Ridwan Sanjaya', 'Elex media Kompotindo', 'Umum Produktif', '69124681', 'default.jpg'),
('244', 'Panduan Praktis Menguasai Opera Turbo 10 ', 'lim rustandi', 'Elex media Kompotindo', 'Lainnya', '70822454', 'default.jpg'),
('245', 'Aplikasi Mini/ Super Market dengan java', 'Miftakhul huda', 'Elex media Kompotindo', 'Umum produktif', '72420358', 'default.jpg'),
('246', 'Aplikasi clound gratis', 'Tim Emedia solusindo', 'Elex media Kompotindo', 'Rpl', '84304769', 'default.jpg'),
('247', 'dasar-dasar Pemograman java 2', 'Ady Wicaksono', 'Elex media Kompotindo', 'Rpl', '25481928', 'default.jpg'),
('248', 'sofware Terbaik untuk Hacking Hadware', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Lainnya', '41560837', 'default.jpg'),
('249', 'Reparasi dan Upgrade PC', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Lainnya', '41660706', 'default.jpg'),
('25', 'Panduan Praktis Menguasai database Server MySql', 'Agus Saputro', 'Elex media Kompotindo', 'RPL', '25581797', 'default.jpg'),
('250', 'Utility Roxio Winon Cd 6', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52446558', 'default.jpg'),
('251', 'Membuat Website 2.0', 'Ali Zaki Smit Dev Community', 'Elex media Kompotindo', 'Lainnya', '26880094', 'default.jpg'),
('252', 'Membangun Server Internet dengan Mikrotik OS', 'Kustanto ', 'Elex media Kompotindo', 'Lainnya', '70123371', 'default.jpg'),
('253', 'Facebook Timeline untuk Jualan dan UKM', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62333589', 'default.jpg'),
('254', 'Presentasi Interaktif dengan Autoplay Media Studio', 'M. Hilmi Masruri Java Creativity', 'Elex media Kompotindo                        ', 'Lainnya', '91095861', 'default.jpg'),
('255', 'Langkah spektakuler Instalasi multi-OS dalam satu PC', 'Aunurrofiq Manzur', 'Elex media', 'Lainnya', '23085072', 'default.jpg'),
('256', 'Membuat Distro Linux Sendiri', 'Ahmad Sofyan', 'Dian Rakyat', 'Multimedia', '13597517', 'default.jpg'),
('257', 'Wireless Hacking ', 'E Fuy Zam', 'Elex media Kompotindo', 'Lainnya', '40961623', 'default.jpg'),
('258', 'Umware Workstation', 'Ir Hendra Wijaya', 'Elex media Kompotindo', 'Lainnya', '53944593', 'default.jpg'),
('259', 'Mendisain Objek 3 Dimensi dengan 3 D Stodio Max 8', 'Wahana Komputer', 'Elex media Kompotindo', 'Lainnya', '86601756', 'default.jpg'),
('26', ' Banjir Diskon !! With Groupon \"the Amazing Deals\"', 'Winda Julianto', 'Elex media Kompotindo', 'Umum Produktif', '88699005', 'default.jpg'),
('260', 'Mengaplikasikan Formula dengan Fungsi Excel 2007', 'Adi Kusrianto', 'Elex media Kompotindo', 'Lainnya', '24682976', 'default.jpg'),
('261', '5 Forum Diskusi Indonesia untuk Jualan', 'Jubilee enterprise', 'Elex media Kompotindo', 'umum Produktif', '62433458', 'default.jpg'),
('262', 'Dahsyatnya Word 2010', 'Adi Kusrianto', 'Elex media Kompotindo ', 'Umum Produktif', '90796254', 'default.jpg'),
('263', 'Microsoft Office untuk Bisnis', 'Edy Winarno S,T', 'Elex media Kompotindo', 'umum Produktif', '41760575', 'default.jpg'),
('264', 'Password Under Cover', 'Happy Chandraleka', 'Elex media Kompotindo', 'Lainnya', '49150881', 'default.jpg'),
('265', 'Jurus Menguasai Photoshop', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62533327', 'default.jpg'),
('266', 'Otomatisasi Office 2003 dengan Visual Basic Net 2005', 'Yahya Kurniawan ST.', 'Elex media Kompotindo', 'Umum Produktif', '89398088', 'default.jpg'),
('267', 'Stok Inventori dengan Visual Basic 6.0', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'RPl', '50249440', 'default.jpg'),
('268', 'Mendesain 3 Dimensi Secara Cepat dengan Autocad', 'Andang Martanto ST', 'Elex media Kompotindo', 'Lainnya', '27079832', 'default.jpg'),
('269', 'Membuat Animasi 3 Dimensi dengan 3DS MAX', 'Ir Djoko Darmawan MT', 'Elex media Kompotindo', 'Multimedia', '53844724', 'default.jpg'),
('27', 'Excel Intelligent cara pintar membangun strategi Marketing', 'Fajri Rahmat Umbara', 'Elex media Kompotindo', 'Umum Produktif', '43757955', 'default.jpg'),
('270', '25 Kreasi Foto Gokil dengan Photoshop Cs 6', 'wahana Komputer', 'Elex media Kompotindo', 'Lainnya', '86701625', 'default.jpg'),
('271', 'Mengupas Rahasia Download yang Paling Disembunyikan', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62633196', 'default.jpg'),
('272', 'Berlomba Jadi Populer di You Tube', 'Alta Hartoko', 'Elex media Kompotindo', 'Umum Produktif', '26979963', 'default.jpg'),
('273', 'Most Wanter Tips of SEO', 'Ferdinand Budi Kurniawan', 'Elex media Kompotindo', 'Lainnya', '44457038', 'default.jpg'),
('274', 'Blogging Money', 'Moddie Suyadi SU', 'Elex media Kompotindo', 'Lainnya', '73718655', 'default.jpg'),
('275', 'Toko Online Canggih dengan Wordpress', 'M. Hilmi Masruri Java Creativity', 'Elex media Kompotindo', 'Rpl', '71321799', 'default.jpg'),
('276', 'Ipad For Presentation ', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62733065', 'default.jpg'),
('277', 'Visual Basic Net Versi 2002 dan 2003', 'Drs. Ario Suryo Kusumo', 'Elex media Kompotindo', 'Lainnya', '40562147', 'default.jpg'),
('278', 'Panduan Kasak-Kusuk di Kaskus', 'beranda agency', 'Elex media Kompotindo', 'Lainnya', '32572627', 'default.jpg'),
('279', 'SKAK MAT Windows', 'Tri Amperiyanto', 'Elex media Kompotindo', 'Lainnya', '85303459', 'default.jpg'),
('28', 'Langkah spektakuler Instalasi multi-OS dalam satu PC', 'Aunurrofiq Manzur', 'Elex media Kompotindo', 'RPL', '31374199', 'default.jpg'),
('280', 'Rahasia Manajemen File', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '62832934', 'default.jpg'),
('281', 'Cyber Ninja', 'Fajri Rahmat Umbara', 'Elex media Kompotindo', 'Lainnya', '43957693', 'default.jpg'),
('282', 'Free Ware dan Share Ware Sistem Operasi Windows', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52546427', 'default.jpg'),
('283', 'Aplikasi Android untuk Tablet dan Handphone', 'wahana Komputer', 'Elex media Kompotindo', 'Rpl', '86801494', 'default.jpg'),
('284', 'Membangun Toko Online dengan Joomla', 'Wiwit Siswo Utomo', 'Elex media Kompotindo', 'Rpl', '89098481', 'default.jpg'),
('285', 'Web Marketing', 'Feri Sulianta', 'Elex media Kompotindo', 'RPl', '44656776', 'default.jpg'),
('286', 'Kiat Membuat Promosi Penjualan Secara Efektif dan Terencana', 'Adi Haryadi', 'Elex media Kompotindo', 'Lainnya', '24083762', 'default.jpg'),
('287', 'Meledakkan Profit dengan Blok dan email', 'Jeffelly Heliantu Sonfri', 'Elex media Kompotindo', 'Lainnya', '55842104', 'default.jpg'),
('288', 'Pemrograman Data Base dengan Visual Basic 6.o', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '50349309', 'default.jpg'),
('289', 'Buku Pintar Internet Untuk Pemula', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '62932803', 'default.jpg'),
('29', 'PhotoShop Sexy & Beauty', 'Dedik Kurniawan', 'Elex media Kompotindo', 'Lainnya', '37066732', 'default.jpg'),
('290', 'Microsof Power Point 2010', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum produktif', '50449178', 'default.jpg'),
('291', 'Microsoft Word 2010', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum produktif', '50549047', 'default.jpg'),
('292', 'Cara Mudah Menggunakan Windows Live', 'Ir pandapan sianipar', 'Elex media Kompotindo', 'Umum produktif', '54144331', 'default.jpg'),
('293', 'Share Point Server 2010', 'Ronald Rajaguk-guk', 'Elex media Kompotindo', 'Lainnya', '78811974', 'default.jpg'),
('294', 'Trik Membuat Foto dan Desain Grafis dengan Pinterest', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '63032672', 'default.jpg'),
('295', 'Business Plan untuk Bisnis Paper Craft', 'Feri Sulianta', 'Elex media Kompotindo', 'Umum produktif', '44756645', 'default.jpg'),
('296', 'Aplikasi Internet Gratis untuk Analisa Teknikal saham', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum produktif', '50648916', 'default.jpg'),
('297', 'Dahsyatnya Word 2010', 'Adi Kusrianto', 'Elex media Kompotindo', 'Lainnya', '24782845', 'default.jpg'),
('298', 'Eksplorasi Macro untuk Membuat Fungsi Excel', 'Yudy Wicaksono', 'Elex media Kompotindo', 'Umum Produktif', '90097171', 'default.jpg'),
('299', 'Super Access 5 Langkah Mudah Membuat Aplikasi Dagang', 'Andri Pratikno', 'Elex media Kompotindo', 'RPl', '27778915', 'default.jpg'),
('3', 'Microsof office 2010 untuk dunia Bisnis', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '58039222', 'default.jpg'),
('30', 'Psychological Techniquest in Selling', 'Dr.Billy Kueek', 'Elex media Kompotindo', 'RPL', '39962933', 'default.jpg'),
('300', 'Panduan Cepat Menguasai Word 2010', 'Nyoto Kurniawan ', 'Elex media Kompotindo', 'Umum Produktif', '74617476', 'default.jpg'),
('301', 'Analisis Struktur Gedung dengan ETABS Versi 9.07', 'HR Andriyanto', 'Elex media Kompotindo ', 'RPl', '90995992', 'default.jpg'),
('302', '101 Template populer Blog Spot', 'Antok G Wahyudi', 'Elex media kompotindo', 'Lainnya', '28278260', 'default.jpg'),
('303', 'Cash Machine', 'Rimky Mandala Putras', 'Elex media Kompotindo', 'Umum Produktif', '78412498', 'default.jpg'),
('304', 'Tip dan Trik Windows 7', 'Steven Andy Pascal', 'Elex media Kompotindo', 'Lainnya', '81808044', 'default.jpg'),
('305', 'Mastering 3 ds Max 2012', 'Mikael Sugianto', 'Elex media Kompotindo', 'Lainnya', '73019572', 'default.jpg'),
('306', 'Jurus Heboh Mendonload Lengkap Website', 'Asep Saipudin', 'Elex media Kompotindo', 'Lainnya', '30575247', 'default.jpg'),
('307', 'Kreasi foto cantik dengan fotoshop', 'Tangkas arif setiawan', 'Elex media Kompotindo', 'Multimedia', '83405948', 'default.jpg'),
('308', 'Aplikasi spss dalam saham', 'Abdul hadi dan Getut pramisti', 'Elex media Kompotindo', 'RPl', '23684286', 'default.jpg'),
('309', 'Menguasai internet untuk pemula', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '63132541', 'default.jpg'),
('31', 'Membuat Comic Strip Instan', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58338829', 'default.jpg'),
('310', 'Windows multiplat from dengan java gul', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Lainnya', '77613546', 'default.jpg'),
('311', 'Tutorial Pemograman Shell linux', 'Teguh Wahyono', 'Andi', 'Lainnya', '12399089', 'default.jpg'),
('312', 'Desain presentasi dengan PPT Plex dan Power Point 2007', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '63232410', 'default.jpg'),
('313', 'Chibi figure+ Photoshop', 'Derry iswidharmanjaya', 'Elex media Kompotindo', 'Lainnya', '37965553', 'default.jpg'),
('314', 'Pilih Netbook atau Netebook', 'Jubilee enterprise', 'Elex media Kompotindu', 'Lainnya', '91195730', 'default.jpg'),
('315', 'Cara Instan Bikin Website', 'SU Rahman', 'Elex media Kompotindo', 'Lainnya', '82207520', 'default.jpg'),
('316', 'Aneka Poster Film Dengan Photoshop', 'wahana Komputer', 'Elex media kompotindo', 'UmumProduktif', '86901363', 'default.jpg'),
('317', '20 Bisnis It dari Hobi menjadi Rezeki', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '63332279', 'default.jpg'),
('318', 'Membuat Program Prefesional secara cepat dengan Fb', 'jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '63432148', 'default.jpg'),
('319', 'Hecker dan Keamanan ', 'Eryanto Sitorius', 'Elex media kompotindo', 'Lainnya', '43658086', 'default.jpg'),
('32', 'Build an Hack your Blogger Now', 'Adam Pahlevi', 'Elex media Kompotindo', 'Lainnya', '23784155', 'default.jpg'),
('320', ' To Plan a Project Merencanakan Proyek', 'Trevour Young', 'Elex media Kompotindo', 'Rpl', '85103721', 'default.jpg'),
('321', 'Menulis Makalah denga wordstar 7.0', 'Handono Indra', 'Elex media Kompotindo', 'Umum Produktif', '48351929', 'default.jpg'),
('322', 'Trik pmograman Aplikasi Berbasis Sms', 'IR. Bustam Khang', 'Elex media Kompotindo', 'Rpl', '54443938', 'default.jpg'),
('323', 'Norton Communder 95', 'Djoko Pramono', 'Elex Media Kompotindo', 'Rpl', '39064112', 'default.jpg'),
('324', 'Internet Aman untuk Anak-anak', 'D.Arah Artanto', 'Prima info', 'Lainnya', '95090621', 'default.jpg'),
('325', 'Keamanan Jaringan Internet', 'Onno w.porbo', 'Sarana Media', 'Umum Produktif', '95589966', 'default.jpg'),
('326', '101 Tips dan Trik Windows xp', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Rpl', '63532017', 'default.jpg'),
('327', '101 Tips dan Trik Words 2010', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '63631886', 'default.jpg'),
('328', 'Analisis Data dengan Excel 2007', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Umum Produktif', '63731755', 'default.jpg'),
('329', '101 Tips dan Trik Words 2010', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '63831624', 'default.jpg'),
('33', 'Killer Joomla', 'SU Rahman', 'Elex media Kompotindo', 'Lainnya', '82107651', 'default.jpg'),
('330', '101 Tips dan Trik Microsof Words 2003', 'Derry Iswidharmanjaya', 'Elex Media Kompotindo', 'Lainnya', '38065422', 'default.jpg'),
('331', 'Kiat Memulai dan Mengalola E- Commerce', 'Hendy Kasim', 'Elex media Kompotindo', 'RPL', '50149571', 'default.jpg'),
('332', 'The Ciputra Way', 'Andrias Harefa', 'Elex Media Kompotindo', 'Umum Produktif', '27978653', 'default.jpg'),
('333', 'Teknologi Voip', 'Onno w.porbo', 'Elex Media Kompotindo', 'Lainnya', '75316559', 'default.jpg'),
('334', '101 Tips dan Triks Windows Vista', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '63931493', 'default.jpg'),
('335', '90 Tips dan Trik Microsof Excel 97,2000,Xp', 'Anggota Ikapi', 'Elex Media Kompotindo', 'Lainnya', '28078522', 'default.jpg'),
('336', 'Remote Anyting', 'Soni Setyawan', 'Elex Media Kompotindo', 'RPl', '81408568', 'default.jpg'),
('337', 'Basc Scripting', 'Rofiq Yuliardi', 'Elex Media Kompotindo', 'Lainnya', '78612236', 'default.jpg'),
('338', 'Tips dan Trik Cerdas Menang Bloq', 'Haris Maulana', 'Elex Media Kompotindo', 'Lainnya', '49550357', 'default.jpg'),
('339', '101 Tips dan Trik Microsof Office Power Point 2007', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64031362', 'default.jpg'),
('34', 'Ipad', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58438698', 'default.jpg'),
('340', 'Microsof Windows Xp', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Lainnya', '33171841', 'default.jpg'),
('341', 'Menggunakan Internet ', 'Sampurna', 'Elex Media Kompotindo', 'umum produktif', '79311319', 'default.jpg'),
('342', 'Jembatan Windows dan Linux', 'Sidiq S Hidayat', 'Elex Media Kompotindo', 'Lainnya', '79910533', 'default.jpg'),
('343', 'Refrensi Praktis Microsof Word 2000', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'Lainnya', '69224550', 'default.jpg'),
('344', 'Refrensi Praktis Microsof Word 2000', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'umum Produktif', '69324419', 'default.jpg'),
('345', 'Infa Struktur Wireles Internet', 'Onno w.porbo', 'Elex Media Kompotindo', 'umum Produktif', '75416428', 'default.jpg'),
('346', 'Teknik dan Bisnis VOIP', 'Tabratas Eharom', 'Elex Media Kompotindo', 'Lainnya', '83206210', 'default.jpg'),
('347', 'Microsof Front Page Xp', 'M.Firmansyah', 'Elex Media Kompotindo', 'Lainnya', '71521537', 'default.jpg'),
('348', 'Microsof Office Acces 2003', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Lainnya', '33271710', 'default.jpg'),
('349', 'Microsof Front Page Xp', 'M.Firmansyah', 'Elex Media Kompotindo', 'Lainnya', '71621406', 'default.jpg'),
('35', 'Menguasai situs Social Media', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '58538567', 'default.jpg'),
('350', ' Refrensi praktis Microsof Excel 2000', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'Lainnya', '69424288', 'default.jpg'),
('351', 'Membangun Wireles LAN', 'Jhonsen', 'Elex Media Kompotindo', 'Lainnya', '56641056', 'default.jpg'),
('352', 'Ayo ke Bank Dapatkan Kridit UMKM', 'Jhon Edison S.T', 'Elex Media Kompotindo', ' Umum Produktif', '56541187', 'default.jpg'),
('353', 'Microsof Power Point 2000', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Lainnya', '33371579', 'default.jpg'),
('354', 'Blog Spot', 'Dominikus Juju', 'Elex Media Kompotindo', 'Lainnya', '39263850', 'default.jpg'),
('355', 'Microsof Front Page 2002', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'Lainnya', '69524157', 'default.jpg'),
('356', 'Belajar Mudah Microsoft Word 2010', 'M.Hilmy Al faruqi', 'Elex Media Kompotindo', 'Umum Produktif', '71721275', 'default.jpg'),
('357', 'Most Wanted tips of Seo', 'Ferdinand Budi Kurniawan', 'Elex Media Kompotindo', 'RPl', '44556907', 'default.jpg'),
('358', 'Formula Excel', 'Edy Winarno S,T', 'Elex Media Kompotindo', 'Lainnya', '41860444', 'default.jpg'),
('359', '30 Top Features Photoshop', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64131231', 'default.jpg'),
('36', '152 Tip sepuutar ponsel', 'Nailul HD', 'Elex media Kompotindo', 'Lainnya', '74118131', 'default.jpg'),
('360', ' tip dan Trik Microsoft  Power Point 2010', 'Yahya Kurniawan ST.', 'Elex Media Kompotindo', 'Umum Produktif', '89497957', 'default.jpg'),
('361', 'Windows Vista ', 'Steven Andy Pascal', 'Elex Media Kompotindo', 'RPL', '81907913', 'default.jpg'),
('362', 'Mengolah Data Statistik dengan Spss 18', 'wahana Komputer', 'Elex Media Kompotindo', 'Lainnya', '87001232', 'default.jpg'),
('363', 'perang Browser', 'Mata Maya Studio', 'Elex Media Kompotindo', 'Lainnya', '72220620', 'default.jpg'),
('364', 'Best Windows Aplication for Business', 'Edy Winarno S,T', 'Elex Media Kompotindo', 'Umum Produktif', '41960313', 'default.jpg'),
('365', 'Membuat Program  Kreatif  dan Prefesional dengan Delpi', 'wahana Komputer', 'Elex Media Kompotindo', 'Lainnya', '87101101', 'default.jpg'),
('366', '108 Tips Keamanan Bloq dan Jaringan Sosial', 'Rafknowledge', 'Elex Media Kompotindo', 'Umum Produktif', '76514987', 'default.jpg'),
('367', '101 template Instan Untuk Blog Bisnis', 'Arista prasetyo Adi', 'Elex Media Kompotindo', 'RPl', '29976033', 'default.jpg'),
('368', 'Killer Bloq', 'Maddie Suyadi', 'Elex Media Kompotindo', 'Lainnya', '72020882', 'default.jpg'),
('369', '111 trik agar blog banjir Kunjungan', 'java creatifity', 'Elex Media Kompotindo', 'umum Produktif', '55642366', 'default.jpg'),
('37', 'Program Terhebat Android', 'Tim Ems', 'Elex media Kompotindo', 'Lainnya', '84804114', 'default.jpg'),
('370', 'The Best Internet Tools', 'Jubilee enterprise', 'Elex Media Kompotindo', 'RPl', '64231100', 'default.jpg'),
('371', 'VB. Net untuk Semua Tingkatan', 'Uus Rusmawan', 'Elex Media Kompotindo', 'RPl', '85603066', 'default.jpg'),
('372', 'Kupas Tuntas Riset exsperimen dengan Excel 2007 dan minitab 15', 'Singgih Santoso', 'Elex Media Kompotindo', 'Umum Produktif', '80310009', 'default.jpg'),
('373', 'Praktis menguasai mcrsof acces 2007/2010', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'Lainnya', '69624026', 'default.jpg'),
('374', 'Technopereneur', 'Lingga wordhana', 'Elex Media Kompotindo', 'Lainnya', '70922323', 'default.jpg'),
('375', 'Good Reader', 'Alexius Satyo', 'Elex Media Kompotindo', 'Lainnya', '26480618', 'default.jpg'),
('376', 'Microsof Excel 2007', 'Hanidah Lugina Jaya S.Pd', 'Elex Media Kompotindo', 'Lainnya', '49051012', 'default.jpg'),
('377', 'Microsof Office Acces 2007', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Lainnya', '33471448', 'default.jpg'),
('378', 'How To Operate Your store', 'Cristian F guswai', 'Elex Media Kompotindo', 'Lainnya', '35368959', 'default.jpg'),
('379', 'Autocad Release 14', 'Handra Candra', 'Elex Media Kompotindo', 'Lainnya', '48451798', 'default.jpg'),
('38', 'Panduan Lengkap Menggunakan Macromedia Freehand MX', 'Adi Kusniato', 'Elex media Kompotindo', 'Multimedia', '24383369', 'default.jpg'),
('380', '101 Widged Gratis', 'daryan Ramadhany', 'Elex Media Kompotindo', 'RPl', '36966863', 'default.jpg'),
('381', 'Analisis mudah dengan SPSS 20', 'Teguh Wahyono', 'Elex Media Kompotindo', 'RPl', '83605686', 'default.jpg'),
('382', 'Internet Marketing', 'SU Rahman', 'Elex Media Kompotindo', 'umum Produktif', '82307389', 'default.jpg'),
('383', 'Tool grafis Ala design Preneur', 'Suke Toejoeh', 'Elex Media Kompotindo', 'Lainnya', '82507127', 'default.jpg'),
('384', '40 Tips perawatan dan Optimasi', 'Edy Winarno S,T', 'Elex Media Kompotindo', 'Lainnya', '42060182', 'default.jpg'),
('385', 'Kontol dan Amankan Koneksi internet di jaringan', 'Athailah', 'Elex Media Kompotindo', 'Lainnya', '30874854', 'default.jpg'),
('386', 'Pemusnah Ramuan Sakti Virus', 'Dedik Kurniawan', 'Elex Media Kompotindo', 'Lainnya', '37266470', 'default.jpg'),
('387', 'SQl Injection', 'Efuz Zam', 'Elex Media Kompotindo', 'RPl', '42459658', 'default.jpg'),
('388', 'Aplikasi SPss pada Statistik multivariat ', 'Singgih Santoso', 'Elex Media Kompotindo', 'RPl', '80409878', 'default.jpg'),
('389', 'Aplikasi pilihan Android', 'D.Hendri mulyana', 'Elex Media Kompotindo', 'Umum Produktif', '36367649', 'default.jpg'),
('39', 'cara Salah Membersihkan Komputer & Gadged', 'Sequoia', 'Elex media Kompotindo', 'umum Produktif', '79710795', 'default.jpg'),
('390', 'Panduan Cepat Menguasai Windows 7', 'Nyoto Kurniawan ', 'Elex Media Kompotindo', 'Lainnya', '74717345', 'default.jpg'),
('391', '5 Sistem Populer dengan java', 'Ir. Yuniar Supardi', 'Elex Media Kompotindo', 'RPl', '54743545', 'default.jpg'),
('392', 'Tool terbaik untuk perawatan Pc', 'Edy Winarno S,T', 'Elex Media Kompotindo', 'Lainnya', '42160051', 'default.jpg'),
('393', 'Sukses membuat Toko online dengan berniaga .com', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64330969', 'default.jpg'),
('394', 'Formula Komplit Power Point', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64430838', 'default.jpg'),
('395', 'Ipad For Presentation ', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64530707', 'default.jpg'),
('396', 'Penjualan Retail dengan Sql Server dan VB6', 'Indah Indrayana', 'Elex Media Kompotindo', 'Lainnya', '52945903', 'default.jpg'),
('397', '60 Aplikasi Plc Micro', 'Dian Artanto', 'Elex Media Kompotindo', 'Umum Produktif', '38664636', 'default.jpg'),
('398', 'Kupas Tuntas Problem IT', 'Arif Rohmadi', 'Elex Media Kompotindo', 'Lainnya', '29476688', 'default.jpg'),
('399', 'Netbook atau Notebook', 'Jubilee enterprise', 'Elex Media Kompotindo', 'RPl', '64630576', 'default.jpg'),
('4', 'Karikatur photoshop', 'Derry iswidharma', 'Elex media Kompotindo', 'Lainnya', '37765815', 'default.jpg'),
('40', '175 Tips & Professional Point', 'Christopherlee', 'Elex media Kompotindo', 'Lainnya', '34769745', 'default.jpg'),
('400', 'Membangun prusahaan unggulan dengan Bpm', 'Feri Sulianta', 'Elex Media Kompotindo', 'Lainnya', '44856514', 'default.jpg'),
('401', 'Interaksi Ardunio dan LabView', 'Dian Artanto', 'Elex Media Kompotindo', 'Lainnya', '38764505', 'default.jpg'),
('402', 'Membangun Sistem Aplikasi Penjualan Tunai dan Kridit secara Multi user', 'Ahmad Mukhlis', 'Elex Media Kompotindo', 'RPl', '26181011', 'default.jpg'),
('403', 'Jualan Tanpa Ribet dengan Multiplay', 'Jubilee enterprise', 'Elex Media Kompotindo', 'RPl', '64730445', 'default.jpg'),
('404', 'Membangun Aplikasi Penjualan  Tunai dengan Kridit Secara Multi user', 'Ahmad Mukhlis', 'Elex Media Kompotindo', 'Lainnya', '26280880', 'default.jpg'),
('405', 'Cara instan Menjual Produk Digital', 'SU Rahman', 'Elex Media Kompotindo', 'RPl', '82407258', 'default.jpg'),
('406', 'Ipad untuk Fotografi digital', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64830314', 'default.jpg'),
('407', 'Eksplorasi Registri dan file Reaq ', 'Tri Amperiyanto', 'Elex Media Kompotindo', 'Lainnya', '85403328', 'default.jpg'),
('408', 'Smart Office With Redhat', 'Ukar tiona', 'Dian Rakyat', 'Lainnya', '13897124', 'default.jpg'),
('409', 'Trik Berinternet murah lewat ponsel Gsm', 'Pambudi Wibowo', 'Elex Media Kompotindo', 'Rpl', '75716035', 'default.jpg'),
('41', 'Instlasi dan Administrasi Mambo open source', 'Lan Leonardo', 'Elex media Kompotindo', 'Lainnya', '70223240', 'default.jpg'),
('410', 'Adobe Photoshop 7.0', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Lainnya', '33571317', 'default.jpg'),
('411', 'Membongkar file Pdf', 'Yudy Wicaksono', 'Elex Media Kompotindo', 'Umum Produktif', '90197040', 'default.jpg'),
('412', 'Mendapatkan dollar sambil berinternet', 'Agustinus Nalwan', 'Elex Media Kompotindo', 'Umum Produktif', '25881404', 'default.jpg'),
('413', 'Ayu Buat Fecebookmu Menarik', 'Addy Sukma', 'Elex Media Kompotindo', 'Lainnya', '23884024', 'default.jpg'),
('414', 'Word pro 96 for windows 95', 'Kurweni Ukar ', 'Elex Media Kompotindo', 'Umum Produktif', '69723895', 'default.jpg'),
('415', '101 Tips dan Trik Windows xp', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Lainnya', '64930183', 'default.jpg'),
('416', 'FB Net 2005', 'Arief Ramdhan ', 'Elex media Kompotindo', 'Lainnya', '29177081', 'default.jpg'),
('417', 'Administarasi Sistem Linux Redhar ', 'DRS.Ricardur Eko Indrajit', 'Elex media Kompotindo', 'RPl', '40761885', 'default.jpg'),
('418', 'Program UB,Net Untuk ', 'Rudianto', 'Elex media Kompotindo', 'Lainnya', '79111581', 'default.jpg'),
('419', 'Tugas Akhir dan Skripsi', 'Lainnya', 'Elex media Kompotindo', 'Lainnya', '90596516', 'default.jpg'),
('42', 'Trik Membuat Landing page tanpa Pemrogaman', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58638436', 'default.jpg'),
('420', 'Ngeblog di Kompasiana', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '65030052', 'default.jpg'),
('421', 'Teknik Mendownlod apapun dari Internet', 'Rafknowledge', 'Elex media Kompotindo', 'Lainnya', '76614856', 'default.jpg'),
('422', 'The Best Internet Tools', 'Jubilee enterprise', 'Elex media Kompotindo', 'umum Produktif', '65129921', 'default.jpg'),
('423', 'Web Makin Dahsyat Dengan Jquery', 'Arista prasetyo Adi', 'Elex media Kompotindo', 'RPl', '30075902', 'default.jpg'),
('424', 'Bloq untuk Usaha Kecil dan Menengah Ukm', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Lainnya', '77713415', 'default.jpg'),
('425', '101 Keleksi Disain Slide Peresetasi', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '65229790', 'default.jpg'),
('426', 'Trick Cepat menguasai  Kamera Raw 7', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '65329659', 'default.jpg'),
('427', 'papercraf', 'Feri Sulianta', 'Elex media Kompotindo', 'Lainnya', '44956383', 'default.jpg'),
('428', 'Windows Terminal Service', 'Arista prasetyo Adi', 'Elex media Kompotindo', 'Lainnya', '30175771', 'default.jpg'),
('429', ' Membuat Laporan Pdf  Untuk Aplikasi Web dengan PHP 5', 'Beny Benardi', 'Elex media Kompotindo', 'RPl', '32073282', 'default.jpg'),
('43', 'Tip dan Trik Dreamweaver CS5', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58738305', 'default.jpg'),
('430', 'Mempunyai Toko Online dengan hanya 100 Ribuan', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Lainnya', '77813284', 'default.jpg'),
('431', 'Corel Draw 9.0', 'Andri setyawan', 'Elex media Kompotindo', 'Lainnya', '27878784', 'default.jpg'),
('432', 'Kiat Sukses Menjadi It Free Iance', 'Feri Sulianta', 'Elex media Kompotindo', 'Lainnya', '45056252', 'default.jpg'),
('433', 'Membangun Jaringan Kumputer dengan  Linux', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'RPl', '77913153', 'default.jpg'),
('434', 'Panduan Menyusun Sop', 'I.R M .Budiharto', 'Raih asa sukses', 'RPl', '95390228', 'default.jpg'),
('435', 'Langkah Cerdas Internet Marketing', 'Edy Winarno S,T', 'Elex media Kompotindo', 'Multimedia', '42259920', 'default.jpg'),
('436', '90 Tips dan Trik google', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '65429528', 'default.jpg'),
('437', 'Rahasia Blanding Photoshop', 'Cristopher Lee', 'Elex media Kompotindo', 'Lainnya', '35468828', 'default.jpg'),
('438', 'Nokia Pc Suite 5 dengan OXYGEN', 'I an Chandra K.', 'Elex media Kompotindo', 'Umum Produktif', '51847344', 'default.jpg'),
('439', '88 Trik Rahasia Windows Xp', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '65529397', 'default.jpg'),
('44', '36 jam Belajar Komputer Archiad 10', 'Mikael Sugianto', 'Elex media Kompotindo', 'Lainnya', '72819834', 'default.jpg'),
('440', ' Belajar Sendiri Interaksi dan Kolaborasi Acces ,Excel dan word pada Program Microsof Office 2007', 'Lainnya', 'Elex media Kompotindo', 'Lainnya', '90696385', 'default.jpg'),
('441', 'Clien / Server dan Web dengan Power builder 11 s', 'Syahrial Chan', 'Elex media Kompotindo', 'Lainnya', '83006472', 'default.jpg'),
('442', 'Jutawan Internet Sebelum usia 25', 'Fary Sj Orah ', 'Elex media Kompotindo', 'Lainnya', '44057562', 'default.jpg'),
('443', 'Trik Rahasia Anti Lupa Pasword', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '65629266', 'default.jpg'),
('444', 'Photoshop Lebay', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '65729135', 'default.jpg'),
('445', 'Windows Server 2003', 'William R.Stanek', 'Elex media Kompotindo', 'Multimedia', '88499267', 'default.jpg'),
('446', 'Microsof office word design explorer', 'Apriyanti larenta', 'Elex media Kompotindo', 'Lainnya', '28777605', 'default.jpg'),
('447', 'Formula  dan Excel yang Menjadi Solusi', 'Adi Kusrianto', 'Elex media Kompotindo', 'Lainnya', '24882714', 'default.jpg'),
('448', 'Kupas Tuntas Online dengan Ponsel', 'Alfa hartoko', 'Elex media Kompotindo', 'Rpl', '26780225', 'default.jpg'),
('449', 'Resep Finansial Excel 2007', 'Cristopher Lee', 'Elex media Kompotindo', 'Lainnya', '35568697', 'default.jpg'),
('45', 'Step by Step Windows 7', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '58838174', 'default.jpg'),
('450', 'Analisis mudah dengan SPSS 20', 'Teguh Wahyono', 'Elex media Kompotindo', 'Lainnya', '83705555', 'default.jpg'),
('451', 'Teknik Download Youtube', 'Dominikus Juju', 'Elex media Kompotindo', 'Lainnya', '39363719', 'default.jpg'),
('452', 'For Rent Aplikasi Rental Menggunakan  Macro Excel', 'Yudy Wicaksono', 'Elex media Kompotindo', 'Lainnya', '90296909', 'default.jpg'),
('453', 'Online Tanpa Browser', 'Alexius Satyo', 'Elex media Kompotindo', 'Lainnya', '26580487', 'default.jpg'),
('454', 'Studen Guide Pengenalan Hedware', 'wahana Komputer', 'Elex media Kompotindo', 'Lainnya', '87200970', 'default.jpg'),
('455', 'Photoshop Cs5 For Business', 'Mikael Sugianto', 'Elex media Kompotindo', 'Umum Produktif', '73119441', 'default.jpg');
INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `jenis_buku`, `kode_buku`, `foto`) VALUES
('456', 'Aplikasi SPPS Dalam Saham', 'Abdul Hadi', 'Elex media Kompotindo', 'Umum Produktif', '23584417', 'default.jpg'),
('457', 'Website praktis Dengan Geogle Sites', 'Nyoto Kurniawan ', 'Elex media Kompotindo', 'Umum Produktif', '74817214', 'default.jpg'),
('458', 'Sofware Terbaik Desain dan Foto', 'Tim Emedia solusindo', 'Elex media Kompotindo', 'Lainnya', '84404638', 'default.jpg'),
('459', 'Trik Pintar Dan Gratis untuk Proteci Windows', 'Tim Emedia solusindo', 'Elex media Kompotindo', 'Lainnya', '84504507', 'default.jpg'),
('46', 'step by step Internet Promotion', 'Joko Salim', 'Elex media Kompotindo', 'Lainnya', '57140401', 'default.jpg'),
('460', 'Path Analysis', 'Jonathan Sarwono', 'Elex media Kompotindo', 'RPl', '57739615', 'default.jpg'),
('461', 'ASP.Net 2.0 Dengan VB 2005', 'Ario suryo kusumo', 'Elex media Kompotindo', 'RPl', '29576557', 'default.jpg'),
('462', 'Bea Smart dan Good Fecebookers', 'Winda Julianita', 'Elex media Kompotindo', 'Lainnya', '88599136', 'default.jpg'),
('463', 'Fruity Loops 2', 'Inung K.', 'Elex media Kompotindo', 'Umum Produktif', '53545117', 'default.jpg'),
('464', 'Panduan Cepat menguasai Excel 2010', 'Arista prasetyo Adi', 'Elex media Kompotindo', 'Umum Produktif', '30275640', 'default.jpg'),
('465', 'Excel Intellegent ', 'Feri Sulianta', 'Elex media Kompotindo', 'Lainnya', '45156121', 'default.jpg'),
('466', 'Formula Dan Fungsi Excel yang menjadi Solusi', 'Adi Kusrianto', 'Elex media Kompotindo', 'Lainnya', '24982583', 'default.jpg'),
('467', 'Trik Mengintegrasikan Fecebook, Twiter.', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '65829004', 'default.jpg'),
('468', '10 Mesin Pencari Yang Paling Dahsyat', 'Anwari dan Java kreativity', 'Elex media Kompotindo', 'Rpl', '28477998', 'default.jpg'),
('469', 'Siapa bilang Pemograman itu Sulit', 'Cristopher Lee', 'Elex media Kompotindo', 'RPl', '35668566', 'default.jpg'),
('47', 'Bank Soal Statistic dengan spss', 'Singgih Santoso', 'Elex media Kompotindo', 'Lainnya', '80110271', 'default.jpg'),
('470', 'Membuat Catatan Digital dengan Microsoft Office One Note 2007', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '65928873', 'default.jpg'),
('471', 'Excel 2007 dan 2011', 'Adi Kusrianto', 'Elex media Kompotindo', 'Umum Produktif', '25082452', 'default.jpg'),
('472', 'Amazing ARI', 'Rahmat Widiyanto', 'Elex media Kompotindo', 'umum Produktif', '77114201', 'default.jpg'),
('473', 'Aplikasi Belajar Interaktif dengan Power Point', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Lainnya', '50748785', 'default.jpg'),
('474', 'Buku Pintar Interaktik Untuk Pemula', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66028742', 'default.jpg'),
('475', 'Dosis Tinggi Twitter', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66128611', 'default.jpg'),
('476', 'Trik pintar Control Tools', 'wahana Komputer', 'Elex media Kompotindo', 'Lainnya', '87300839', 'default.jpg'),
('477', '10 Jurus Terlarang', 'Ippoh Santoso', 'Elex media Kompotindo', 'Lainnya', '53744855', 'default.jpg'),
('478', 'Panduan Pemula Chatting dengan Yahoo messenger', 'Indah Indrayana', 'Elex media Kompotindo', 'Umum Produktif', '53045772', 'default.jpg'),
('479', '95 Tips dan TrikRegistry', 'Only Geraid', 'Elex media Kompotindo', 'Lainnya', '75216690', 'default.jpg'),
('48', 'Tip & trik Autocad', 'Sofi Ansori', 'Elex media Kompotindo', 'Lainnya', '81009092', 'default.jpg'),
('480', 'Trik Windows 95', 'Dani Okianto', 'Elex media Kompotindo', 'Umum Produktif', '36866994', 'default.jpg'),
('481', 'Mengelola dan Mengoptimalkan Aset properti', 'Budi Santoso', 'Elex media Kompotindo', 'Umum produktif', '34270400', 'default.jpg'),
('482', 'Adobe Photoshop Shop untuk Desain  Web', 'wahana Komputer', 'Andi', 'Umum Produktif', '12598827', 'default.jpg'),
('483', 'Pemograman berorentasi Objek', 'Wagito', 'Gava Media', 'Rpl', '91595206', 'default.jpg'),
('484', 'Jalan Pintas menjadi kaya', 'Frento T.', 'Elex media Kompotindo', 'Lainnya', '46354549', 'default.jpg'),
('485', 'Make Up foto album Fecebook', 'Bunafid Nugroho', 'Elex media Kompotindo', 'Lainnya', '34470138', 'default.jpg'),
('486', 'Kreasi Efek Foto Dengan Adobe Photho Shop CS4', 'Rachmad Saleh', 'Andi', 'Lainnya', '12099482', 'default.jpg'),
('487', 'Membuat Aplikasi mini dengan Super Java', 'Miftakhul huda', 'Elex media Kompotindo', 'Rpl', '72520227', 'default.jpg'),
('488', '66 Jurus Mabuk Buat ngeblog', 'Fary Sj Orah ', 'Elex media Kompotindo', 'Umum Produktif', '44157431', 'default.jpg'),
('489', 'Urban Art Creative Distro', 'Slamet Hariyadi', 'Elex media Kompotindo', 'Umum Produktif', '80709485', 'default.jpg'),
('49', 'Path Analysis', 'Jonathan Sarwono', 'Elex media Kompotindo', 'RPL', '57440008', 'default.jpg'),
('490', 'Meraup Rupiah Dari Bisnis Konsultan', 'Dandy Alexandra At', 'Elex media Kompotindo', 'umum Produktif', '36767125', 'default.jpg'),
('491', '101 Tips dan Trik Plururh', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '66228480', 'default.jpg'),
('492', 'Membuat Website  Pribadi Tanpa Pmograman', 'Agustinus Nalwan', 'Elex media Kompotindo', 'Lainnya', '25981273', 'default.jpg'),
('493', 'Asyiknya Mengenal Java', 'Windu Gata', 'Elex media Kompotindo', 'Rpl', '88898743', 'default.jpg'),
('494', 'Trik Berkomputer Sehat', 'Krisdianto ,ketut GB, Michael H.', 'Elex media Kompotindo', 'Umum Produktif', '69024812', 'default.jpg'),
('495', 'Ms Excel 2007', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66328349', 'default.jpg'),
('496', 'Microsof Office Excel 2007', 'Kurweni Ukar ', 'Elex media Kompotindo', 'Lainnya', '69823764', 'default.jpg'),
('497', 'Membangun JaringanDiskless Berbasis Linux ', 'Ricardus Eko Indra ', 'Elex media Kompotindo', 'Lainnya', '77413808', 'default.jpg'),
('498', 'Blog Spot', 'Dominikus Juju', 'Elex media Kompotindo', 'Lainnya', '39463588', 'default.jpg'),
('499', 'Personal Branding Lewat Internet', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '66428218', 'default.jpg'),
('5', '13 ancaman pc dan cara mengatasinya', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58139091', 'default.jpg'),
('50', 'Panduan Office Web apps untuk Pemula', 'Rai Knowlodge', 'Elex media Kompotindo', 'Umum Produktif', '77313939', 'default.jpg'),
('500', 'Tips dan Trik HTML', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPl', '66528087', 'default.jpg'),
('501', 'Aplikasi Penjualan dengan Program Java Netbeans Xammp dan Irepot', 'Hendra Kurniawan', 'Elex media Kompotindo', 'RPl', '49849964', 'default.jpg'),
('502', 'Membangun Bisnis Online dengan Modal S2', 'Fary Sj Orah ', 'Elex media Kompotindo', 'RPl', '44257300', 'default.jpg'),
('503', 'Yuk Bersosialisasi Dengan Koprol', 'Aunurroria Mamur', 'Elex media Kompotindo', 'Umum Produktif', '31474068', 'default.jpg'),
('504', 'Microsof Acces 97', 'At A Glance', 'Elex media Kompotindo', 'Lainnya', '30774985', 'default.jpg'),
('505', 'Pemograman Actions Cript dengan Flash 5 dan Aplikasinya', 'Hasanuddin', 'Andi .Yogyakarta', 'Lainnya', '12998303', 'default.jpg'),
('506', 'Sejarah dan Budaya Jombang', 'Nanang P.M.E', 'Dinas Pendidikan', 'Lainnya', '19689526', 'default.jpg'),
('507', 'Kalkulus', 'H.M.Hasyim Baisuni ', 'Universitas Indonesia', 'Lainnya', '96189180', 'default.jpg'),
('508', 'Desain dan Animasi Menggunakan Macromedia Fireworks Mx', 'Fitrin Novianto', 'Andi', 'Lainnya', '11000923', 'default.jpg'),
('509', 'Mudah Merakit Komputer', 'Rachmad Hakim', 'Eazy Com', 'Lainnya', '22985203', 'default.jpg'),
('51', 'Step by Step Merancang & Membuat Komputerisasi', 'Irnawan Island Sricpt', 'Elex media Kompotindo', 'RPL', '55242890', 'default.jpg'),
('510', 'Merakit komputer', 'Miftakul Ulum,S.SI', 'Trubus Agrisana', 'Lainnya', '95989442', 'default.jpg'),
('511', 'Vidio Editing dan Pinnacle Studio 9', 'wahana Komputer', 'Andi', 'Lainnya', '12698696', 'default.jpg'),
('512', 'Pemograman Bisnis dan Akuntansi', 'Sumiyanah', 'BPFE. Yogyakarta', 'Lainnya', '13497648', 'default.jpg'),
('513', 'Pemograman Visual Basic ', 'Dian Jaya ', 'IMKI Prima', 'Lainnya', '92194420', 'default.jpg'),
('514', 'Tips dan Trik Linux', 'M.Syafii', 'Andi', 'Lainnya', '11600137', 'default.jpg'),
('515', 'Gril Make Over With Photoshop', 'Roy Raehmadian', 'Elex media Kompotindo', 'Multimedia', '79011712', 'default.jpg'),
('516', 'Office Publisher 2007', 'Denie kristiadi', 'P.c Media', 'Lainnya', '94890883', 'default.jpg'),
('517', '7.0 3D Max', 'Lainnya', 'Andi', 'Lainnya', '12898434', 'default.jpg'),
('518', 'Membangun Aplikasi Phpnya aja', 'Prasetyo Ambang', 'Andi', 'Lainnya', '11999613', 'default.jpg'),
('519', 'Tutorial Pemograman Shell linux', 'Teguh Wahyono', 'Andi', 'Lainnya', '12498958', 'default.jpg'),
('52', 'Mudah Merakit Komputer', 'Rachmad Hakim', 'Elex media Kompotindo', 'Lainnya', '76015642', 'default.jpg'),
('520', 'Belajar cepat Asp', 'Mas Agus Setiawan', 'Maxi. Com', 'Lainnya', '94091931', 'default.jpg'),
('521', 'After Efect 6.5 untuk Prefesional', 'Nandi Cahandra', 'Maxi. Com', 'Lainnya', '94291669', 'default.jpg'),
('522', 'Sms gratis Via Internet', 'Rori Sano', 'Neo media press', 'Lainnya', '94691145', 'default.jpg'),
('523', 'Tips dan Trik HTML', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66627956', 'default.jpg'),
('524', 'Teknik dan Hacking dan ovarlay Friendster', 'Hakr3w dan Smitdev Community', 'Elex media Kompotindo', 'Lainnya', '47852584', 'default.jpg'),
('525', 'Aplikasi penjualan dengan Visual Basic 2008', 'Muhamad Sadeli', 'Maxi. Com', 'Lainnya', '94191800', 'default.jpg'),
('526', 'Pemrograman Microkontroler pic 16f84A', 'Kwok Hin', 'Andi', 'Lainnya', '11400399', 'default.jpg'),
('527', 'ASP Programing', 'Gregorius Agung', 'Panduan', 'Lainnya', '94990752', 'default.jpg'),
('528', 'FoxPro 9.0', 'Madcoms', 'andi', 'Lainnya', '11700006', 'default.jpg'),
('529', 'Membuat blog Foto', 'Noverto Aji', 'Eazy Com', 'Lainnya', '22885334', 'default.jpg'),
('53', 'Metode Riset Skripsi Pendekatan Kuantifaktis Menggunakan Prosedur SPSS', 'Jonathan Sarwono', 'Elex media Kompotindo', 'Rpl', '57539877', 'default.jpg'),
('530', 'Sistem Informasi Penjualan Retail dengan Sql Server dan VB6', 'Indah Indrayana', 'Elex media Kompotindo', 'Rpl', '53145641', 'default.jpg'),
('531', 'Program Data Base lokal dan Server Borland Delphi 2005', 'M.A.Gus J.alam', 'Elex media Kompotindo', 'Lainnya', '71421668', 'default.jpg'),
('532', 'SKYP tm', 'Michael Artoando', 'Media Kom', 'Lainnya', '94491407', 'default.jpg'),
('533', 'RPL Jilid 3', 'Aunur rofiq manzur', 'Dinas Pendidikan', 'Lainnya', '15594897', 'default.jpg'),
('534', 'Desain Grafis dengan Adobe In Design Cs.d Cs.2', 'Andreas ', 'Elex media Kompotindo', 'Lainnya', '27579177', 'default.jpg'),
('535', 'Konsep dan Aplikasi Sistem Pendukung Keputusan ', 'Kusrini ,M.Kom', 'Andi', 'Lainnya', '11300530', 'default.jpg'),
('536', 'Teknik merakit pc dan Over Cloking', 'Bambang Robiin dan Rusidi', 'Andi', 'Lainnya', '10501578', 'default.jpg'),
('537', 'Macromedia Flash Prefesional', 'Dhani Yudhiartoro', 'Andi', 'Lainnya', '10701316', 'default.jpg'),
('538', 'Kripto Grafi', 'Rinaldhi munir', 'Informatika', 'Lainnya', '93193110', 'default.jpg'),
('539', 'Belajar Adobe Photoshop 7.0', 'A. Taufiq Hidayatulloh', 'Indah Surabaya', 'Lainnya', '92294289', 'default.jpg'),
('54', 'Metode riset Skripsi Pendekatan Kuantitatif Menggunakan P-spss', 'Jonathan Sarwono', 'Elex media Kompotindo', 'Lainnya', '57639746', 'default.jpg'),
('540', 'On The Spot Hecking', 'Thor', 'Elex media Kompotindo', 'Lainnya', '83905293', 'default.jpg'),
('541', 'J2EE Dalam Aplikasi Enterprise', 'Mislahudin Rose A.S', 'Informatika', 'Lainnya', '93093241', 'default.jpg'),
('542', 'Mengenal Java dan Database dengan Net Beans', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66727825', 'default.jpg'),
('543', 'Remastering Windows Xp', 'Andik Amir W.', 'Star Cp', 'Lainnya', '95789704', 'default.jpg'),
('544', 'Multimedia dan Aplikasinya dengan Macro Media Director', 'D.R. Suyoto', 'Elex media Kompotindo', 'Lainnya', '36467518', 'default.jpg'),
('545', 'Aplikasi web Interaktif dengan ASP', 'Bernard Renaldy Suteja', 'Informatika', 'Lainnya', '92693765', 'default.jpg'),
('546', '50 Games For Fun ', 'Dessy Daharti', 'Andi', 'Lainnya', '10601447', 'default.jpg'),
('547', 'Pmograman Client /Server dengan Java2', 'Budi Santoso', 'Elex media Kompotindo', 'Lainnya', '34370269', 'default.jpg'),
('548', 'Visual Basic Net  6.0 Nyalakan Anti Virus', 'Aat Shadewa', 'Dsi Publishing', 'Lainnya', '22785465', 'default.jpg'),
('549', 'Teknik pemograman Pascal', 'Budi Raharjo', 'Informatika', 'Lainnya', '92793634', 'default.jpg'),
('55', 'Permula dan fungsi excel yang solusi', 'Adi Kusniato', 'Elex media Kompotindo', 'Lainnya', '24483238', 'default.jpg'),
('550', 'Sekolah Life Skiils', 'Jamal Ma\'mur Asmani', 'Diva Press', 'Lainnya', '22685596', 'default.jpg'),
('551', 'Interior dengan 3ds Max 2011', 'Handi Candra ', 'Informatika', 'Lainnya', '92893503', 'default.jpg'),
('552', '20 Total Tutorials The Magic Ol Director ', 'Hendi Hendraman', 'Informatika', 'Lainnya', '92993372', 'default.jpg'),
('553', 'Membangun Aplikasi Berbasis Windows dengan Visual Basic.Net', 'Suryanto Suharli', 'Elex media Kompotindo', 'Lainnya', '82806734', 'default.jpg'),
('554', 'Adobe Photshop Cs5', 'Edi S. Mulyana', 'Andi', 'Lainnya', '10801185', 'default.jpg'),
('555', 'Cake Walk Pro Audiog', 'Inung K.Ari sasangka', 'Elex media Kompotindo', 'Lainnya', '53644986', 'default.jpg'),
('556', 'Pemograman Borlandh Delphi', 'Madcoms', 'Andi', 'Lainnya', '11799875', 'default.jpg'),
('557', 'Microsof Windows Server 2003', 'Enterpres Editions', 'Indah Surabaya', 'Rpl', '92494027', 'default.jpg'),
('558', 'Aplikasi Rental dengan Java dan MY Sql', 'Miftakhul huda', 'Elex media Kompotindo', 'Lainnya', '72620096', 'default.jpg'),
('559', 'Visual Basic.6.0', 'Abdur Rozaq', 'Indah Surabaya', 'Lainnya', '92394158', 'default.jpg'),
('56', 'Mikrosoft visual basic 6.0', 'Drs. Ario Suryo Kusumo', 'Elex media Kompotindo', 'Lainnya', '40462278', 'default.jpg'),
('560', 'Mengoprasikan Sistem Informasi', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '16693456', 'default.jpg'),
('561', 'Informatika Dan Teknik Komputer', 'Wearnes', 'Informatika', 'Lainnya', '93292979', 'default.jpg'),
('562', 'Biologi', 'Basuki Prayetno', 'Dinas Pendidikan', 'Lainnya', '16194111', 'default.jpg'),
('563', 'Kurikulum 2004 Bahasa Arab', 'Dinas ', 'Dinas Pendidikan', 'Lainnya', '18291360', 'default.jpg'),
('564', 'Panduan Meteri Ujian Nasional Tahun 2007/2008', ' Samsuardi', 'Erlangga', 'Lainnya', '91295599', 'default.jpg'),
('565', 'Teknologi Informatika dan komunikasi', 'Ratna Ediati', 'Aryadita', 'Lainnya', '13297910', 'default.jpg'),
('566', 'Kimia', 'A. Muhli Junaidi', 'Diva Press', 'Lainnya', '22585727', 'default.jpg'),
('567', 'Bermain dan Belajar Bersama Upin dan Ipin', 'Sony Hariyana', 'Grafindo', 'Lainnya', '91894813', 'default.jpg'),
('568', 'Matematika', 'Kirana Cakra Buana', 'kirana Cakra', 'Lainnya', '93492717', 'default.jpg'),
('569', ' Ipad untuk Fotografi digital ', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '66827694', 'default.jpg'),
('57', 'Softwere jail dan unik', 'M-Muharrom dedik kurniawan', 'Elex media Kompotindo', 'Lainnya', '73618786', 'default.jpg'),
('570', 'Modul Pendidikan Agama Islam', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '16793325', 'default.jpg'),
('571', 'Pendidikan Pancasil dan Kewarganegaran Kls X1', ' Dinas', 'Dinas Pendidikan', 'Lainnya', '14396469', 'default.jpg'),
('572', 'Mat x1', 'Dinas', 'Dinas Pendidikan', 'Multimedia', '16893194', 'default.jpg'),
('573', 'Pengangan Guru Matematika ', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '16993063', 'default.jpg'),
('574', 'Sejarah Indah X1', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17092932', 'default.jpg'),
('575', 'Pegangan Guru Sastra Indonesia X1', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17192801', 'default.jpg'),
('576', 'Prakarya dan Kewirausahaan', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17292670', 'default.jpg'),
('577', 'Pegangan Prakarya dan Kewirausaan', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17392539', 'default.jpg'),
('578', 'Pegangan Guru penjaskes 1', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17492408', 'default.jpg'),
('579', 'RPL ', 'Aunur R,Mulyanto', 'Dinas Pendidikan', 'Lainnya', '15495028', 'default.jpg'),
('58', 'With Groupon \"the Amazing Deals\"', 'Winda Julianto', 'Elex media Kompotindo', 'Lainnya', '88798874', 'default.jpg'),
('580', 'Pegangan Guru B.Indonesia Ekspren diri Akademik', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17592277', 'default.jpg'),
('581', 'Pegangan Bahasa Inggris 1', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17692146', 'default.jpg'),
('582', 'Modul kkpi', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17792015', 'default.jpg'),
('583', 'Rpl Jilid 1', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17891884', 'default.jpg'),
('584', 'Nautikal Kapal Penangkap Ikan', 'Bambang Setono Adi,dkk', 'Dinas Pendidikan', 'Lainnya', '15694766', 'default.jpg'),
('585', ' Biologi Pertanian Jilid 1', 'Amelia Zulianti Sireger dkk', 'Dinas Pendidikan', 'Lainnya', '14995683', 'default.jpg'),
('586', 'Kesekertarisan jilid 2', 'Seddy Nagara', 'Dinas Pendidikan', 'Lainnya', '21087692', 'default.jpg'),
('587', 'akomodasi perhotelan', 'Ni Wayan Swith ', 'Dinas Pendidikan', 'Lainnya', '19789395', 'default.jpg'),
('588', 'Usaha jasa Pariwisata', 'U.T Wardani', 'Dinas Pendidikan', 'Lainnya', '22186251', 'default.jpg'),
('589', 'Fisika Jilid 1', 'E darko', 'Dinas Pendidikan', 'Lainnya', '18491098', 'default.jpg'),
('59', 'Berbelanja Smart dan membuka Gerai gaul', 'Cipta Haini', 'Elex media Kompotindo', 'Lainnya', '35069352', 'default.jpg'),
('590', 'teknik Bodi otomotif', 'Gunadi', 'Dinas Pendidikan', 'Lainnya', '18790705', 'default.jpg'),
('591', 'Teknik Listrik Industri', 'Siswoyo', 'Dinas Pendidikan', 'Lainnya', '21287430', 'default.jpg'),
('592', 'matematika Smk bisnis dan manajemen', 'Bandung arrys', 'Dinas Pendidikan', 'Lainnya', '15894504', 'default.jpg'),
('593', 'Teknik Sepeda Motor', ' Jalius Jama', 'Dinas Pendidikan', 'Lainnya', '14496338', 'default.jpg'),
('594', 'Trik Corel Draw10 dan Corel Photo Paint 10', 'Ian candra k', 'Elex media Kompotindo', 'Lainnya', '52646296', 'default.jpg'),
('595', 'Usaha jasa Pariwisata Jilid 2', 'U.T Wardani', 'Sity Press', 'Lainnya', '95689835', 'default.jpg'),
('596', 'Membuat Dunia 3 D dengan VRML', 'Adi Kurniadi', 'Elex media Kompotindo', 'Lainnya', '24283500', 'default.jpg'),
('597', 'Tik', 'Lestiah', 'Erlangga', 'Multimedia', '91395468', 'default.jpg'),
('598', 'Kimia', 'Samsuardi', 'Dinas Pendidikan', 'Lainnya', '20987823', 'default.jpg'),
('599', 'Trik Photoshop 6.0', 'Slamet Riyanto', 'Elex media Kompotindo', 'Multimedia', '80809354', 'default.jpg'),
('6', 'Semua bisa menjadi programer Web Java', 'Ir yuniar supardi', 'Elex media Kompotindo', 'Rpl', '54344069', 'default.jpg'),
('60', 'Banjir Duit lewat deviantart ', 'Alfa hartoko', 'Elex media Kompotindo', 'Lainnya', '26680356', 'default.jpg'),
('600', 'Paket Program Niaga', 'Novita Indrayan', 'laboratorium', 'Lainnya', '93692455', 'default.jpg'),
('601', 'Teknik Sepeda  motor jilid 1', 'jalius jama', 'Dinas Pendidikan', 'Lainnya', '19389919', 'default.jpg'),
('602', 'Teknik Pemanfaatan Tenaga Listrik 1', 'Prih SumardJati', 'Dinas Pendidikan', 'Multimedia', '20388609', 'default.jpg'),
('603', 'Teknik Perkayuan 2', 'Budi martono', 'Dinas Pendidikan', 'Lainnya', '16293980', 'default.jpg'),
('604', 'Teknik Pemeliharaan dan Perbaikan 1', 'Peni Handayani', 'Dinas Pendidikan', 'Lainnya', '20188871', 'default.jpg'),
('605', 'Teknik KonstruksiBangunan Gedung 1', 'Ag.Tamrin', 'Dinas Pendidikan', 'Lainnya', '14696076', 'default.jpg'),
('606', 'matimatika Smk Bisnis dan manajemen Jilid 2', 'Bandung arrys', 'Dinas Pendidikan', 'Lainnya', '15994373', 'default.jpg'),
('607', 'Teknik Pemesinan jilid 1', 'Widarto', 'Dinas Pendidikan', 'Lainnya', '22385989', 'default.jpg'),
('608', 'Fisika Jilid 3', 'Mashuri', 'Dinas Pendidikan', 'Lainnya', '19489788', 'default.jpg'),
('609', 'Alat Ukur dan Pengukuran Jilid 1', 'Sri Waluyanti', 'Dinas Pendidikan', 'Lainnya', '21886644', 'default.jpg'),
('61', 'Membuat Blog dengan windows live writer', 'Jubilee enterprise', 'Elex media Kompotindo', 'RPL', '58938043', 'default.jpg'),
('610', 'Teknik Pangan Jilid 1', 'Sri Rini Dwi Ari', 'Dinas Pendidikan', 'Lainnya', '21786775', 'default.jpg'),
('611', 'Teknik Listrik Industri jilid 1', 'Siswoyo', 'Dinas Pendidikan', 'Lainnya', '21387299', 'default.jpg'),
('612', 'Akomodasi Perhotelan jilid 3', 'Ni Wayan Swith ', 'Dinas Pendidikan', 'Lainnya', '19889264', 'default.jpg'),
('613', 'Akomodasi perhotelan jilid 1', 'Ni Wayan Swith ', 'Dinas Pendidikan', 'Lainnya', '19989133', 'default.jpg'),
('614', 'Teknik Tranmisi Tenaga Listrik Jilid 2', 'Astimeri', 'Dinas Pendidikan', 'Lainnya', '15295290', 'default.jpg'),
('615', 'Teknik pemeliharan dan Perbaikan Sistem elektronika jilid 1', 'Peni Handayani', 'Dinas Pendidikan', 'Lainnya', '20288740', 'default.jpg'),
('616', 'Matimatika Smk Bisnis dan manajemen Jilid 1', 'Bandung arrys', 'Dinas Pendidikan', 'Lainnya', '16094242', 'default.jpg'),
('617', 'Kimia Jilid 1', 'Ratna Ediati', 'Dinas Pendidikan', 'Lainnya', '20688216', 'default.jpg'),
('618', 'Konsep dasar Akuntansi dan Pelaporan Keuangan Jilid 3', 'Umi Muawanah', 'Dinas Pendidikan', 'Lainnya', '22286120', 'default.jpg'),
('619', 'Nautikal Kapal Penangkap Ikan jilid 2', 'Bambang Setono Adi,dkk', 'Dinas Pendidikan', 'Lainnya', '15794635', 'default.jpg'),
('62', 'Step by step Desain Robol dg photoshop cs53lensa teknologi', ' Lensa teknology', 'Elex media Kompotindo', 'Lainnya', '23284810', 'default.jpg'),
('620', 'Kriya kayu jilid 1', 'Enget dkk', 'Dinas Pendidikan', 'Lainnya', '18590967', 'default.jpg'),
('621', 'seni budaya Jilid 1', 'Sri Hermawati', 'Dinas Pendidikan', 'Lainnya', '21587037', 'default.jpg'),
('622', 'Seni budaya Jilid 2', 'Sri Hermawati', 'Dinas Pendidikan', 'Lainnya', '21686906', 'default.jpg'),
('623', 'Tata Kecantikan kulit jilid 3', 'Herni Kusantati', 'Dinas Pendidikan', 'Lainnya', '19190181', 'default.jpg'),
('624', 'teknik bodi otomotif jilid 3', 'Gunadi', 'Dinas Pendidikan', 'Lainnya', '18890574', 'default.jpg'),
('625', 'nautikal kapal penangkap ikan Jilid 3', 'D.bambang Setiono adi', 'Dinas Pendidikan', 'Lainnya', '16393849', 'default.jpg'),
('626', 'Fisika jilid 2', 'Mashuri', 'Dinas Pendidikan', 'Lainnya', '19589657', 'default.jpg'),
('627', 'Biologi Pertanian jilid 1', 'Amelia Zulianti Sireger dkk', 'dinas Pendidikan', 'Lainnya', '15095552', 'default.jpg'),
('628', 'Kewarganegaraan 3', 'Kewarganegaraan', 'Dinas Pendidikan', 'Lainnya', '96388918', 'default.jpg'),
('629', 'Tata Kecantikan Rambut jilid 1', 'Rostamailis', 'Dinas Pendidikan', 'Lainnya', '20788085', 'default.jpg'),
('63', 'ekstensi terhebat firefox', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '59037912', 'default.jpg'),
('630', 'Tenik gambar Bangunan jilid 3', 'Suparno', 'Dinas Pendidikan', 'Lainnya', '22086382', 'default.jpg'),
('631', 'teknik listrik industri', 'Siswoyo', 'Dinas Pendidikan', 'Lainnya', '21487168', 'default.jpg'),
('632', 'Tata Kecantikan kulit jilid 3', 'Herni Kusantati', 'Dinas Pendidikan', 'Lainnya', '19290050', 'default.jpg'),
('633', 'ips jilid1', 'Nur Wahyu rahmadi', 'Dinas Pendidikan', 'Lainnya', '20089002', 'default.jpg'),
('634', 'restoran jilid 3', 'Prihastuti Ekawatiningsih', 'Dinas Pendidikan', 'Lainnya', '20488478', 'default.jpg'),
('635', 'Bank Soal Statistic dengan spss', 'Drs Sobirin', 'Dinas Pendidikan', 'Lainnya', '18391229', 'default.jpg'),
('636', 'Akuntansi Industri Jilid 1', 'Ali Irfan', 'Dinas Pendidikan', 'Lainnya', '14795945', 'default.jpg'),
('637', 'Teknik Pembangkit Tenaga Listrik Jilid 2', 'H.Supari Muslim', 'Dinas Pendidikan', 'Lainnya', '18990443', 'default.jpg'),
('638', 'tata kecantikan rambut jilid 2', 'Rostamailis', 'Dinas Pendidikan', 'Lainnya', '20887954', 'default.jpg'),
('639', 'restoran jilid 1', 'Prihastuti Ekawatiningsih', 'Dinas Pendidikan', 'Lainnya', '20588347', 'default.jpg'),
('64', 'step by step desain Robol  photoshop cs53', 'lensa teknologi', 'Elex media Kompotindo', 'Lainnya', '70422978', 'default.jpg'),
('640', 'alat Ukur dan Pengukuran Jilid 2', 'Sri Waluyanti', 'Dinas Pendidikan', 'Lainnya', '21986513', 'default.jpg'),
('641', 'penjualan jilid 1', 'Devi puspita Sari', 'Dinas Pendidikan', 'Lainnya', '16493718', 'default.jpg'),
('642', 'teknik Pembangkit Tenaga Listrik jilid 3', 'H.Supari Muslim', 'Dinas Pendidikan', 'Umum Produktif', '19090312', 'default.jpg'),
('643', 'panduan Kegiatan Sadar Hukum Mengenai Korupsi dan kolusi kolusi Nepotisme', 'LpppNRI', 'LPPPNRI', 'Umum Produktif ', '93892193', 'default.jpg'),
('644', 'Penjualan Jilid 3', 'Devi puspita Sari', 'Dinas Pendidikan', 'Umum Produktif', '16593587', 'default.jpg'),
('645', 'TeknikPemesinan jilid 2', 'Widarto', 'Dinas Pendidikan', 'Umum Produktif', '22485858', 'default.jpg'),
('646', 'kesekertarisan jilid 1', 'Sheddy Nagara', 'Dinas Pendidikan', 'Umum Produktif', '21187561', 'default.jpg'),
('647', 'T. Konstruksi bangunan gedung jilid 2', 'A.c.tamrin', 'Dinas Pendidikan', 'Umum Produktif', '14596207', 'default.jpg'),
('648', 'Foto Editing Online', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '50848654', 'default.jpg'),
('649', 'Kriya kayu jilid 2', 'Enget dkk', 'Dinas Pendidikan', 'Umum Produktif', '18690836', 'default.jpg'),
('65', 'foto gaul anak muda dengan photoshop', 'tangkas arif', 'Elex media Kompotindo', 'Multimedia', '83306079', 'default.jpg'),
('650', 'Akuntansi industri jilid 2', 'Ali Irfan', 'Dinas Pendidikan', 'Umum Produktif', '14895814', 'default.jpg'),
('651', 'Teknik tranmisi Tenaga Listrik Jilid 1', 'Astimeri', 'Dinas Pendidikan', 'Multimedia', '15395159', 'default.jpg'),
('652', '63 Trik rahasia flash cs5', 'Jubilee enterprise', 'Elex media kompotindo', 'Lainnya', '66927563', 'default.jpg'),
('653', 'Biologi Pertanian jilid 3', 'Amelia Zulianti Sireger dkk', 'Dinas Pendidikan', 'Lainnya', '15195421', 'default.jpg'),
('654', 'Animasi kartun dengan Flash CS5', 'Sudirman', 'Maxi. Com', 'Lainnya', '94391538', 'default.jpg'),
('655', 'Merakit komputer', 'Miftakhul Ulum S,sl', 'Inovasi', 'Lainnya', '93392848', 'default.jpg'),
('656', 'Matimatika 3 dimensi', 'darno Raharja', 'Teknologi depag', 'Lainnya', '95889573', 'default.jpg'),
('657', 'Pendidikan Pancasil dan Kewarganegaran Kls X', 'Dinas', 'Dinas Pendidikan', 'Lainnya', '17991753', 'default.jpg'),
('658', 'Dokumen Photoshop', 'Friza Raihan', 'Elex media kompotindo', 'Multimedia', '46654156', 'default.jpg'),
('659', 'Microsof office word design explorer', 'Apriyanti larenta', 'Elex media kompotindo', 'Lainnya', '28877474', 'default.jpg'),
('66', 'Meningkatkan jaringan k pc planning sistem', 'joko l mumpuni', 'Andi', 'Lainnya', '11200661', 'default.jpg'),
('660', 'Chibi figure+ Photoshop', 'Derry Iswidharmanjaya', 'Elex media kompotindo', 'Multimedia', '38165291', 'default.jpg'),
('661', 'mahir Pemodalan 3 D dengan 3D Max', 'Handi Candra ', 'Elex media kompotindo', 'Multimedia', '48152191', 'default.jpg'),
('662', '25 Kreasi Foto Gokil dengan Photoshop Cs 6', 'wahana Komputer', 'Elex media kompotindo', 'Multimedia', '87400708', 'default.jpg'),
('663', 'Buku Pintar Membuat album Foto ', 'Andi Wibowo', 'elex media kompotindo', 'Multimedia', '27279570', 'default.jpg'),
('664', '11 Plugins Effect', 'Yudo Sudanardi photograph', 'Pustaka Ananda Srv', 'Multimedia', '95190490', 'default.jpg'),
('665', 'HDR Photo Effect', 'Yudo Sudanardi photograph', 'Pustaka Ananda Srv', 'Multimedia', '95290359', 'default.jpg'),
('666', 'Microsof PhotoDraw 2000', 'stephen W.Sagmen', 'elex media kompotindo', 'Multimedia', '81608306', 'default.jpg'),
('667', 'Microsof PhotoDraw 2000', 'stephen W.Sagmen', 'Elex media kompotindo', 'Multimedia', '81708175', 'default.jpg'),
('668', 'Low Budget adver Tising Design With Photoshop', 'Jubilee enterprise', 'Elex media kompotindo', 'Multimedia', '67027432', 'default.jpg'),
('669', 'Karikatur+Photoshop Simple Guidance', 'Derry Iswidharmanjaya', 'Elex media kompotindo', 'Multimedia', '38265160', 'default.jpg'),
('67', 'Mengenal belackberry simulator', 'Aunur rofiq manzur', 'Elex media Kompotindo', 'Umum Produktif', '31174461', 'default.jpg'),
('670', 'Kereasi Efek Foto dengan Adobe Photoshop', 'Rachmad Saleh', 'Andi', 'Multimedia', '12199351', 'default.jpg'),
('671', 'Desain Objek, Teks dan kaos Distro dengan Corel Draw', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '67127301', 'default.jpg'),
('672', 'Cara Kilat Rekayasa Foto', 'Nyoto Kurniawan ', 'Elex media kompotindo', 'Multimedia', '74917083', 'default.jpg'),
('673', 'Revulusi Pasang iklan', 'Rahmat saputra', 'Elex media kompotindo', 'Multimedia', '77014332', 'default.jpg'),
('674', 'Taste Photography', 'Friza Raihan', 'Elex media kompotindo', 'Multimedia', '46754025', 'default.jpg'),
('675', 'Digital Greeting card With Flash pro 8', 'Bayu Staveno', 'Elex media kompotindo', 'Multimedia', '31773675', 'default.jpg'),
('676', 'Corel Draw 6 for Windows 95', 'Maria Francisco', 'Elex media kompotindo', 'Multimedia', '72120751', 'default.jpg'),
('677', ' Rahasia Blending Photoshop', 'Cristopher Lee', 'Elex media kompotindo', 'Multimedia', '35768435', 'default.jpg'),
('678', '30 Top  Features Photoshop', 'Jubilee enterprise', 'Elex media kompotindo', 'Multimedia', '67227170', 'default.jpg'),
('679', 'Adobe Photoshop CS', 'Photoshop', 'Andi', 'Multimedia', '11899744', 'default.jpg'),
('68', 'Aplikasi retail untuk UKM', 'nono', 'Elex media Kompotindo', 'RPL', '74317869', 'default.jpg'),
('680', 'Adobe Photoshop CS5 Extended', 'Budi Permana S,E', 'Elex media kompotindo', 'Multimedia', '33671186', 'default.jpg'),
('681', 'Microsoft Office word Design Explorer', 'Apriyanti larenta', 'Elex media kompotindo', 'Multimedia', '28977343', 'default.jpg'),
('682', 'Mendesain Objek 3 Dimensi dengan 3D Studio max 8', 'wahana Komputer', 'Elex media kompotindo', 'Multimedia', '87500577', 'default.jpg'),
('683', 'Photoshop cs5', 'Jubilee enterprise', 'Elex media kompotindo', 'Multimedia', '67327039', 'default.jpg'),
('684', 'Tools grafis Gratis ala Design Preneur Design Preneur', 'Suke Toejoeh', 'Elex media kompotindo', 'Multimedia', '82606996', 'default.jpg'),
('685', 'Trik Cantik dan canggih Desain Presentasi', 'Jubilee enterprise', 'Elex media kompotindo', 'Multimedia', '67426908', 'default.jpg'),
('686', 'Autocad Realase 14 untuk Pemula', 'Handi Candra ', 'Elex media kompotindo', 'Multimedia', '48252060', 'default.jpg'),
('687', 'Tumblr Blog foto dan peruntungan Anda', 'Jubilee enterprise', 'Elex media kompotindo', 'Multimedia', '67526777', 'default.jpg'),
('688', 'Hacking The Flash', 'Wiwit Siswo Utomo', 'Elex media kompotindo', 'Multimedia', '89198350', 'default.jpg'),
('689', 'Photoshopreneur dari desain Menuju Duit', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '67626646', 'default.jpg'),
('69', 'sukses jualan  cuman modal ipan d ipad', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '59137781', 'default.jpg'),
('690', ' 30 kereasi  logo Top Dunia denganfoto Corel draw X4', 'Leni Marlina', 'Andi', 'Multimedia', '11500268', 'default.jpg'),
('691', 'Amazing ART', 'Rahmat Widiyanto', 'Elex media Kompotindo', 'Multimedia', '77214070', 'default.jpg'),
('692', 'Fotografi Digital Untuk Pemula', 'row Darwis Pramana', 'Klik Publising', 'Multimedia', '93592586', 'default.jpg'),
('693', 'Photoshop Sexy dan Beauty', 'Dedik Kurniawan', 'Elex media kompotindo', 'Multimedia', '37366339', 'default.jpg'),
('694', 'Panduan Instan Corel Draw', 'Rachmad Hakim', 'elex media Kompotindo', 'Multimedia', '76215380', 'default.jpg'),
('695', 'Mahir Manipulasi Gambardengan Filter PhotoshopCs5', 'Derry Iswidharmanjaya', 'Elex media Kompotindo', 'Multimedia', '38365029', 'default.jpg'),
('696', 'Membuat Disain Kreatif dengan PhotoshopCs5', 'Mikael Sugianto', 'Elex media Kompotindo', 'Multimedia', '73219310', 'default.jpg'),
('697', 'Flash Design dan animasi web ', 'Siti Mutmainnah', 'Elex media Kompotindo', 'Multimedia', '80609616', 'default.jpg'),
('698', 'Adobe Photoshop untuk Desainweb', 'wahana Komputer', 'Andi', 'Multimedia', '12798565', 'default.jpg'),
('699', 'Raw For Photography', 'Friza Raihan', 'Elex Media kompotindo', 'Multimedia', '46853894', 'default.jpg'),
('7', 'lets be the king of smartphon programmer', 'fritz gamaliel', 'Elex media Kompotindo', 'Lainnya', '46454418', 'default.jpg'),
('70', 'Cara mudah menggunakan microsof excel 2010', 'Ir pandapaton sianipar', 'Elex media Kompotindo', 'Umum Produktif', '54244200', 'default.jpg'),
('700', 'Macromedia Flas 5.0', 'Sampurna', 'Elex media Kompotindo', 'Multimedia', '79411188', 'default.jpg'),
('701', '101 tips dan Trik flas cs5', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '67726515', 'default.jpg'),
('702', 'Teknik mengolah foto digital dengan Adobe Photoshop Cs3', 'wahana Komputer', 'Elex media Kompotindo', 'Multimedia', '87600446', 'default.jpg'),
('703', 'Mastering  3 ds max', 'Mikael Sugianto', 'Elex media Kompotindo', 'Multimedia', '73319179', 'default.jpg'),
('704', 'sofware Terbaik untuk desain Foto ', 'Tim Emedia solusindo', 'Elex media Kompotindo', 'Multimedia', '84604376', 'default.jpg'),
('705', '7 Jurus Desain Grafis Dengan Corel X5', 'Jubilee enterprise', 'Elex Media Kompotindo', 'Multimedia', '67826384', 'default.jpg'),
('706', 'Teknik Pencahayaan  Prefesional', 'saeba', 'Elex Media Kompotindo', 'Multimedia', '79211450', 'default.jpg'),
('707', 'Photoshop Cs5 Clinic', 'Cristopher Lee', 'Elex media Kompotindo', 'Multimedia', '35868304', 'default.jpg'),
('708', 'D3 100', 'Nikon', 'Nikon', 'Multimedia', '94791014', 'default.jpg'),
('709', 'Membuat AplikasiClient /Server den web dengan power Builder11,5', 'Syahrial Chan', 'Elex Media Kompotindo', 'Multimedia', '83106341', 'default.jpg'),
('71', '141 add ons pilihan untuk firofox', 'Aunur rofiq manzur', 'Elex media Kompotindo', 'Umum Produktif', '31274330', 'default.jpg'),
('710', 'Belajar Sendiri Pemograman Excel', 'Yudhi Wicaksono', 'Elex media Kompotindo', 'Multimedia', '89697695', 'default.jpg'),
('711', '100 Software Downloader Ajaib', 'Anwari dan Java kreativity', 'Elex media Kompotindo', 'Multimedia', '28577867', 'default.jpg'),
('712', 'Membuat Report Akuntansi Tanpa Repot', 'Hendrik karnadi', 'Elex media Kompotindo', 'Multimedia', '50049702', 'default.jpg'),
('713', 'Microsoft word 2010 untuk pemula', 'Hengky Alexander Mangkulo', 'elex media Kompotindo', 'Multimedia', '50948523', 'default.jpg'),
('714', 'Microoft Office 2007 Standard Edition', 'Budi Permana S,E', 'Elex Media Kompotindo', 'Multimedia', '33771055', 'default.jpg'),
('715', 'lindungi Data Penting Anda Dengan Software Nan Ampuh', 'Bambang P Putranto', 'Elex media kompotindo', 'Lainnya', '31573937', 'default.jpg'),
('716', 'Microsoft word 2010 For beginners', 'Cristopher Lee', 'Elex media Kompotindo', 'Lainnya', '35968173', 'default.jpg'),
('717', 'Mengungkap kedahsyatan Form Controls Excel 2007 untuk bisnis terapan', 'Yudhy Wicaksono', 'Elex media Kompotindo', 'Lainnya', '89797564', 'default.jpg'),
('718', '90 Tips dan Trik Cepat kuasai Geoogle', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '67926253', 'default.jpg'),
('719', '101 Tip dan Trik Excel 2010', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '68026122', 'default.jpg'),
('72', 'Sekuriti dan administri windows vista', 'Rahmat Rafiudin', 'Elex media Kompotindo', 'Lainnya', '76814594', 'default.jpg'),
('720', 'Aplikasi Penjualan Berbasis Access 2003', 'HengkyW.Permana', 'Elex media Kompotindo', 'Rpl', '51347999', 'default.jpg'),
('721', 'Panduan Praktis SharePoint SerVer 2010', 'Ronald Rajaguk-guk', 'Elex media Kompotindo', 'Rpl', '78911843', 'default.jpg'),
('722', 'Pemograman Berorientasi Objek', 'Adi Nugroho', 'Informatika', 'Rpl', '92593896', 'default.jpg'),
('723', 'Visual Basic. Net Versi 2002 dan 2003', 'Ario suryo kusumo', 'Elex media kompotindo', 'Rpl', '29676426', 'default.jpg'),
('724', '212 Tip dan Trik power point 2010', 'Hengky Alexander Mangkulo', 'Elex media Kompotindo', 'Umum Produktif', '51048392', 'default.jpg'),
('725', 'Panduan Praktis  Mnggunakan Email server', 'Samuel prakoso', 'Elex media Kompotindo', 'Umum Produktif', '79511057', 'default.jpg'),
('726', 'Microsof windows 2000', 'Budi Permana S,E', 'Elex media Kompotindo', 'Umum Produktif', '33870924', 'default.jpg'),
('727', '101 Tip dan Trik sap 2000', 'ILT Learning', 'Elex media Kompotindo', 'Umum Produkti', '52746165', 'default.jpg'),
('728', 'Microsoft Office Excel', 'Kurweni Ukar ', 'Elex media Kompotindo', ' Umum Produktif', '69923633', 'default.jpg'),
('729', 'Microsoft Office Access 2003', 'Budi Permana S,E', 'Elex media Kompotindo', 'Umum Produktif', '33970793', 'default.jpg'),
('73', 'Cara mudah  membuat expertaduissors', 'Heri Santoso', 'Elex media Kompotindo', 'Lainnya', '51447868', 'default.jpg'),
('730', 'Trik Cepat Menguasai Excel 2007', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '68125991', 'default.jpg'),
('731', 'Microsoft excel 2000 at a glance', 'Perspection', 'Elex media Kompotindo', 'Umum Produktif', '75815904', 'default.jpg'),
('732', 'Microsoft Frontpage 2002', 'Kurweni Ukar ', 'Elex media Kompotindo', 'Umum Produktif', '70023502', 'default.jpg'),
('733', '90 Tip dan trik Microsoft Excel 97,2000,Xp', 'gramedia', 'Elex media Kompotindo', 'umum produktif', '47353239', 'default.jpg'),
('734', 'Trik Cepat Menguasai ms power point 2007', 'Jubilee enterprise', 'Elex media kompotindo', 'Umum Produktif', '68225860', 'default.jpg'),
('735', 'Open Office. Orang 2.0', 'iwan Sofana ', 'elex media Kompotindo', 'Umum Produktif', '55342759', 'default.jpg'),
('736', 'Microsoft power point 2000', 'Budi Permana S,E', 'Elex media Kompotindo', 'Umum Produktif', '34070662', 'default.jpg'),
('737', 'Ayo buat Facebook Mu Menarik', 'Addy Sukma', 'Elex media Kompotindo', 'Umum produktif', '23983893', 'default.jpg'),
('738', 'Formula Dan Fungsi Excel 2007', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '68325729', 'default.jpg'),
('739', 'Blog Wordpress', 'Denny surya Bharata', 'Elex media Kompotindo', 'Umum Produktif', '37566077', 'default.jpg'),
('74', '117 trik rahasia windws vista', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '59237650', 'default.jpg'),
('740', 'Trik rahasia microsoft Office word 2007', 'Happy Chandraleka', 'Elex media Kompotindo', 'Umum Produktif', '49250750', 'default.jpg'),
('741', 'Formula dan fungsi excel 2010', 'Jubilee enterprise', 'elex media Kompotindo', 'umum produktif', '68425598', 'default.jpg'),
('742', 'Black Berry for business', 'Jerry rumkeny', 'Elex media kompotindo', 'Umum Produktif', '56241580', 'default.jpg'),
('743', 'Excel 2007 dan 2010', 'Adi Kusrianto', 'Elex media Kompotindo', 'Umum produktif', '25182321', 'default.jpg'),
('744', ' 175 Tips  profesional Power point', 'Cristopher Lee', 'Elex media kompotindo', 'Umum Produktif', '36068042', 'default.jpg'),
('745', 'Windows 2000 Profesional', 'Jerry Joyce', 'Elex media kompotindo', 'Rpl', '55941973', 'default.jpg'),
('746', 'Buku Pintar Linux Bash Scriphing', 'Rofiq Yuliardi', 'Elex media kompotindo', 'Rpl', '78712105', 'default.jpg'),
('747', 'pemrograman Database dengan Visual basic.6.0', 'Hengky Alexander Mangkulo', 'Elex media kompotindo', 'Rpl', '51148261', 'default.jpg'),
('748', '1 Jam  Menguasai Teknikal Analisis', 'Sony Siswoyo', 'Elex media kompotindo', 'Rpl', '81508437', 'default.jpg'),
('749', 'Teknik Pembuatan Akta Kontrak ', 'Paulus J.', 'Universitas Atma jaya', 'Rpl', '96089311', 'default.jpg'),
('75', 'Business driven information sistem', 'josua tarigan', 'Elex media Kompotindo', 'RPL', '57939353', 'default.jpg'),
('750', 'Living Room Interior Design', 'Mikael Sugianto', 'Elex media Kompotindo', 'Rpl', '73419048', 'default.jpg'),
('751', 'Mudah membangun Website Formal Secara Pro dengan Joomla', 'Rahmad Widiyanto', 'Elex media kompotindo', 'Rpl', '76714725', 'default.jpg'),
('752', 'Kontrol dan Amankan Koneksi Internet di jaringan', 'Athailah', 'Elex media kompotindo', 'Rpl', '30974723', 'default.jpg'),
('753', 'Panduan Cepat Menguasai Windows 7', 'Nyoto Kurniawan ', 'Elex media kompotindo', 'Rpl', '75016952', 'default.jpg'),
('754', 'Pc.Cloning Sistem', 'Joko ', 'andi', 'Rpl', '11100792', 'default.jpg'),
('755', 'Belajar Sendiri VMWARE Workstation', 'Ir Hendra Wijaya', 'Elex media kompotindo', 'Rpl', '54044462', 'default.jpg'),
('756', 'Aplikasi wap dengan Php', 'Ridwan Sanjaya', 'Elex media kompotindo', 'Rpl', '78013022', 'default.jpg'),
('757', 'Menjadi Jutawan Internet Sebelim Usia 25', 'Fary Sj Orah ', 'Elex media kompotindo', 'Umum Produktif', '44357169', 'default.jpg'),
('758', 'Word Press Hack and Tweak', 'Mata Maya Studio', 'Elex media kompotindo', 'Rpl', '72320489', 'default.jpg'),
('759', 'Solusi Dahsyatnya permasalahan BlackBerry', 'Nyoto Kurniawan ', 'Elex media kompotindo', 'Umum Produktif', '75116821', 'default.jpg'),
('76', 'Membakar DVD dengan Nero 10', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '59337519', 'default.jpg'),
('760', 'dasar-dasar Pemograman dengan Visual basic 2010', 'Edy Winarno S,T', 'Elex media kompotindo', 'Rpl', '42359789', 'default.jpg'),
('761', ' Cara Mudah dan cepat Membuat Program aplikasi Data Base dengan delphi', 'wawan kusdiawan', 'Gava Media', 'Rpl', '91695075', 'default.jpg'),
('762', ' Expertadvisors Automated Trading', 'heri santoso', 'Elex media kompotindo', 'Rpl', '51647606', 'default.jpg'),
('763', 'Cara Mudah Membuat Robottrading Profitable', 'heri santoso', 'Elex media kompotindo', 'Rpl', '51747475', 'default.jpg'),
('764', 'Blog Untuk Usaha kecil dan Menengah(UKM)', 'Ridwan Sanjaya', 'Elex media kompotindo', 'Rpl', '78112891', 'default.jpg'),
('765', 'Membuat Program Kreatif dan Prefesional  dengan Delphi', 'wahana Komputer', 'Elex media kompotindo', 'Rpl', '87700315', 'default.jpg'),
('766', 'Aplikasi Accounting Retail dengan Access 2010', 'Hengky Alexander Mangkulo', 'Elex media kompotindo', 'Rpl', '51248130', 'default.jpg'),
('767', 'Membangun Dunia Kumputer', 'Dr.Ir.Edi Noersasongko', 'Elex media kompotindo', 'Rpl', '40162671', 'default.jpg'),
('768', ' 36  Jam Belajar Komputer  ARCHICAD 10', 'Mikael Sugianto', 'Elex media kompotindo', 'Rpl', '73518917', 'default.jpg'),
('769', 'Pengantar dan Sistem Basis data', 'Indra jani ,S.Kom.,MM', 'Elex media kompotindo', 'Rpl', '53245510', 'default.jpg'),
('77', 'Bengkel powerpoin', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '59437388', 'default.jpg'),
('770', 'Aplikasi Spss dalam Penelitian', 'Getut Pramesti', 'Elex media kompotindo', 'Rpl', '47253370', 'default.jpg'),
('771', 'Nokia Pc Suitess dengan OXYGEN', 'Lainnya', 'Lainnya', 'Lainnya', '96488787', 'default.jpg'),
('772', 'Proyek Membuat Website dengan Joomla', 'Tim Emedia solusindo', 'Elex media kompotindo', 'Rpl', '84704245', 'default.jpg'),
('773', 'Eksporasi Microsoft Excel untuk simulasi Bisnis', 'Johar Arifin', 'Elex media kompotindo', 'Rpl', '57040532', 'default.jpg'),
('774', 'Trik Mengoptimalkan Fungsi Lookup dan Indeks dalam Microsoft Excel', 'Ir.Hery Sonawan ,MT', 'Elex media kompotindo', 'Rpl', '55043152', 'default.jpg'),
('775', 'Mixed Methods', 'Jonathan Sarwono', 'Elex media kompotindo', 'Rpl', '57839484', 'default.jpg'),
('776', 'Modding android', 'Erik R Prabowo', 'Elex media kompotindo', 'Rpl', '43558217', 'default.jpg'),
('777', 'Teknik Membobol data dan Password', 'Muzammil Sanusi', 'Elex media Kompotindo', 'Rpl', '74018262', 'default.jpg'),
('778', 'Mengelola Website Joomla 1.7', 'Lucky Permana', 'Elex media Kompotindo', 'Umum Produktif', '71022192', 'default.jpg'),
('779', 'IT Ergonomic', 'Feri Sulianta', 'Elex media Kompotindo', 'Rpl', '45255990', 'default.jpg'),
('78', 'Belajar sendiri membuat robot cerdas', 'widodo budiharto', 'Elex media Kompotindo', 'Lainnya', '88199660', 'default.jpg'),
('780', 'Tip dan trik Membuat Efek Spesial website dengan Dreamweaver', 'Gregorius Agung', 'Elex media Kompotindo', 'Rpl', '47652846', 'default.jpg'),
('781', 'Membangun Sistem Aplikasi E-Comerse dan sms', 'Agus Saputro', 'Elex media Kompotindo', 'Rpl', '25781535', 'default.jpg'),
('782', 'Awas Trojan', 'A.M.Hirin', 'Elex media Kompotindo', 'Rpl', '23484548', 'default.jpg'),
('783', 'Anti forensik', 'Eko Arryawan', 'Elex media Kompotindo', 'Rpl', '42759265', 'default.jpg'),
('784', 'Trik Mengoptimalkan Komputer ', 'Onno w.porbo', 'Elex media Kompotindo', 'Umum produktif', '75516297', 'default.jpg'),
('785', 'Mengenal Dunia Komputer', 'Dr.Edi Noersasongko,M.Kom', 'Elex media Kompotindo', 'Umum Produktif', '40062802', 'default.jpg'),
('786', 'Software Jail dan unik', 'M.muharrom dedik kurniawan', 'Elex media Kompotindo', 'MuF', '71821144', 'default.jpg'),
('787', 'Membuat Website Pribadi', 'Agustinus Nalwan', 'Elex media Kompotindo', 'Rpl', '26081142', 'default.jpg'),
('788', 'Password is Nothing', 'Eko Arryawan', 'elex media Kompotindo', 'Rpl', '42859134', 'default.jpg'),
('789', 'Rezeki Nomplok dari Konteks blog', 'harris maulana', 'Elex media Kompotindo', 'Lainnya', '49650226', 'default.jpg'),
('79', 'Koleksi lengkap softwere hacking', 'java creatifity', 'Elex media Kompotindo', 'Lainnya', '55442628', 'default.jpg'),
('790', 'teknik Men-download konten Internet', 'Dominikus Juju', 'Elex media Kompotindo', 'Lainnya', '39563457', 'default.jpg'),
('791', '36 belajar Windows Vista', 'Budi Permana S,E', 'Elex media Kompotindo', 'Rpl', '34170531', 'default.jpg'),
('792', 'Membangun Aplikasi database dengan Visual basic 2008 dan  sql Server 2008', 'Cybertron solution', 'Elex media Kompotindo', 'Rpl', '36267780', 'default.jpg'),
('793', 'Warnet Under cover', 'Eko Arryawan', 'Elex media Kompotindo', 'Rpl', '42959003', 'default.jpg'),
('794', 'Infrastruktur Wireless Internet', 'Onno w.porbo', 'Elex media Kompotindo', 'Lainnya', '75616166', 'default.jpg'),
('795', 'Membangun  Wireless LAN', 'Jhonsen Jhon Edison, St', 'Elex media Kompotindo', 'Rpl', '56740925', 'default.jpg'),
('796', 'Foursquare', 'Jery Rumkeny', 'Elex media Kompotindo', 'Lainnya', '56441318', 'default.jpg'),
('797', 'Transaksi Forex Online dengan Marketiva Streamster', 'Joko Salim ,S.Kom', 'Elex Media Kompotindo', 'Rpl', '57240270', 'default.jpg'),
('798', 'VB.Net 2005', 'Arief Ramdhan ', 'Elex media Kompotindo', 'Rpl', '29276950', 'default.jpg'),
('799', 'Belajar komputer Edisi Revisi', 'Haer Talib', 'Elex media Kompotindo', 'Rpl', '47752715', 'default.jpg'),
('8', 'panduan pc panel web hosting', 'Andri krisianto', 'Elex media Kompotindo', 'Lainnya', '27679046', 'default.jpg'),
('80', 'Trik rahasia anti lupa pasword serumit apun', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '59537257', 'default.jpg'),
('800', '101 Pluruk', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '68525467', 'default.jpg'),
('801', 'Pemograman Berorientasi objek java', 'indrajani, S.Kom,Mm', 'Elex media Kompotindo', 'Rpl', '53345379', 'default.jpg'),
('802', 'Pemograman Berorientasi Objek dengan Java', 'Indriyani ,S.Kom', 'Elex media Kompotindo', 'Rpl', '53445248', 'default.jpg'),
('803', '152 tip seputer ponsel', 'Nailul HD', 'Elex media Kompotindo', 'Rpl', '74218000', 'default.jpg'),
('804', 'Microsoft Visual Basic 6.0', 'Drs.Ario Suryo Kusuma', 'Elex media Kompotindo', 'Rpl', '40662016', 'default.jpg'),
('805', 'Konfigurasi server linux dengan Webmin', 'M.Syafii', 'Elex media Kompotindo', 'Rpl', '71921013', 'default.jpg'),
('806', 'Windows xp', 'Jubilee enterprise', 'Elex media Kompotindo', 'Rpl', '68625336', 'default.jpg'),
('807', 'esain  kaos Bikers  Distro dengan Corel Draw', 'Derry Iswidharmanjaya', 'Elex media Kompotindo', 'Rpl', '38464898', 'default.jpg'),
('808', 'Windows Vista ', 'Steven Andy Pascal', 'Elex media Kompotindo', 'Rpl', '82007782', 'default.jpg'),
('809', 'Membuat Blog dengan Blogspot', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Rpl', '78212760', 'default.jpg'),
('81', 'Windows  xp total protection max securty', 'dadan rahmat', 'Elex media Kompotindo', 'Lainnya', '36567387', 'default.jpg'),
('810', 'Membuat Aplikasi Windows Multiplatform dengan Java GUI', 'Ridwan Sanjaya', 'Elex media Kompotindo', 'Rpl', '78312629', 'default.jpg'),
('811', 'Cisco DSL Router,Asa Firewall,dan VPN', 'Hendra Wijaya', 'Elex media Kompotindo', 'Rpl', '49949833', 'default.jpg'),
('812', 'Dasar-dasar Pmograman PYTHON', 'Dr.Ricardus Eko', 'Elex media Kompotindo', 'Rpl', '40262540', 'default.jpg'),
('813', 'Web Makin Dhasyat dengan Jquary', 'Arista prasetyo Adi', 'Elex media Kompotindo', 'Rpl', '30375509', 'default.jpg'),
('814', 'Sistem Akuntansi Otomatis', 'Eko Yuli Susanto', 'Elex media Kompotindo', 'Rpl', '43358479', 'default.jpg'),
('815', 'OutSourcing Implementasi di indonesia', 'Ir.Chandra Suwondo,MM.Ph.D', 'Elex media Kompotindo', 'Umum', '54843414', 'default.jpg'),
('816', 'Pembelajaran Efektif', 'Anwar jasin', 'Rasindo', 'Umum', '95490097', 'default.jpg'),
('817', 'Referensi Ringkas HTML 5', 'Christopherlee', 'Elex media Kompotindo', 'Rpl', '34969483', 'default.jpg'),
('818', 'Trik Menggunakan Parental Control Tools', 'wahana Komputer', 'Elex media Kompotindo', 'Rpl', '87800184', 'default.jpg'),
('819', 'Hacker & keamanan', 'Eryanto Sitorius', 'Andi', 'Rpl', '10901054', 'default.jpg'),
('82', 'Pengamanan total data dan informasi penting    ', 'beranda agency', 'Elex media Kompotindo', 'Lainnya', '32472758', 'default.jpg'),
('820', 'Page maker 7.0', 'Chandra', 'Elex media Kompotindo', 'Rpl', '34669876', 'default.jpg'),
('821', 'Blogspot', 'Dominikus Juju', 'Elex media Kompotindo', 'Rpl', '39663326', 'default.jpg'),
('822', 'AutoCAD2008', 'Ir.Hary Aria Soma', 'Elex media Kompotindo', 'MM', '54943283', 'default.jpg'),
('823', 'Berkomunikasi di Internet Menggunakan Yahoo Messenger', 'Wahana Komputer', 'EleX media kompotindo', 'Umum Produktif', '87900053', 'default.jpg'),
('824', 'Samba jembatan Windos Dan Linux', 'Sidiq S Hidayat', 'Elex media kompotindo', 'RPL', '80010402', 'default.jpg'),
('825', 'Microsoft Windows XP', 'Budi Permana ', 'Elex media kompotindo', 'RPL', '32672496', 'default.jpg'),
('826', 'Akses Internet', 'Bambang Prawoto', 'Elex media Kompotindo', 'Umum Produktif', '31673806', 'default.jpg'),
('827', 'Menggunakan Gnome', 'Prasetya Ambang Utomo', 'Elex media Kompotindo', 'Rpl', '75915773', 'default.jpg'),
('828', 'Silverlight dan Expression Bled', 'Fuady Rosma Hidayat, S.Kom', 'Elex media Kompotindo', 'Rpl', '47053632', 'default.jpg'),
('829', 'Jakarta dan Pusat Perbelanjaan', 'Suwito Santoso', 'Elex media Kompotindo', 'Umum', '82906603', 'default.jpg'),
('83', 'Free ware dan share ware', 'ian candra k', 'Elex media Kompotindo', 'RPL', '51947213', 'default.jpg');
INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `jenis_buku`, `kode_buku`, `foto`) VALUES
('830', 'Membuat alaman Aplikasi W@P', 'Filda Martin Virmansyah', 'Elex media Kompotindo', 'Rpl', '46254680', 'default.jpg'),
('831', 'Windows', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '68725205', 'default.jpg'),
('832', 'Eksploitasi Registry dan File Reg', 'Tri Amperiyanto', 'Elex media Kompotindo', 'Umum Produktif', '85503197', 'default.jpg'),
('833', ' VB.NET untuk Tugas Akhir dan Skripsi', 'Uus Rusmawan', 'Elex media Kompotindo', 'Rpl', '85702935', 'default.jpg'),
('834', 'Membuat Aplikasi Rental Menggunakan Macro Cxcel', 'Yudhy Wicaksono', 'Elex media Kompotindo', 'Rpl', '89897433', 'default.jpg'),
('835', 'Membangun Perusahaan Unggulan  dengan BPM', 'Feri Sulianta & Sartika Kurniali', 'Elex media Kompotindo', 'Umum', '45355859', 'default.jpg'),
('836', 'Belajar Cepat Goegle Hacking', 'wahana Komputer', 'Elex media Kompotindo', 'Umum Produktif', '87999922', 'default.jpg'),
('837', 'Desain Dan implementasi Sistem Operasi Linux', 'DR. Richardus Eko Indrajit', 'Elex media Kompotindo', 'Rpl', '39863064', 'default.jpg'),
('838', 'Mengolah Data Penelitian dengan SPSS 18', 'wahana Komputer', 'Elex media Kompotindo', 'Rpl', '88099791', 'default.jpg'),
('839', 'Sukses membuka Toko Online dengan Berniaa.com', 'Jubilee enterprise', 'Elex media Kompotindo', 'Umum Produktif', '68825074', 'default.jpg'),
('84', 'Proyek membuat website dengan joomla', 'Tim Ems', 'Elex media Kompotindo', 'Lainnya', '84903983', 'default.jpg'),
('840', 'Aplikasi SPSS dalam Quick Count', 'Hartatik& Getut Pramesti', 'Elex media Kompotindo', 'Rpl', '49750095', 'default.jpg'),
('841', 'Software Cracking', 'Feri Sulianti', 'Elex media Kompotindo', 'Rpl', '45455728', 'default.jpg'),
('842', 'Analisis Statistik Mudah dengan SPSS 20', 'Teguh Wahyono', 'Elex media Kompotindo', 'Rpl', '83805424', 'default.jpg'),
('843', 'Panduan Praktis Menggunakan Windows Terminal service', 'Beny Benardi', 'Elex media kompotindo', 'Rpl', '32173151', 'default.jpg'),
('844', 'Telekomunikasi', 'Dinas', 'Dinas Pendidikan', 'Umum', '18091622', 'default.jpg'),
('845', 'Membuat Perpustakaan Mini', 'Kartika Rini', 'Gra Media', 'Umum', '91794944', 'default.jpg'),
('846', 'Buku Guru Pendidikan Jasmani Olahraga dan Kesehatan Kelas XI', 'Dinas', 'Dinas Pendidikan', 'Umum', '18191491', 'default.jpg'),
('847', 'Efek Kedermawanan Pebisnis dan CSR', 'DR. Elvinaro Ardianto. M.SI.', 'Elex media kompotindo', 'Umum', '39763195', 'default.jpg'),
('848', 'The Miracle of Fruits', 'Nindias Primandini', 'Etera', 'Umum', '91495337', 'default.jpg'),
('849', 'Rahasia Bisnis Yahudi ', 'Anton A. Ramdan, S.Si.', 'Yahra', 'Umum', '96289049', 'default.jpg'),
('85', 'Praktis menguasai microsoft access 2007/2010', 'Budi Permana s,e', 'Elex media Kompotindo', 'Umum Produktif', '32772365', 'default.jpg'),
('850', 'Aksi Jilbab-Jilbab Cantik Super Unik', 'Nikmah Ilahi', 'Harmoni', 'Umum', '92094551', 'default.jpg'),
('851', 'Jadilah Purnamaku Ning', 'Khilma Anis', 'Matapena', 'Umum', '93992062', 'default.jpg'),
('852', 'Kamus Ilmiah Populer', 'Plus A Partanto', 'Arkola', 'Umum', '13098172', 'default.jpg'),
('853', 'Metode Kusus Pendidikan Agama (MKPA)', 'Drs. Abu Ahmadi', 'Armico', 'Agama', '13198041', 'default.jpg'),
('854', 'Hasrat untuk Berubah ', 'Soemarno', 'Elex media kompotindo', 'Umum', '80909223', 'default.jpg'),
('855', 'Nurul Yaqien', 'Al-Ustadz Umarabdul-Djabbar', 'Al-Hikmah', 'Agama', '10401709', 'default.jpg'),
('856', 'Bekal Berharga untuk Menjadi Anak Mulia', 'Hafids Hasan Al-Mas\'udi', 'Al-Hidayah', 'Agama', '10201971', 'default.jpg'),
('857', 'Pedoman Belajar Pelajar Dan Santri', 'Syeh Az Zarnuji', 'Al-Hidayah', 'Agama', '10301840', 'default.jpg'),
('858', 'Fat-hul Qorib Jilid 1', 'Achmad Sunarto', 'Al-Hidayah', 'Agama', '10002233', 'default.jpg'),
('859', 'Fat-hul Qorib Jilid 2', 'Achmad Sunarto', 'Al-Hidayah', 'Agama', '10102102', 'default.jpg'),
('86', 'Rahasia menjadi jago donload', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '59637126', 'default.jpg'),
('860', 'Usulul Khadist', 'Ustad al-Masaid', 'Bayrut', 'Agama', '13397779', 'default.jpg'),
('861', 'KH. Abdul Wahab Chasbulloh', 'Ubaidillah', 'Lingkar Muda Nusantara', 'Agama', '93792324', 'default.jpg'),
('862', 'The Art of Live revolution', 'Eko Jalu Santoso, Ir.', 'Elex media kompotindo', 'Umum', '43058872', 'default.jpg'),
('863', 'Heart Revalution ', 'Eko Jalu Santoso, Ir.', 'Elex media kompotindo', 'Umum', '43158741', 'default.jpg'),
('864', 'Kurikulum Muatan lokal Proklama Imtaq', 'Dinas Jombang', 'Dinas Jombang', 'Umum', '13996993', 'default.jpg'),
('865', 'Kurikulum Muatan lokal Perkebunan Bunga Roseli', 'Dinas Jombang', 'Dinas Jombang', 'Umum', '14096862', 'default.jpg'),
('866', 'Kurikulum Muatan Lokal Pertanian Organik', 'Dinas Jombang', 'Dinas Jombang', 'Umum', '14196731', 'default.jpg'),
('867', 'Kurikulum Muatan Lokal Aneka jajanan Indonesia', 'Dinas Jombang', 'Dinas Jombang', 'Umum', '14296600', 'default.jpg'),
('87', '60 Menit belajar scrip(sheel)', 'samsudin M', 'andi', 'RPL', '12299220', 'default.jpg'),
('88', 'Corel draw untukpemula', 'ferisulianta', 'Elex media Kompotindo', 'Lainnya', '45555597', 'default.jpg'),
('89', 'Microsof office word design explorer', 'Apriyanti larenta', 'Elex media Kompotindo', 'Lainnya', '28677736', 'default.jpg'),
('9', 'Ngandroid', 'Imam Fr.Kusumaningati', 'Elex media Kompotindo', 'RPL', '52846034', 'default.jpg'),
('90', 'Revolusi pasang iklan ', 'Rahmat saputra', 'Elex media Kompotindo', 'Lainnya', '76914463', 'default.jpg'),
('91', 'Menciptakan passive income melalui blog', 'arista prasetyo', 'Elex media Kompotindo', 'RPL', '29776295', 'default.jpg'),
('92', 'I.T Ergonomics', 'ferisulianta', 'Elex media Kompotindo', 'Lainnya', '45655466', 'default.jpg'),
('93', 'Corel draw X 6', 'Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '59736995', 'default.jpg'),
('94', '101 tip dan trik flash cs5', ' Jubilee enterprise', 'Elex media Kompotindo', 'Lainnya', '23184941', 'default.jpg'),
('95', 'Cara mudah membuat robot Trading Profitable', 'heri santoso', 'Elex media Kompotindo', 'RPL', '51547737', 'default.jpg'),
('96', 'Tak tik Blog', 'Aulia Halimatus', 'Elex media Kompotindo', 'RPL', '31074592', 'default.jpg'),
('97', '101 Tip dan trik pemrograman PHP', 'Didik Dwi Prastyo', 'Elex media Kompotindo', 'Lainnya', '38864374', 'default.jpg'),
('98', 'Trik Cepat Menguasai Camera Raw 7', 'Jubilee enterprise', 'Elex media Kompotindo', 'Multimedia', '59836864', 'default.jpg'),
('99', 'Exchange Server 2003', 'Ir. Hendra Wijaya', 'Elex media Kompotindo', 'Multimedia', '54643676', 'default.jpg'),
('﻿1', 'pedoman membangun server linux', 'Onno W.porbo', 'Dian rakyat', 'RPL', '13697386', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id_siswa` varchar(25) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(128) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_anggota`
--

INSERT INTO `data_anggota` (`id_siswa`, `nama_siswa`, `kelas`, `nis`, `jk`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `foto`) VALUES
('10002', 'ACHMAD YOGA PRATAMA', 'Kelas X MM', '0509.0041.2067', 'L', '0055424067', 'SIDOARJO', '2005-03-14', 'DUKUH SANTREN', 'default.jpg\r'),
('10003', 'ANDRIAN ABDUL HAKIM', 'Kelas X MM', '0510.0042.2067', 'L', '0054619478', 'ASIKI', '2005-01-01', 'PERUM KORINDO, ASIKI', 'default.jpg\r'),
('10004', 'ANISA AINUR ROBI', 'Kelas X MM', '0511.0043.2067', 'P', '0058032358', 'MADIUN', '2005-04-19', 'DESA KARANGREJO ', 'default.jpg\r'),
('10005', 'ARIF SIFA UDIN', 'Kelas X MM', '0512.0044.2067', 'L', '3054428783', 'LAMONGAN', '2005-08-24', 'DSN. TUTUP', 'default.jpg\r'),
('10006', 'DELA PUSPITASARI', 'Kelas X MM', '0513.0045.2067', 'P', '0046715530', 'Jombang', '2004-03-22', 'Dsn Sendangrejo', 'default.jpg\r'),
('10007', 'FICKRI NURRAHMAN', 'Kelas X MM', '0514.0046.2067', 'L', '0045065305', 'JAKARTA', '2004-05-25', 'LAKARSANTRI', 'default.jpg\r'),
('10008', 'FITO NAILUL IZZA ACHMADIN', 'Kelas X MM', '0539.0066.2067', 'L', '3041334467', 'NGANJUK', '2004-05-21', 'SONO INDAH UTARA GG.V', 'default.jpg\r'),
('10009', 'FYU AMANATILLAH ROBBY RIFANY', 'Kelas X MM', '0515.0047.2067', 'L', '0058879298', 'LAMONGAN', '2005-05-31', 'TURI', 'default.jpg\r'),
('10010', 'Hardika Apria Nurdiansyah', 'Kelas X MM', '0516.0048.2067', 'L', '0051900628', 'Tuban', '2005-04-25', 'GMP 2', 'default.jpg\r'),
('10011', 'Izza Nuruddin Husni Mubarok', 'Kelas X MM', '0518.0050.2067', 'L', '0052751621', 'Semarang', '2005-04-10', 'Ketileng RT 5 RW 25 Semarang', 'default.jpg\r'),
('10012', 'KARTIKA PUTRI MAULUDIA', 'Kelas X MM', '0519.0051.2067', 'P', '0041562806', 'SURABAYA', '2004-04-25', 'MARGODADI III/ 124', 'default.jpg\r'),
('10013', 'MOCHAMAD NAUFAL ABYAN', 'Kelas X MM', '0521.0053.2067', 'L', '0048626371', 'SURABAYA', '2004-12-17', 'JL. DUPAK BANDAREJO NO.32 A GG.2', 'default.jpg\r'),
('10014', 'MOH. ZUHDAN MAULANA BASYARI MAFTUH', 'Kelas X MM', '0522.0054.2067', 'L', '3047602895', 'JOMBANG', '2004-08-11', 'TAMBAKBERAS TIMUR', 'default.jpg\r'),
('10015', 'MOHAMMAD AHSANTU DHONNI', 'Kelas X MM', '0523.0055.2067', 'L', '0054492854', 'GRESIK', '2005-04-08', 'MADIUN I NO.42 GKB', 'default.jpg\r'),
('10016', 'MOHAMMAD SYAHID BADRUDHIN NUR CHASAN', 'Kelas X MM', '0525.0057.2067', 'L', '3047650803', 'JOMBANG', '2004-11-19', 'TAMBAK REJO', 'default.jpg\r'),
('10017', 'MUHAMMAD FAIDLUL QODIR', 'Kelas X MM', '0541.0066.2067', 'L', '0055572250', 'LAMONGAN', '2005-07-30', 'JL. SUNAN DRAJAD', 'default.jpg\r'),
('10018', 'MUHAMMAD IHYA\' ULUMUDDIN', 'Kelas X MM', '0526.0058.2067', 'L', '3048571682', 'SURABAYA', '2005-08-14', 'DSN GADING', 'default.jpg\r'),
('10019', 'MUHAMMAD JAMALLUDIN', 'Kelas X MM', '0524.0056.2067', 'L', '3053086645', 'LAMONGAN', '2005-04-28', 'PANDAK', 'default.jpg\r'),
('10020', 'MUHAMMAD ZAMHARIR RIOGA PUTRA', 'Kelas X MM', '0527.0059.2067', 'L', '0057593740', 'SURAKARTA', '2005-03-11', 'GENDINGAN', 'default.jpg\r'),
('10021', 'MUHAMMAD ZIDAN MU\'\'AFA', 'Kelas X MM', '0528.0060.2067', 'L', '0048513406', 'BLITAR', '2004-08-26', 'jlan selopuro', 'default.jpg\r'),
('10022', 'PAUNDRA LAZUARDZY ZIDANE HARDHANA', 'Kelas X MM', '0529.0061.2067', 'L', '0033667611', 'BLITAR', '2003-12-31', 'JL. SEMERU LK. BRUBUH RT.003, RW. 002', 'default.jpg\r'),
('10023', 'RESA MAULANA', 'Kelas X MM', '0530.0062.2067', 'L', '3029438005', 'WONOSOBO', '2002-10-28', 'SIBUNGKANG', 'default.jpg\r'),
('10024', 'YOGI BACHTIAR', 'Kelas X MM', '0531.0063.2067', 'L', '0043327921', 'TULUNGAGUNG', '2004-09-10', 'DSN. SUMBERAGUNG', 'default.jpg\r'),
('10025', 'ZAKKY MUFID MAFTUH', 'Kelas X MM', '0532.0064.2067', 'L', '0045781455', 'MADIUN', '2004-10-19', 'KETANDAN', 'default.jpg\r'),
('10026', 'ABDUL QODIR ALKHOIRI', 'Kelas X RPL', '0533.0024.2065', 'L', '3059273112', 'GRESIK', '2005-05-28', 'CANGKIR', 'default.jpg\r'),
('10027', 'MOHAMMAD HAFIZ AL-AZIZ', 'Kelas X MM', '0534.0025.2067', 'L', '0033785224', 'SURABAYA', '2003-08-01', 'TAMBAKDONO NO.8', 'default.jpg\r'),
('10028', 'ADITYA PRADIPTA ARYA SETYAWAN', 'Kelas X RPL', '0535.0026.2065', 'L', '0058265988', 'BATAM', '2005-01-06', 'PERMATA ASRI PRATAMA BLK.F NO.32', 'default.jpg\r'),
('10029', 'ADITYA RAHMAT WILDAN', 'Kelas X RPL', '0536.0027.2065', 'L', '3043615507', 'JOMBANG', '2004-08-28', 'DSN TUGU', 'default.jpg\r'),
('10030', 'EKO DWI NURHUDA', 'Kelas X RPL', '0537.0028.2065', 'L', '0052073665', 'BATANG', '2005-01-30', '-', 'default.jpg\r'),
('10031', 'ERIK AGUS SUSILO', 'Kelas X RPL', '0538.0029.2065', 'L', '0045854941', 'TUBAN', '2004-08-22', 'PERUM BUKIT KARANG', 'default.jpg\r'),
('10032', 'HABIB NURSIDIK', 'Kelas X RPL', '0540.0031.2065', 'L', '0044427356', 'BREBES', '2004-09-12', 'BLOK BABAKANJATI III', 'default.jpg\r'),
('10033', 'IKHWAN NADHIRUS SHODIQ', 'Kelas X RPL', '0517.0032.2065', 'L', '3050496770', 'BALIKPAPAN', '2005-11-19', 'PERUM BANJARARUM ESTATE BLOK LS NO 4', 'default.jpg\r'),
('10034', 'MUHAMMAD NAUFAL IRFAN', 'Kelas X RPL', '0542.0033.2065', 'L', '3051652815', 'DEMAK', '2005-08-09', 'JALI', 'default.jpg\r'),
('10035', 'MUHAMMAD TAUSI\'UL ARZAAQ', 'Kelas X RPL', '0543.0034.2065', 'L', '0046112720', 'SIDOARJO', '2004-10-11', 'RAMBUTAN NO. 19', 'default.jpg\r'),
('10036', 'NAUFAL FAIZUDIN AHMAD', 'Kelas X RPL', '0544.0035.2065', 'L', '0048518265', 'KEDIRI', '2004-11-20', 'KETAWANG', 'default.jpg\r'),
('10037', 'RAHMAD HIDAYAT AL FAHRIZZI', 'Kelas X RPL', '0545.0036.2065', 'L', '0044117519', 'TUBAN', '2004-11-11', 'DSN NGIMBANG', 'default.jpg\r'),
('10038', 'RIFQI ARVANSYA', 'Kelas X RPL', '0546.0037.2065', 'L', '0045378878', 'TUBAN', '2004-09-13', 'SIDOREJO', 'default.jpg\r'),
('20001', 'AHMAD BAIDOWI', 'Kelas XI MM', '0479.0019.2067', 'L', '0048341035', 'JOMBANG', '2004-03-23', 'ANJASMORO', 'default.jpg\r'),
('20002', 'AHMAD FAKHRUSY SYAKIRIN AL HAQIQI', 'Kelas XI MM', '0480.0020.2067', 'L', '0042778398', 'Gresik', '2004-11-19', 'wonokerto  rt 16 rw 03', 'default.jpg\r'),
('20003', 'AHMAD KENAZ BACHTIYAR AL-FATICH', 'Kelas XI MM', '0481.0021.2067', 'L', '3042042244', 'JOMBANG', '2004-02-25', 'JL GARUDA RT 1/3', 'default.jpg\r'),
('20004', 'ALIF HENDRA SAPUTRA', 'Kelas XI MM', '0482.0022.2067', 'L', '0043482112', 'SURABAYA', '2004-03-10', 'DUPAK RT 05 RW 05 KREMBANGAN', 'default.jpg\r'),
('20005', 'Arif Syaifudin', 'Kelas XI MM', '0483.0023.2067', 'L', '0041295588', 'Mulya Jaya', '2004-03-16', 'Sembawa', 'default.jpg\r'),
('20006', 'Birru Aula Hufaidz', 'Kelas XI MM', '0484.0024.2067', 'L', '0046102672', 'Ponorogo', '2004-03-14', 'Betok II', 'default.jpg\r'),
('20007', 'DEA AMANDA', 'Kelas XI MM', '0485.0025.2067', 'P', '0028843117', 'JAKARTA', '2002-06-04', 'WAY ILAHAN I RT 02 RW 01', 'default.jpg\r'),
('20008', 'DIMAS NADHIM PRASTYO WIBOWO', 'Kelas XI MM', '0486.0026.2067', 'L', '3011747284', 'BOJONEGORO', '2001-03-28', 'SENTUL RT 01 RW 10', 'default.jpg\r'),
('20009', 'GALUH SYIFA ANNORY', 'Kelas XI MM', '0487.0027.2067', 'P', '0037955641', 'Sumenep', '2003-05-26', 'Jl. Raya Talango', 'default.jpg\r'),
('20010', 'Khoirul Jazilan Chabibullah As Samarkand', 'Kelas XI MM', '0547.0065.2067', 'L', '0021580670', 'Surabaya', '2002-12-09', 'Jemur Wonosari I-A/6', 'default.jpg\r'),
('20011', 'LEONI LORENZA', 'Kelas XI MM', '0489.0029.2067', 'P', '0035176708', 'GRESIK', '2003-10-03', 'KARANGANDONG', 'default.jpg\r'),
('20012', 'MICHAEL JIBRAN DANUARTA', 'Kelas XI MM', '0492.0032.2067', 'L', '0048498822', 'surabaya', '2004-05-06', 'dk kauman', 'default.jpg\r'),
('20013', 'MOCH. AMIN DIO', 'Kelas XI MM', '0493.0033.2067', 'L', '0039878243', 'BANGKALAN', '2003-10-15', 'dusun ra\'as', 'default.jpg\r'),
('20014', 'Moh.Nur Rifqi Wibowo', 'Kelas XI MM', '0494.0034.2067', 'L', '0031697103', 'Tuban', '2003-03-01', 'Kesamben', 'default.jpg\r'),
('20015', 'MOHAMMAD RIZAL CHASI PRATAMA', 'Kelas XI MM', '0491.0031.2067', 'L', '0043831651', 'JOMBANG', '2004-02-29', 'RETNOSUARI', 'default.jpg\r'),
('20016', 'MUHAMMAD IFAL IFTAHUDDIN', 'Kelas XI MM', '0490.0030.2067', 'L', '0038604439', 'JOMBANG', '2003-02-01', 'DSN NGEMPAK KEC KESAMBEN KAB JOMBANG', 'default.jpg\r'),
('20017', 'RAMA WIJAYA ISANIA PUTRA', 'Kelas XI MM', '0495.0035.2067', 'L', '0048140648', 'SURABAYA', '2003-09-19', 'JEMUR WONOSARI 144', 'default.jpg\r'),
('20018', 'SALWA PUTRI NUHA RIALTAT', 'Kelas XI MM', '0507.0039.2067', 'P', '0045633445', 'JAKARTA', '2004-12-03', 'DUSUN KEMIRI CIUT', 'default.jpg\r'),
('20019', 'SUROED BAHLAWALA SYADALI', 'Kelas XI MM', '0496.0036.2067', 'L', '0036104975', 'CILACAP', '2003-11-28', 'CILACAP KARANG JATI RT 04 RW 05', 'default.jpg\r'),
('20020', 'Yoga Dwi Anggara', 'Kelas XI MM', '0497.0037.2067', 'L', '0035216507', 'Jombang', '2003-12-04', 'Ngumpak', 'default.jpg\r'),
('20021', 'FADLY AZIZ AZHARI', 'Kelas XI RPL', '0499.0016.2065', 'L', '3049023456', 'NGAWI', '2004-03-06', 'PENTUK PELEM RT 02 RW 05', 'default.jpg\r'),
('20022', 'INDRA HABIBUL MUSTOPA', 'Kelas XI RPL', '0500.0017.2065', 'L', '0053996837', 'Subang', '2004-09-01', 'Katomas', 'default.jpg\r'),
('20023', 'INDRIA RANI OCTAVIA', 'Kelas XI RPL', '0501.0018.2065', 'P', '0043081583', 'BOGOR', '2004-10-04', 'CIPACUNG GRAHA AMAN MANDIRI RT 5/5', 'default.jpg\r'),
('20024', 'MELFIKA SHEYLAWATIN', 'Kelas XI RPL', '0504.0021.2065', 'P', '0035057347', 'Jombang', '2003-12-18', 'Klagen', 'default.jpg\r'),
('20025', 'MUHAMMAD IRSYAD CHOIRUL ABADI', 'Kelas XI RPL', '0502.0019.2065', 'L', '0033126382', 'KEDIRI', '2003-01-21', 'KWARASAN KIDUL', 'default.jpg\r'),
('20026', 'MUHAMMAD ZIDAN HAFIZH MAULANA', 'Kelas XI RPL', '0503.0020.2065', 'L', '0036702356', 'SIDOARJO', '2003-05-12', 'DSN MLATEN', 'default.jpg\r'),
('20027', 'RIZAL ABROR MUNIR', 'Kelas XI RPL', '0505.0022.2065', 'L', '0042233807', 'PEKALONGAN', '2004-05-14', 'PABUARAN RT 2 RW 1', 'default.jpg\r'),
('20028', 'Silfin Rangga Dwi Saputro', 'Kelas XI RPL', '0506.0023.2065', 'L', '0043490538', 'Kediri', '2004-02-03', 'Tekenuwung', 'default.jpg\r'),
('30001', 'ABDILLAH ADZIM', 'Kelas XII MM', '0460.0001.2067', 'L', '0021038743', 'BABULU', '2002-06-24', 'BABULU BARAT RT 009', 'default.jpg\r'),
('30002', 'DINA AMALIA', 'Kelas XII MM', '0461.0003.2067', 'P', '0036523395', 'MAGELANG', '2003-04-03', 'PLEMBANGAN RT/RW 002/007', 'default.jpg\r'),
('30003', 'Ery Chusnul Aldi', 'Kelas XII MM', '0462.0004.2067', 'L', '0030519099', 'Jombang', '2003-04-07', 'DUSUN PLENGAN RT/RW', 'default.jpg\r'),
('30004', 'Habib Ikhwani', 'Kelas XII MM', '0463.0005.2067', 'L', '0026648176', 'Mojokerto', '2002-11-13', 'Lebak', 'default.jpg\r'),
('30005', 'HARIS JONI ARTA', 'Kelas XII MM', '0464.0006.2067', 'L', '0030231528', 'JOMBANG', '2003-02-20', 'DUSUN DUKUHRT/RW 011/004', 'default.jpg\r'),
('30006', 'MUCHAMAD AMIQ ABDILLAH', 'Kelas XII MM', '0465.0007.2067', 'L', '0031698091', 'JOMBANG', '2003-02-20', 'DSN SUMBER PENGANTEN RT/RW 004/011', 'default.jpg\r'),
('30007', 'MUHAMMAD FAIZAL BASRI', 'Kelas XII MM', '0466.0008.2067', 'L', '0024532318', 'JOMBANG', '2002-10-24', 'DSN BENDUNGAN RT/RW 004/002', 'default.jpg\r'),
('30008', 'MUHAMMAD KHAIRUL PAPUTUNGAN', 'Kelas XII MM', '0472.0015.2067', 'L', '3024768596', 'BABO', '2002-11-13', 'DUSUN 1', 'default.jpg\r'),
('30009', 'MUHAMMAD RIFKI ZAINUL ARIFIN', 'Kelas XII MM', '0471.0014.2067', 'L', '0031893792', 'JOMBANG', '2003-08-29', 'PUTIHAN', 'default.jpg\r'),
('30010', 'NUR AZIZAH WULANDARI', 'Kelas XII MM', '0468.0010.2067', 'P', '0028463061', 'MOJOKERTO', '2003-05-05', 'DUSUN KEBON RT/RW 009/003', 'default.jpg\r'),
('30011', 'RIZKY NURHIDAYAT', 'Kelas XII MM', '0469.0011.2067', 'L', '0027706915', 'KEDIRI', '2003-08-23', 'JALAN TIRTO MAS RT/RW 006/002', 'default.jpg\r'),
('30012', 'YANUAR AZIZAN AHMAD MUSTA\'IN', 'Kelas XII MM', '0474.0017.2067', 'L', '0022817142', 'MAGELANG', '2002-01-15', 'Beteng menoreh', 'default.jpg\r'),
('30013', 'MOCH. FAIZ ALFIAN', 'Kelas XII RPL', '0450.0001.2065', 'L', '0032756675', 'LAMONGAN', '2003-04-11', 'LAWAN RT/RW 010/005', 'default.jpg\r'),
('30014', 'MOCH. RIZKI AGIL BACHTIAR', 'Kelas XII RPL', '0452.0004.2065', 'L', '0030530508', 'JOMBANG', '2003-06-04', 'DSN DUKUH RT/RW 005/004', 'default.jpg\r'),
('30015', 'MOCHAMMAD ADITYA', 'Kelas XII RPL', '0459.0015.2065', 'L', '0025035038', 'JOMBANG', '2002-09-06', 'DSN PULEREJO RT/RW 001/003', 'default.jpg\r'),
('30016', 'MOCHAMMAD ALI MUCHTAROM', 'Kelas XII RPL', '0456.0012.2065', 'L', '0034620583', 'JOMBANG', '2003-05-01', 'TANHUNG WADUNG', 'default.jpg\r'),
('30017', 'MUHAMMAD RAUL ADYANSYAH', 'Kelas XII RPL', '0457.0013.2065', 'L', '0034137402', 'TANGERANG', '2003-03-21', 'PERUM KOTA BARU RT/RW 004/001', 'default.jpg\r'),
('30018', 'MUHAMMAD SYAFIL KAFI UMAR', 'Kelas XII RPL', '0458.0014.2065', 'L', '0025390280', 'JOMBANG', '2002-09-01', 'PERUM TAMBAKREJO ASRI B 14', 'default.jpg\r'),
('30019', 'YOGI ISLAMI HARI SAMBODO', 'Kelas XII RPL', '0453.0009.2065', 'L', '0025153480', 'SIMPANGAN', '2002-10-28', 'TALANG JAWA', 'default.jpg\r'),
('30020', 'Zaki Rafi Rukmana', 'Kelas XII RPL', '0454.0010.2065', 'L', '0027338663', 'Bangko', '2002-08-13', 'PUlau Tujuh', 'default.jpg\r'),
('30021', 'ZAUQY LAUNU HAYYA', 'Kelas XII RPL', '0455.0011.2065', 'L', '0032824979', 'KEDIRI', '2003-03-27', 'DUSUN BANYAKANRT/RW 001/002', 'default.jpg'),
('﻿10001', 'ABDUL LATIEF', 'Kelas X MM', '0508.0040.2067', 'L', '0039612171', 'JOMBANG', '2004-04-14', 'KRAMATJEGU', 'default.jpg\r');

-- --------------------------------------------------------

--
-- Table structure for table `fixanggotaperpus`
--

CREATE TABLE `fixanggotaperpus` (
  `COL 1` varchar(139) DEFAULT NULL,
  `COL 2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixanggotaperpus`
--

INSERT INTO `fixanggotaperpus` (`COL 1`, `COL 2`) VALUES
('10001;ABDUL LATIEF;Kelas X MM;0508.0040.2067;L;0039612171;JOMBANG;2004-04-14;KRAMATJEGU;default.jpg', NULL),
('10002;ACHMAD YOGA PRATAMA;Kelas X MM;0509.0041.2067;L;0055424067;SIDOARJO;2005-03-14;DUKUH SANTREN;default.jpg', NULL),
('10003;ANDRIAN ABDUL HAKIM;Kelas X MM;0510.0042.2067;L;0054619478;ASIKI;2005-01-01;PERUM KORINDO', ' ASIKI;default.jpg'),
('10004;ANISA AINUR ROBI;Kelas X MM;0511.0043.2067;P;0058032358;MADIUN;2005-04-19;DESA KARANGREJO ;default.jpg', NULL),
('10005;ARIF SIFA UDIN;Kelas X MM;0512.0044.2067;L;3054428783;LAMONGAN;2005-08-24;DSN. TUTUP;default.jpg', NULL),
('10006;DELA PUSPITASARI;Kelas X MM;0513.0045.2067;P;0046715530;Jombang;2004-03-22;Dsn Sendangrejo;default.jpg', NULL),
('10007;FICKRI NURRAHMAN;Kelas X MM;0514.0046.2067;L;0045065305;JAKARTA;2004-05-25;LAKARSANTRI;default.jpg', NULL),
('10008;FITO NAILUL IZZA ACHMADIN;Kelas X MM;0539.0066.2067;L;3041334467;NGANJUK;2004-05-21;SONO INDAH UTARA GG.V;default.jpg', NULL),
('10009;FYU AMANATILLAH ROBBY RIFANY;Kelas X MM;0515.0047.2067;L;0058879298;LAMONGAN;2005-05-31;TURI;default.jpg', NULL),
('10010;Hardika Apria Nurdiansyah;Kelas X MM;0516.0048.2067;L;0051900628;Tuban;2005-04-25;GMP 2;default.jpg', NULL),
('10011;Izza Nuruddin Husni Mubarok;Kelas X MM;0518.0050.2067;L;0052751621;Semarang;2005-04-10;Ketileng RT 5 RW 25 Semarang;default.jpg', NULL),
('10012;KARTIKA PUTRI MAULUDIA;Kelas X MM;0519.0051.2067;P;0041562806;SURABAYA;2004-04-25;MARGODADI III/ 124;default.jpg', NULL),
('10013;MOCHAMAD NAUFAL ABYAN;Kelas X MM;0521.0053.2067;L;0048626371;SURABAYA;2004-12-17;JL. DUPAK BANDAREJO NO.32 A GG.2;default.jpg', NULL),
('10014;MOH. ZUHDAN MAULANA BASYARI MAFTUH;Kelas X MM;0522.0054.2067;L;3047602895;JOMBANG;2004-08-11;TAMBAKBERAS TIMUR;default.jpg', NULL),
('10015;MOHAMMAD AHSANTU DHONNI;Kelas X MM;0523.0055.2067;L;0054492854;GRESIK;2005-04-08;MADIUN I NO.42 GKB;default.jpg', NULL),
('10016;MOHAMMAD SYAHID BADRUDHIN NUR CHASAN;Kelas X MM;0525.0057.2067;L;3047650803;JOMBANG;2004-11-19;TAMBAK REJO;default.jpg', NULL),
('10017;MUHAMMAD FAIDLUL QODIR;Kelas X MM;0541.0066.2067;L;0055572250;LAMONGAN;2005-07-30;JL. SUNAN DRAJAD;default.jpg', NULL),
('10018;MUHAMMAD IHYA\' ULUMUDDIN;Kelas X MM;0526.0058.2067;L;3048571682;SURABAYA;2005-08-14;DSN GADING;default.jpg', NULL),
('10019;MUHAMMAD JAMALLUDIN;Kelas X MM;0524.0056.2067;L;3053086645;LAMONGAN;2005-04-28;PANDAK;default.jpg', NULL),
('10020;MUHAMMAD ZAMHARIR RIOGA PUTRA;Kelas X MM;0527.0059.2067;L;0057593740;SURAKARTA;2005-03-11;GENDINGAN;default.jpg', NULL),
('10021;MUHAMMAD ZIDAN MU\'\'AFA;Kelas X MM;0528.0060.2067;L;0048513406;BLITAR;2004-08-26;jlan selopuro;default.jpg', NULL),
('10022;PAUNDRA LAZUARDZY ZIDANE HARDHANA;Kelas X MM;0529.0061.2067;L;0033667611;BLITAR;2003-12-31;JL. SEMERU LK. BRUBUH RT.003', ' RW. 002;default.jpg'),
('10023;RESA MAULANA;Kelas X MM;0530.0062.2067;L;3029438005;WONOSOBO;2002-10-28;SIBUNGKANG;default.jpg', NULL),
('10024;YOGI BACHTIAR;Kelas X MM;0531.0063.2067;L;0043327921;TULUNGAGUNG;2004-09-10;DSN. SUMBERAGUNG;default.jpg', NULL),
('10025;ZAKKY MUFID MAFTUH;Kelas X MM;0532.0064.2067;L;0045781455;MADIUN;2004-10-19;KETANDAN;default.jpg', NULL),
('10026;ABDUL QODIR ALKHOIRI;Kelas X RPL;0533.0024.2065;L;3059273112;GRESIK;2005-05-28;CANGKIR;default.jpg', NULL),
('10027;MOHAMMAD HAFIZ AL-AZIZ;Kelas X MM;0534.0025.2067;L;0033785224;SURABAYA;2003-08-01;TAMBAKDONO NO.8;default.jpg', NULL),
('10028;ADITYA PRADIPTA ARYA SETYAWAN;Kelas X RPL;0535.0026.2065;L;0058265988;BATAM;2005-01-06;PERMATA ASRI PRATAMA BLK.F NO.32;default.jpg', NULL),
('10029;ADITYA RAHMAT WILDAN;Kelas X RPL;0536.0027.2065;L;3043615507;JOMBANG;2004-08-28;DSN TUGU;default.jpg', NULL),
('10030;EKO DWI NURHUDA;Kelas X RPL;0537.0028.2065;L;0052073665;BATANG;2005-01-30;-;default.jpg', NULL),
('10031;ERIK AGUS SUSILO;Kelas X RPL;0538.0029.2065;L;0045854941;TUBAN;2004-08-22;PERUM BUKIT KARANG;default.jpg', NULL),
('10032;HABIB NURSIDIK;Kelas X RPL;0540.0031.2065;L;0044427356;BREBES;2004-09-12;BLOK BABAKANJATI III;default.jpg', NULL),
('10033;IKHWAN NADHIRUS SHODIQ;Kelas X RPL;0517.0032.2065;L;3050496770;BALIKPAPAN;2005-11-19;PERUM BANJARARUM ESTATE BLOK LS NO 4;default.jpg', NULL),
('10034;MUHAMMAD NAUFAL IRFAN;Kelas X RPL;0542.0033.2065;L;3051652815;DEMAK;2005-08-09;JALI;default.jpg', NULL),
('10035;MUHAMMAD TAUSI\'UL ARZAAQ;Kelas X RPL;0543.0034.2065;L;0046112720;SIDOARJO;2004-10-11;RAMBUTAN NO. 19;default.jpg', NULL),
('10036;NAUFAL FAIZUDIN AHMAD;Kelas X RPL;0544.0035.2065;L;0048518265;KEDIRI;2004-11-20;KETAWANG;default.jpg', NULL),
('10037;RAHMAD HIDAYAT AL FAHRIZZI;Kelas X RPL;0545.0036.2065;L;0044117519;TUBAN;2004-11-11;DSN NGIMBANG;default.jpg', NULL),
('10038;RIFQI ARVANSYA;Kelas X RPL;0546.0037.2065;L;0045378878;TUBAN;2004-09-13;SIDOREJO;default.jpg', NULL),
('20001;AHMAD BAIDOWI;Kelas XI MM;0479.0019.2067;L;0048341035;JOMBANG;2004-03-23;ANJASMORO;default.jpg', NULL),
('20002;AHMAD FAKHRUSY SYAKIRIN AL HAQIQI;Kelas XI MM;0480.0020.2067;L;0042778398;Gresik;2004-11-19;wonokerto  rt 16 rw 03;default.jpg', NULL),
('20003;AHMAD KENAZ BACHTIYAR AL-FATICH;Kelas XI MM;0481.0021.2067;L;3042042244;JOMBANG;2004-02-25;JL GARUDA RT 1/3;default.jpg', NULL),
('20004;ALIF HENDRA SAPUTRA;Kelas XI MM;0482.0022.2067;L;0043482112;SURABAYA;2004-03-10;DUPAK RT 05 RW 05 KREMBANGAN;default.jpg', NULL),
('20005;Arif Syaifudin;Kelas XI MM;0483.0023.2067;L;0041295588;Mulya Jaya;2004-03-16;Sembawa;default.jpg', NULL),
('20006;Birru Aula Hufaidz;Kelas XI MM;0484.0024.2067;L;0046102672;Ponorogo;2004-03-14;Betok II;default.jpg', NULL),
('20007;DEA AMANDA;Kelas XI MM;0485.0025.2067;P;0028843117;JAKARTA;2002-06-04;WAY ILAHAN I RT 02 RW 01;default.jpg', NULL),
('20008;DIMAS NADHIM PRASTYO WIBOWO;Kelas XI MM;0486.0026.2067;L;3011747284;BOJONEGORO;2001-03-28;SENTUL RT 01 RW 10;default.jpg', NULL),
('20009;GALUH SYIFA ANNORY;Kelas XI MM;0487.0027.2067;P;0037955641;Sumenep;2003-05-26;Jl. Raya Talango;default.jpg', NULL),
('20010;Khoirul Jazilan Chabibullah As Samarkand;Kelas XI MM;0547.0065.2067;L;0021580670;Surabaya;2002-12-09;Jemur Wonosari I-A/6;default.jpg', NULL),
('20011;LEONI LORENZA;Kelas XI MM;0489.0029.2067;P;0035176708;GRESIK;2003-10-03;KARANGANDONG;default.jpg', NULL),
('20012;MICHAEL JIBRAN DANUARTA;Kelas XI MM;0492.0032.2067;L;0048498822;surabaya;2004-05-06;dk kauman;default.jpg', NULL),
('20013;MOCH. AMIN DIO;Kelas XI MM;0493.0033.2067;L;0039878243;BANGKALAN;2003-10-15;dusun ra\'as;default.jpg', NULL),
('20014;Moh.Nur Rifqi Wibowo;Kelas XI MM;0494.0034.2067;L;0031697103;Tuban;2003-03-01;Kesamben;default.jpg', NULL),
('20015;MOHAMMAD RIZAL CHASI PRATAMA;Kelas XI MM;0491.0031.2067;L;0043831651;JOMBANG;2004-02-29;RETNOSUARI;default.jpg', NULL),
('20016;MUHAMMAD IFAL IFTAHUDDIN;Kelas XI MM;0490.0030.2067;L;0038604439;JOMBANG;2003-02-01;DSN NGEMPAK KEC KESAMBEN KAB JOMBANG;default.jpg', NULL),
('20017;RAMA WIJAYA ISANIA PUTRA;Kelas XI MM;0495.0035.2067;L;0048140648;SURABAYA;2003-09-19;JEMUR WONOSARI 144;default.jpg', NULL),
('20018;SALWA PUTRI NUHA RIALTAT;Kelas XI MM;0507.0039.2067;P;0045633445;JAKARTA;2004-12-03;DUSUN KEMIRI CIUT;default.jpg', NULL),
('20019;SUROED BAHLAWALA SYADALI;Kelas XI MM;0496.0036.2067;L;0036104975;CILACAP;2003-11-28;CILACAP KARANG JATI RT 04 RW 05;default.jpg', NULL),
('20020;Yoga Dwi Anggara;Kelas XI MM;0497.0037.2067;L;0035216507;Jombang;2003-12-04;Ngumpak;default.jpg', NULL),
('20021;FADLY AZIZ AZHARI;Kelas XI RPL;0499.0016.2065;L;3049023456;NGAWI;2004-03-06;PENTUK PELEM RT 02 RW 05;default.jpg', NULL),
('20022;INDRA HABIBUL MUSTOPA;Kelas XI RPL;0500.0017.2065;L;0053996837;Subang;2004-09-01;Katomas;default.jpg', NULL),
('20023;INDRIA RANI OCTAVIA;Kelas XI RPL;0501.0018.2065;P;0043081583;BOGOR;2004-10-04;CIPACUNG GRAHA AMAN MANDIRI RT 5/5;default.jpg', NULL),
('20024;MELFIKA SHEYLAWATIN;Kelas XI RPL;0504.0021.2065;P;0035057347;Jombang;2003-12-18;Klagen;default.jpg', NULL),
('20025;MUHAMMAD IRSYAD CHOIRUL ABADI;Kelas XI RPL;0502.0019.2065;L;0033126382;KEDIRI;2003-01-21;KWARASAN KIDUL;default.jpg', NULL),
('20026;MUHAMMAD ZIDAN HAFIZH MAULANA;Kelas XI RPL;0503.0020.2065;L;0036702356;SIDOARJO;2003-05-12;DSN MLATEN;default.jpg', NULL),
('20027;RIZAL ABROR MUNIR;Kelas XI RPL;0505.0022.2065;L;0042233807;PEKALONGAN;2004-05-14;PABUARAN RT 2 RW 1;default.jpg', NULL),
('20028;Silfin Rangga Dwi Saputro;Kelas XI RPL;0506.0023.2065;L;0043490538;Kediri;2004-02-03;Tekenuwung;default.jpg', NULL),
('30001;ABDILLAH ADZIM;Kelas XII MM;0460.0001.2067;L;0021038743;BABULU;2002-06-24;BABULU BARAT RT 009;default.jpg', NULL),
('30002;DINA AMALIA;Kelas XII MM;0461.0003.2067;P;0036523395;MAGELANG;2003-04-03;PLEMBANGAN RT/RW 002/007;default.jpg', NULL),
('30003;Ery Chusnul Aldi;Kelas XII MM;0462.0004.2067;L;0030519099;Jombang;2003-04-07;DUSUN PLENGAN RT/RW;default.jpg', NULL),
('30004;Habib Ikhwani;Kelas XII MM;0463.0005.2067;L;0026648176;Mojokerto;2002-11-13;Lebak;default.jpg', NULL),
('30005;HARIS JONI ARTA;Kelas XII MM;0464.0006.2067;L;0030231528;JOMBANG;2003-02-20;DUSUN DUKUHRT/RW 011/004;default.jpg', NULL),
('30006;MUCHAMAD AMIQ ABDILLAH;Kelas XII MM;0465.0007.2067;L;0031698091;JOMBANG;2003-02-20;DSN SUMBER PENGANTEN RT/RW 004/011;default.jpg', NULL),
('30007;MUHAMMAD FAIZAL BASRI;Kelas XII MM;0466.0008.2067;L;0024532318;JOMBANG;2002-10-24;DSN BENDUNGAN RT/RW 004/002;default.jpg', NULL),
('30008;MUHAMMAD KHAIRUL PAPUTUNGAN;Kelas XII MM;0472.0015.2067;L;3024768596;BABO;2002-11-13;DUSUN 1;default.jpg', NULL),
('30009;MUHAMMAD RIFKI ZAINUL ARIFIN;Kelas XII MM;0471.0014.2067;L;0031893792;JOMBANG;2003-08-29;PUTIHAN;default.jpg', NULL),
('30010;NUR AZIZAH WULANDARI;Kelas XII MM;0468.0010.2067;P;0028463061;MOJOKERTO;2003-05-05;DUSUN KEBON RT/RW 009/003;default.jpg', NULL),
('30011;RIZKY NURHIDAYAT;Kelas XII MM;0469.0011.2067;L;0027706915;KEDIRI;2003-08-23;JALAN TIRTO MAS RT/RW 006/002;default.jpg', NULL),
('30012;YANUAR AZIZAN AHMAD MUSTA\'IN;Kelas XII MM;0474.0017.2067;L;0022817142;MAGELANG;2002-01-15;Beteng menoreh;default.jpg', NULL),
('30013;MOCH. FAIZ ALFIAN;Kelas XII RPL;0450.0001.2065;L;0032756675;LAMONGAN;2003-04-11;LAWAN RT/RW 010/005;default.jpg', NULL),
('30014;MOCH. RIZKI AGIL BACHTIAR;Kelas XII RPL;0452.0004.2065;L;0030530508;JOMBANG;2003-06-04;DSN DUKUH RT/RW 005/004;default.jpg', NULL),
('30015;MOCHAMMAD ADITYA;Kelas XII RPL;0459.0015.2065;L;0025035038;JOMBANG;2002-09-06;DSN PULEREJO RT/RW 001/003;default.jpg', NULL),
('30016;MOCHAMMAD ALI MUCHTAROM;Kelas XII RPL;0456.0012.2065;L;0034620583;JOMBANG;2003-05-01;TANHUNG WADUNG;default.jpg', NULL),
('30017;MUHAMMAD RAUL ADYANSYAH;Kelas XII RPL;0457.0013.2065;L;0034137402;TANGERANG;2003-03-21;PERUM KOTA BARU RT/RW 004/001;default.jpg', NULL),
('30018;MUHAMMAD SYAFIL KAFI UMAR;Kelas XII RPL;0458.0014.2065;L;0025390280;JOMBANG;2002-09-01;PERUM TAMBAKREJO ASRI B 14;default.jpg', NULL),
('30019;YOGI ISLAMI HARI SAMBODO;Kelas XII RPL;0453.0009.2065;L;0025153480;SIMPANGAN;2002-10-28;TALANG JAWA;default.jpg', NULL),
('30020;Zaki Rafi Rukmana;Kelas XII RPL;0454.0010.2065;L;0027338663;Bangko;2002-08-13;PUlau Tujuh;default.jpg', NULL),
('30021;ZAUQY LAUNU HAYYA;Kelas XII RPL;0455.0011.2065;L;0032824979;KEDIRI;2003-03-27;DUSUN BANYAKANRT/RW 001/002;default.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kode_peminjaman` varchar(20) NOT NULL,
  `jumlah_dipinjam` int(11) NOT NULL,
  `id_siswa` varchar(25) DEFAULT NULL,
  `kelas` varchar(25) DEFAULT NULL,
  `admin` varchar(128) NOT NULL,
  `tgl_peminjaman` datetime NOT NULL,
  `tgl_pengembalian` datetime DEFAULT NULL,
  `status_pengembalian` enum('proses','dipinjam','kembali') NOT NULL,
  `telat` int(5) DEFAULT NULL,
  `denda` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_detail`
--

CREATE TABLE `peminjaman_detail` (
  `kode_peminjaman_detail` varchar(20) NOT NULL,
  `kode_peminjaman` varchar(20) NOT NULL,
  `kode_buku` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `foto`, `password`, `role_id`, `status`) VALUES
(1, 'Yogi Islami', 'yogiihs28@gmail.com', 'yogi', 'default.jpg', '12345', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `menu_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu_id`, `title`, `url`, `icon`) VALUES
(1, 2, 'Dashboard', 'menu/dashboard', 'fa fa-fw fa-dashboard'),
(2, 2, 'Transaksi', 'menu/transaksi', 'fa fa-fw fa-shopping-cart'),
(3, 2, 'Data Anggota', 'menu/data_anggota', 'fa fa-fw fa-book'),
(4, 2, 'Data Buku', 'menu/data_buku', 'fa fa-fw fa-book'),
(5, 1, 'Data Admin', 'menu/data_admin', 'fa fa-fw fa-book'),
(6, 2, 'Cettak QR COde', 'menu/pilih_cetak_qr_code', 'fa fa-print fa-fw');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Kepala Perpus'),
(2, 'Admin Perpus');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pinjam`
-- (See below for the actual view)
--
CREATE TABLE `v_pinjam` (
`kode_peminjaman` varchar(20)
,`kode_peminjaman_detail` varchar(20)
,`kode_buku` varchar(10)
,`judul` varchar(111)
,`id_siswa` varchar(25)
,`nama_siswa` varchar(128)
,`nis` varchar(20)
,`kelas` varchar(25)
,`telat` int(5)
,`denda` varchar(50)
,`admin` varchar(128)
,`nama` varchar(128)
,`tgl_peminjaman` datetime
,`tgl_pengembalian` datetime
,`status_pengembalian` enum('proses','dipinjam','kembali')
);

-- --------------------------------------------------------

--
-- Structure for view `v_pinjam`
--
DROP TABLE IF EXISTS `v_pinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pinjam`  AS SELECT `peminjaman`.`kode_peminjaman` AS `kode_peminjaman`, `peminjaman_detail`.`kode_peminjaman_detail` AS `kode_peminjaman_detail`, `peminjaman_detail`.`kode_buku` AS `kode_buku`, `buku`.`judul` AS `judul`, `peminjaman`.`id_siswa` AS `id_siswa`, `data_anggota`.`nama_siswa` AS `nama_siswa`, `data_anggota`.`nis` AS `nis`, `peminjaman`.`kelas` AS `kelas`, `peminjaman`.`telat` AS `telat`, `peminjaman`.`denda` AS `denda`, `peminjaman`.`admin` AS `admin`, `user`.`nama` AS `nama`, `peminjaman`.`tgl_peminjaman` AS `tgl_peminjaman`, `peminjaman`.`tgl_pengembalian` AS `tgl_pengembalian`, `peminjaman`.`status_pengembalian` AS `status_pengembalian` FROM ((((`peminjaman` join `peminjaman_detail` on(`peminjaman`.`kode_peminjaman` = `peminjaman_detail`.`kode_peminjaman`)) join `user` on(`peminjaman`.`admin` = `user`.`id`)) join `buku` on(`peminjaman_detail`.`kode_buku` = `buku`.`kode_buku`)) join `data_anggota` on(`peminjaman`.`id_siswa` = `data_anggota`.`id_siswa`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`);

--
-- Indexes for table `peminjaman_detail`
--
ALTER TABLE `peminjaman_detail`
  ADD PRIMARY KEY (`kode_peminjaman_detail`),
  ADD KEY `kode_peminjaman` (`kode_peminjaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
