-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Mar 2024 pada 07.29
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_kelurahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` text NOT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `tempat` varchar(90) NOT NULL,
  `color` varchar(7) NOT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_agenda`
--

INSERT INTO `tb_agenda` (`id`, `nama`, `tanggal`, `deskripsi`, `startdate`, `enddate`, `tempat`, `color`, `ket`, `userid`, `slug`) VALUES
(16, 'tes', '2024-02-25 12:20:18', 'tes', '2024-02-26 19:19:46', '2024-02-27 19:19:55', 'tes', '#090909', 'tws', 7, 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_album`
--

CREATE TABLE `tb_album` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `count` int(11) DEFAULT 0,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_album`
--

INSERT INTO `tb_album` (`id`, `nama`, `tanggal`, `userid`, `count`, `cover`) VALUES
(0, 'Album', '2024-03-05 05:12:55', 7, 7, '15fa80ee002240da90bbe7d4de0da326.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` datetime NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tayang` int(11) DEFAULT 0,
  `slug` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `kategoriid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `tayang`, `slug`, `userid`, `kategoriid`) VALUES
(11, 'Aksi Konkret Selamatkan Sumber Mata Air Dendeng', '2024-02-27 17:07:17', '<p>KBRN . Kediri : Menjaga kelestarian sumber mata air menjadi tanggung jawab setiap individu untuk melakukannya. Kesadaran dan kepedulian yang tumbuh itulah yang nantinya akan membawa peradaban alam menuju kelestariannya.</p>\r\n\r\n<p>Seperti yang dilakukan oleh masyarakat di Kota Kediri, misalnya. Pada Senin, (12/2/2024), Kelompok Kuliah Kerja Nyata Tematik 37 Kelurahan Ngletih UNP Kediri 2024 bersama dengan warga, karang taruna, perangkat kelurahan setempat dan Forum Kali Brantas melakukan aksi penanaman pohon, clean up dan uji kualitas air di Sumber Dendeng, Kelurahan Ngletih, Kecamatan Pesantren, Kota Kediri.</p>\r\n\r\n<p>Aksi ini pun juga untuk memperingati Hari Lahan Basah Sedunia 2024 yang jatuh setiap tanggal 2 Februari. Di mana, pada tahun ini, Hari Lahan Basah Sedunia mengusung tema &lsquo;Wetlands and Human Wellbeing&rsquo; yang artinya &lsquo;Lahan Basah dan Kesejahteraan Manusia&rsquo;. Tema ini mengakui lahan basah sebagai hal yang penting bagi manusia dan alam seraya menggarisbawahi nilai intrinsik ekosistem lahan basah serta manfaat dan jasanya, termasuk kontribusinya terhadap pembangunan berkelanjutan dan kesejahteraan manusia.</p>\r\n\r\n<p>Ada 7 poin SDGs (Tujuan Pembangunan Berkelanjutan) yang diangkat dalam program kerja ini meliputi poin 6 akses air bersih dan sanitasi, poin 11 kota dan komunitas yang berkelanjutan, poin 12 konsumsi dan produksi yang bertanggung jawab, poin 13 penanganan perubahan iklim, poin 14 menjaga ekosistem laut, poin 15 menjaga ekosistem darat, dan poin 17 kemitraan untuk mencapai tujuan. Hal ini selaras dengan tujuan KKNT UNP Kediri 2024 untuk membantu perencanaan pembangunan Kota Kediri yang diamanatkan dalam target SDGs salah satunya yaitu pengembangan tempat wisata Sumber Dendeng.</p>\r\n\r\n<p>Aksi ini diwarnai dengan penanaman sejumlah 60 bibit pohon yang tediri dari beringin, ficus, jambu, kelengkeng, dan pangkas kuning. Clean up di Sumber Dendeng juga menghasilkan 31 kg sampah residu mulai dari pakaian bekas yang mendominasi, disusul dengan sachet, botol plastik, kresek, dan plastik sekali pakai lainnya. Selain itu, uji kualitas air dengan parameter fisika dan kimia juga dilakukan dan hasil dari Fospat sejumlah 2.0 ppm.</p>\r\n\r\n<p>&ldquo;Aksi konkret reforestasi ini merupakan bentuk kesadaran dan kepedulian kami untuk menjaga dan melestarikan sumber mata air yang perannya sangat vital dengan harapan sumber mata air agar tidak mati dan air yang keluar semakin deras karena tahun 2024 diprediksi akan menjadi tahun yang bakal lebih panas lagi daripada tahun 2023 yang telah menjadi tahun terpanas. Selain itu kami juga mengangkut sampah residu disekitar sumber mata air yang dimana berdasarkan amanat PP No 22 tahun 2021 tentang PPLH paremeter sampah di sungai yang termasuk sumber mata air adalah nihil, kami juga tidak ingin mikroplastik bocor ke lingkungan sehingga mengkontaminasi sumber mata air. Uji kualitas air dengan parameter fisika kimia juga kami lakukan dengan membandingkan baku mutu air menurut PP No 22 tahun 2021 tentang PPLH. Hasil dari parameter fospat menunjukkan angka 2.0 ppm yang di mana telah melebihi baku mutu air nasional untuk sungai kelas 2 yaitu 0,2 ppm disebabkan di Sumber Dendeng digunakan untuk tempat cuci masyarakat sekitar,&rdquo; jelas Chandra Iman Asrori selaku Koordinator Tim Sumber Mata Air, Senin, (12/2/2024).</p>\r\n\r\n<p>Eka Wahyudi, S.Sos, Sekertaris Kelurahan Ngletih, turut menyampaikan apresiasinya terhadap aksi yang dilakukan oleh Kelompok Kuliah Kerja Nyata Tematik 37 Kelurahan Ngletih UNP Kediri 2024.</p>\r\n\r\n<p>&ldquo;Sesuai dengan Musyawarah Perencanaan Pembangunan (Musrenbang) tahun 2025 kemarin, dari warga sudah disepakati bahwa Sumber Dendeng ini nanti akan dilakukan pengembangan. Ini usulan kami dan semoga nanti ini disetujui oleh tim dari Musrenbang tingkat kota. Jadi kalau nanti sudah disetujui, Insya Allah untuk pengembangannya seperti apa kita tinggal menunggu konsepnya dari Pemerintah Kota Kediri. Hal ini kita harapkan dapat meningkatkan perekonomian yang ada di Sumber Dendeng ini seperti sumber-sumber yang lain yang ada di Kota Kediri,&rdquo; jelas Eka.</p>\r\n\r\n<p>Di samping itu, dengan menggandeng komunitas atau rekan KKN Tematik 37 Kelurahan Ngletih UNP Kediri 2024 ini, Eka berharap ketika nantinya Musrenbang disetujui dan konsepnya sesuai dengan yang ada di Pemerintah Kota Kediri, maka sinergitas ini akan tetap berlanjut, &ldquo;Harapan kami, komunitas atau rekan KKN Tematik 37 tetap bisa ikut serta berkolaborasi dan memviralkan di media sosial terkait eksistensi dari Sumber Dendeng ini,&rdquo; harap Eka.</p>\r\n\r\n<p>Terakhir, Koordinator Tim Sumber Mata Air, Chandra Iman Asrori juga mengajak seluruh masyarakat untuk bersama-sama menjaga sumber mata air, &ldquo;Pendidihan global sudah didepan mata dan kepala. Sudah saatnya kita berkolaborasi dan menyatukan diri secara bersama pada pelestarian sumber mata air, karena air merupakan sumber kehidupan bagi kita,&rdquo; tandas Chandra.</p>\r\n', '657ff3e64998852d287559c3b6b580f2.jpeg', 2, 'aksi-konkret-selamatkan-sumber-mata-air-dendeng', 7, 3),
(12, 'Musrenbang RKPD Kelurahan Ngletih Tahun 2024', '2024-02-25 14:44:21', '<p>Rabu, Tanggal 31 Januari 2024, telah dilaksanakan Musyawarah Perencanaan Pembangunan (MUSRENBANG) RKPD Kelurahan Ngletih Tahun 2025, bertempat di Balai Kelurahan Ngletih dihadiri oleh Bapak CAMAT Pesantren, Perangkat Kelurahan, Bhabinkamtibmas, Babinsa, RT, RW, LPMK, Kader PKK, Kader Posyandu, Karang Taruna, SATGAS PPA, Puskesmas Ngletih, Tokoh Masyarakat serta perwakilan sekolah yang berada dalam lingkup Kelurahan Ngletih.<br />\r\n<br />\r\nKegiatan MUSRENBANG ini menampung usulan-usulan dari acara Pra MUSRENBANG sebelumnya untuk program pembangunan tahun anggaran 2025, dari usulan yang telah disepakati mulai dari Bidang A. Pembangunan Manusia diperoleh 3 (tiga) usulan kegiatan, Bidang B. Infrastruktur diperoleh 5 (lima) usulan kegiatan dan Bidang C. Sosial Ekonomi diperoleh 2 (dua) usulan kegiatan. Diteruskan dengan penunjukan delegasi setiap Bidang untuk acara Musrenbang tingkat kecamatan, semoga para delegasi dapat membawa usulan program kegiatan yang bermanfaat dan prioritas untuk rakyat ke tingkat yang lebih tinggi.</p>\r\n', '424b78605378383f2c6ab6c1cbe94c8e.jpg', 1, 'musrenbang-rkpd-kelurahan-ngletih-tahun-2024', 8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buka`
--

CREATE TABLE `tb_buka` (
  `id` int(11) NOT NULL,
  `hari` varchar(40) DEFAULT NULL,
  `jam` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_buka`
--

INSERT INTO `tb_buka` (`id`, `hari`, `jam`) VALUES
(4, 'Senin - Jumat', '08.00 - 14.00 WIB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_files`
--

CREATE TABLE `tb_files` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `oleh` varchar(40) DEFAULT NULL,
  `download` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_files`
--

INSERT INTO `tb_files` (`id`, `judul`, `deskripsi`, `tanggal`, `oleh`, `download`, `data`) VALUES
(20, 'F2.01 Akte Kelahiran', 'F2.01 Akte Kelahiran', '2024-03-05 05:07:10', 'Admin Kelurahan', NULL, 'ae0e8c8ef324a96c040c01aacd6fd54f.pdf'),
(21, 'F2.01 Akte Kematian', 'F2.01 Akte Kematian', '2024-03-05 05:07:27', 'Admin Kelurahan', NULL, 'a87eb60309642ea2e6584abdc86d2171.pdf'),
(22, 'SPTJM Kelahiran dan Perkawinan', 'SPTJM Kelahiran dan Perkawinan', '2024-03-05 05:08:34', 'Admin Kelurahan', NULL, '34723d4902781a3152877d291cc51788.pdf'),
(23, 'F1.02 Peristiwa Kependudukan', 'F1.02 Peristiwa Kependudukan\r\n', '2024-03-05 05:08:52', 'Admin Kelurahan', NULL, 'cd33d3c8685cf95cf799283b0c5a3817.pdf'),
(24, 'F1.03 Perpindahan Penduduk', 'F1.03 Perpindahan Penduduk', '2024-03-05 05:09:17', 'Admin Kelurahan', NULL, 'b39494b2c7a81777faebfad5534927b8.pdf'),
(25, 'Formulir Tidak Keberatan Ditempati', 'Formulir Tidak Keberatan Ditempati', '2024-03-05 05:10:16', 'Admin Kelurahan', NULL, '413511ff31ccfe57da41f7184cb3a879.pdf'),
(26, 'Surat Pernyataan Pengasuhan Anak (pindah datang < 17 th )', 'Surat Pernyataan Pengasuhan Anak (pindah datang < 17 th )', '2024-03-05 05:10:34', 'Admin Kelurahan', NULL, '079cd73a5623262d1917c3b24c8dc537.pdf'),
(27, 'F2.01 Pembetulan Akta Catatan Sipil', 'F2.01 Pembetulan Akta Catatan Sipil', '2024-03-05 05:10:57', 'Admin Kelurahan', NULL, 'a4bb0f1128efedc3a6933f8d0169ffb9.pdf'),
(28, 'SPTJM Kebenaran Kematian', 'SPTJM Kebenaran Kematian', '2024-03-05 05:11:26', 'Admin Kelurahan', NULL, 'e1cfc7c49230d0d9ed30d80c295184d8.pdf'),
(29, 'Formulir F1.15 Pendaftaran Penduduk Non Permanen', 'Formulir F1.15 Pendaftaran Penduduk Non Permanen', '2024-03-05 05:11:44', 'Admin Kelurahan', NULL, 'af22026d384e9956997002a7e078ce67.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gallery`
--

CREATE TABLE `tb_gallery` (
  `id` int(11) NOT NULL,
  `judul` varchar(80) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gambar` varchar(255) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_gallery`
--

INSERT INTO `tb_gallery` (`id`, `judul`, `tanggal`, `gambar`, `albumid`, `userid`) VALUES
(10, 'Tes Foto', '2024-02-27 13:00:12', '6c5989f37cff7d8f88f3cf27e2a2ce6a.jpeg', 0, 7),
(11, 'RT / RW', '2024-02-27 14:20:21', 'd197f83d9659c224d6fdecde63c31fb5.jpeg', 0, 7),
(12, 'Aksi Konkret Selamatkan Sumber Mata Air Dendeng', '2024-02-27 14:20:41', 'b332953e390da8be624b21ae370e0cb7.jpeg', 0, 7),
(13, 'Sambutan Lurah Ngletih', '2024-02-27 14:20:51', '74517c5bb20e1dd0a3ed8a3b3e87ccc0.jpeg', 0, 7),
(14, 'DAFTAR NAMA KETUA RT DAN RW KELURAHAN NGLETIH KECAMATAN PESANTREN MASA BHAKTI TA', '2024-02-27 14:21:01', 'fe456284b30f567a4e7d7470082d043e.jpeg', 0, 7),
(15, 'RT / RW', '2024-02-27 14:21:12', '575e2bf8de3f9f907ddb1bf4cbad1e38.jpeg', 0, 7),
(16, 'RT / RW', '2024-02-27 14:21:45', 'e3c00e032677598a7a8eaf10a4974e80.jpeg', 0, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_identitas`
--

CREATE TABLE `tb_identitas` (
  `id` int(11) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `maps` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_identitas`
--

INSERT INTO `tb_identitas` (`id`, `favicon`, `brand`, `email`, `alamat`, `telepon`, `maps`) VALUES
(1, '8d1ed0d112417bdf90757ec0651a19ce.png', '97dca0e90017a76dc3d66f673c4463d2.png', 'ngletihkelurahan@gmail.com', 'Jl. Ngletih, Ngletih, Kec. Pesantren, Kota Kediri, Jawa Timur 64137', '0354-685086', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d415.4475433994829!2d112.06041416370644!3d-7.850468151085878!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78583d5a40c9c5%3A0x83cc58ddb54a2f15!2sKantor%20Kelurahan%20Ngletih!5e0!3m2!1sid!2sid!4v1708261069101!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_igfeed`
--

CREATE TABLE `tb_igfeed` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `client` varchar(80) NOT NULL,
  `accestoken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_igfeed`
--

INSERT INTO `tb_igfeed` (`id`, `userid`, `client`, `accestoken`) VALUES
(1, '12609509999', 'b3abdc2ff1fe4a928e09cdf7974abb68', '12609509999.b3abdc2.65615b2e72e148ceaeff9be08f2d1d02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_inbox`
--

CREATE TABLE `tb_inbox` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `kontak` varchar(13) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenispelayanan`
--

CREATE TABLE `tb_jenispelayanan` (
  `id` int(11) NOT NULL,
  `judul` varchar(80) NOT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_jenispelayanan`
--

INSERT INTO `tb_jenispelayanan` (`id`, `judul`, `isi`) VALUES
(1, 'AKTA KELAHIRAN', '<p><strong>Syarat-syarat pengurusan Akta Kelahiran OffLine dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Surat Keterangan Kelahiran dari dokter/bidan/penolong kelahiran Asli /SPTJM Kelahiran</li>\r\n	<li>Fotocopy KK dan KTP orang tua bayi&nbsp;</li>\r\n	<li>Fotocopy Akta Perkawinan/Akta Nikah orang tua/SPTJM Perkawinan</li>\r\n	<li>Fotocopy KTP 2 (dua) orang saksi yang mengetahui peristiwa&nbsp;</li>\r\n	<li>Fotocopy Akta kelahiran ibu (apabila ada), bagi anak&nbsp;lahir di luar nikah&nbsp;</li>\r\n	<li>Surat Pernyataan Belum Pernah Mencatatkan</li>\r\n	<li>Perkawinan dari Ibu bagi anak yang lahir di luar nikah</li>\r\n	<li>Berita Acara Kepolisian bagi anak yang tidak diketahui&nbsp;asal-usulnya</li>\r\n</ul>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(4, 'AKTA KEMATIAN', '<p><strong>Syarat-syarat Pengurusan Akta kematian Offline dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Surat kematian (Visum) dari Dokter / Rumah Sakit / Paramedis 2</li>\r\n	<li>Fotocopy KTP Pelapor</li>\r\n	<li>Fotocopy 2 (dua) orang Saksi (yang mengetahui peristiwa)</li>\r\n	<li>F2.01 (Formulir Kematian)</li>\r\n</ul>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(5, 'KTP', '<p><strong>Syarat-syarat Pengurusan Ktp Offline dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Fotocopy Akta Kelahiran (bagi yang baru ber usia 17 th/pemula)</li>\r\n	<li>Fotocopy Kartu Keluarga</li>\r\n	<li>KTP&nbsp;asli yang rusak (apabila rusak)</li>\r\n	<li>Surat Kehilangan dari Kepolisian (apabila hilang)</li>\r\n</ul>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(6, 'KIA', '<p><strong>Syarat-syarat Pengurusan KIA Offline dan Online</strong>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Fotocopy Akta kelahiran</li>\r\n	<li>Fotocopy KK dan KTP orang tua anak</li>\r\n	<li>Fotocopy Akta Perkawinan/Akta Nikah orang tua</li>\r\n	<li>Foto 3x4 (bagi anak yang berusia 5 th keatas)</li>\r\n</ul>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(8, 'PINDAH PERGI', '<p><strong>Syarat-syarat Pengurusan Surat Pindah Keluar Offline dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Kartu Keluarga lama (untuk KK rusak dan perubahan KK lama)</li>\r\n	<li>Surat kehilangan dari Kepolisian (untuk KK hilang)</li>\r\n	<li>Fotocopy Surat Keterangan bukti perubahan data (bila ada biodata anggota &nbsp;KK yang berubah)</li>\r\n</ul>\r\n\r\n<p><strong>BERLAKU LAYANAN 3 IN 1 (SATU PENDAFTARAN PINDAH DATANG SEKALIGUS MENDAPAT KK DAN KTP DAN SEMUA ANGGOTA KELUARGA) Apabila Ada Anggota keluarga yang ditinggal</strong></p>\r\n\r\n<p><em><strong>dengan catatan : upload dokumen pendukung seperti Surat nikah dan Akte Kelahiran semua anggota keluarga di form dokumen pendukung lainnnya ketika upload&nbsp;</strong></em></p>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(9, 'PINDAH DATANG', '<p><strong>Syarat-syarat Pengurusan Surat Pindah Datang Offline dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Surat Keterangan Pindah Warga Negara Indonesia (SKPWNI) asli dari daerah tujuan rangkap 1</li>\r\n	<li>KTP Asli bagi yang 17 th keatas dan mempunyai KTP (bagi semua anggota keluarga yang pindah)</li>\r\n	<li>Fotocopy Surat Keterangan bukti perubahan data (bila ada Perubahan Data , seperti Nikah, Cerai, Meningggal dst sebagai bukti perubahan data)</li>\r\n</ul>\r\n\r\n<p><strong>BERLAKU LAYANAN 3 IN 1 (SATU PENDAFTARAN PINDAH DATANG SEKALIGUS MENDAPAT KK DAN KTP DAN SEMUA ANGGOTA KELUARGA)</strong></p>\r\n\r\n<p><em><strong>dengan catatan : upload dokumen pendukung seperti Surat nikah dan Akte Kelahiran semua anggota keluarga di form dokumen pendukung lainnnya ketika upload&nbsp;</strong></em></p>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/Loket Pendaftaran&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Pemohon Melakukan Pendaftaran&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(10, 'KK', '<p><strong>Syarat-syarat Pengurusan Kartu Keluarga Offline dan Online</strong></p>\r\n\r\n<ul>\r\n	<li>Fotocopy Surat Keterangan Kelahiran dari dokter/ bidan/penolong kelahiran Asli semua anggota keluarga (untuk KK Baru)</li>\r\n	<li>Kartu Keluarga lama (untuk KK rusak dan perubahan KK lama)</li>\r\n	<li>Fotocopy Akta Perkawinan/Akta Nikah orang tua</li>\r\n	<li>Surat kehilangan dari Kepolisian (untuk KK hilang)</li>\r\n</ul>\r\n\r\n<p><strong>BERLAKU LAYANAN 3 IN 1 (SATU PENDAFTARAN pERUBAHAN KK SEKALIGUS MENDAPAT DOKUMEN LAINNYA UNTUK SEMUA ANGGOTA KELUARGA BERDASARKAN PERMOHONAN)</strong></p>\r\n\r\n<p><em><strong>dengan catatan : upload dokumen pendukung seperti Surat nikah, Akte Kelahiran, dll semua anggota keluarga di form dokumen pendukung lainnnya ketika upload dan mengisi keterangan</strong></em></p>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n'),
(11, 'KAWIN', '<p><strong>Syarat-syarat Pengurusan Akta Perkawinan Offline dan Online</strong></p>\r\n\r\n<p><strong><em>Bagi WNI :</em>&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Surat keterangan telah terjadinya perkawinan dari pemuka agama atau penghayat kepercayaan terhadap Tuhan YME</li>\r\n	<li>Foto copy KTP-El dan KK calon pengantin</li>\r\n	<li>Foto copy Akta kelahiran</li>\r\n	<li>Bagi janda atau Duda melampirkan akta perceraian / Surat kematian bagi yg sudah kawin</li>\r\n	<li>Surat keterangan belum kawin dari Dinas Kependudukan dan Pencatatan Sipil bagi luar kota</li>\r\n	<li>Fotocopy KTP-El orangtua atau wali</li>\r\n	<li>Fotocopy KTP-El 2 orang saksi</li>\r\n	<li>Pasphoto Calon pengantin berwarna berdampingan ukuran 4x6 sebanyak 2 lembar (Dilampirkan Saat Pernikahan Di DINAS)</li>\r\n</ul>\r\n\r\n<p><strong><em>Bagi WNA :&nbsp;</em></strong></p>\r\n\r\n<ul>\r\n	<li>Surat Tanda Bukti melaporkan diri ? STMD dari Kepolisian</li>\r\n	<li>Surat dokumen imigrasi</li>\r\n	<li>Passport dan Visa</li>\r\n	<li>Surat Ijin Tetap / Surat Ijin Tinggal Sementara</li>\r\n	<li>Surat Ijin dari Perwakilan Negara Asing Bersangkutan</li>\r\n</ul>\r\n\r\n<p><strong>Alur Pengurusan Dokumen</strong></p>\r\n\r\n<ul>\r\n	<li>Pemohon Mengakses Aplikasi SAKTI/ Loket Pendaftaran</li>\r\n	<li>Pemohon Melakukan Pendaftaran</li>\r\n	<li>Pemohon Mengisi Data, Upload dan Mencetak Bukti Pendaftaran</li>\r\n	<li>Operator Dukcapil Verifikasi berkas pengajuan</li>\r\n	<li>Pemohon suami dan isteri hadir di dinas untuk dicatat</li>\r\n	<li>Petugas Dukcapil Memberi persetujuan berkas</li>\r\n	<li>Operator cetak mengeluarkan Dokumen</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `nama`) VALUES
(2, 'UMUM'),
(3, 'KHUSUS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `isi` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','0') DEFAULT NULL,
  `beritaid` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `isi` text NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `tanggal`, `userid`, `isi`, `slug`) VALUES
(11, 'Senam Lansia', '2024-02-25 13:48:37', 8, '<p>PENGUMUMAN</p>\r\n\r\n<p>Diperuntukkan bagi warga Lansia yang berada di Kelurahan Ngletih, bahwa akan diadakan kegiatan Senam Lansia setiap hari Sabtu di Posyandu Kelurahan Ngletih.</p>\r\n\r\n<p>Adapun detail kegiatan sebagai berikut:</p>\r\n\r\n<ul>\r\n	<li>Waktu: Setiap Hari Sabtu, pukul 06:00 - Selesai</li>\r\n	<li>Tempat: Posyandu Kelurahan Ngletih</li>\r\n</ul>\r\n\r\n<p>Kegiatan Senam Lansia ini bertujuan untuk menjaga kesehatan serta memperkuat kebugaran fisik dan mental para Lansia. Kegiatan ini akan dilakukan dengan tetap mematuhi protokol kesehatan yang telah ditetapkan oleh pemerintah.</p>\r\n\r\n<p>Bagi warga Lansia yang berminat untuk mengikuti kegiatan ini, silakan datang tepat waktu sesuai dengan jadwal yang telah ditentukan.</p>\r\n\r\n<p>Demikianlah pengumuman ini disampaikan, atas perhatian dan partisipasi dari seluruh warga Lansia di Kelurahan Ngletih, kami ucapkan terima kasih.</p>\r\n', 'senam-lansia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengunjung`
--

CREATE TABLE `tb_pengunjung` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(40) DEFAULT NULL,
  `perangkat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_potensi`
--

CREATE TABLE `tb_potensi` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_potensi`
--

INSERT INTO `tb_potensi` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `slug`, `userid`) VALUES
(3, 'Potensi Kelurahan Ngletih', '2024-02-27 15:07:34', '<p>Potensi kelurahan merujuk pada sumber daya, kapasitas, dan kemampuan suatu wilayah kelurahan dalam mengembangkan diri, baik dari segi ekonomi, sosial, maupun budaya. Potensi ini dapat berasal dari berbagai sumber, seperti sumber daya alam, infrastruktur, sumber daya manusia, serta kekayaan sosial dan budaya.</p>\r\n\r\n<p>Potensi kelurahan dapat dilihat dari beberapa aspek, antara lain:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Sumber Daya Alam</strong>: Kelurahan yang memiliki sumber daya alam yang kaya seperti pertanian, perikanan, hutan, dan tambang dapat dimanfaatkan untuk pengembangan ekonomi lokal.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Infrastruktur</strong>: Keberadaan infrastruktur seperti jalan raya, listrik, air bersih, dan telekomunikasi yang baik dapat meningkatkan konektivitas dan memudahkan aktivitas ekonomi masyarakat.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sumber Daya Manusia</strong>: Kelurahan yang memiliki sumber daya manusia yang terampil, terdidik, dan terlatih memiliki potensi untuk mengembangkan berbagai sektor, mulai dari industri, perdagangan, hingga pariwisata.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sumber Daya Sosial dan Budaya</strong>: Keberadaan komunitas yang solid, adat istiadat yang unik, serta seni dan budaya yang khas dapat menjadi daya tarik tersendiri bagi wisatawan dan pelaku ekonomi kreatif.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Pola Pembangunan dan Kebijakan</strong>: Pola pembangunan yang berkelanjutan, kebijakan yang mendukung, serta partisipasi masyarakat dalam pengambilan keputusan dapat menjadi faktor penentu dalam pengembangan potensi kelurahan.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Dengan memanfaatkan potensi-potensi tersebut secara optimal dan berkelanjutan, kelurahan dapat mengembangkan dirinya menjadi entitas yang mandiri, sejahtera, dan berdaya saing</p>\r\n', 'd4aab5cdd8038615e4a00c064729af44.jpeg', 'potensi-kelurahan-ngletih', 7),
(4, 'UMKM : JAMU BERAS KETAN HITAM', '2024-02-27 15:14:30', '<p>Jamu Beras Ketan Hitam Bapak Irawan merupakan minuman kesehatan herbal yang terbuat dari beras ketan hitam yang dipadukan dengan berbagai bahan alami tradisional lainnya. Produk ini diproduksi oleh Bapak Irawan, seorang ahli jamu yang terkenal dengan kualitas produknya yang terjamin dan ramah lingkungan. Jamu Beras Ketan Hitam Bapak Irawan dikemas dalam botol kaca yang aman untuk penggunaan jangka panjang.</p>\r\n\r\n<p>Dengan kandungan nutrisi yang kaya, jamu ini mengandung antioksidan, serat, dan vitamin yang sangat baik untuk menjaga kesehatan tubuh. Penggunaan bahan alami yang berkualitas dan teknik pengolahan yang modern memastikan bahwa kualitas nutrisinya tetap terjaga, menjadikannya pilihan yang tepat untuk menjaga kesehatan tubuh Anda.</p>\r\n\r\n<p>Nikmati manfaat kesehatan alami dan kesegaran rasa dengan Jamu Beras Ketan Hitam Bapak Irawan setiap hari, dan rasakan perbedaan yang luar biasa dalam kesehatan dan kualitas hidup Anda!<br />\r\n<br />\r\nUntuk Pemesanan Hubungi :&nbsp;<strong><a href=\"https://wa.me/6281330738897\">Bapak Irawan</a></strong></p>\r\n', '908a7b10c79b12752101894992cd7b5a.jpeg', 'umkm-jamu-beras-ketan-hitam', 7),
(6, 'UMKM : Madumongso Sewayang', '2024-02-27 15:27:41', '<p>Madumongso Sewayang spesial adalah dodol khas Jawa Timur yang terbuat dari TAPE KETAN HITAM dan TAPE KETAN PUTIH yang dicampur dan diolah bersama gurihnya santan kelapa kental dan legitnya gula jawa dan menghasilkan cita rasa rasa manis, gurih, dan sedikit masam tape.</p>\r\n\r\n<p>Untuk Pemesanan Hubungi:&nbsp;<strong><a href=\"https://wa.me/6285736486999\">Bu Henny</a></strong></p>\r\n', 'b1b62b3ba0d9da3503baa65a936ccf49.jpg', 'umkm-madumongso-sewayang', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `gambar`) VALUES
(1, '494bcc80ece00ab9e650ed39e95f119e.jpeg'),
(2, 'd247693e013c4ae7f1dbc93f5f7fcf35.jpeg'),
(3, 'a8a87e2da4fdaf81edb574fbbe0908eb.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_socmed`
--

CREATE TABLE `tb_socmed` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_socmed`
--

INSERT INTO `tb_socmed` (`id`, `nama`, `url`, `icon`) VALUES
(4, 'Facebook', 'https://www.facebook.com/kelngletih.ngletih.3', 'fa fa-facebook'),
(10, 'Instagram', 'https://www.instagram.com/kelurahan.ngletih_kdr', 'fa fa-instagram');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_statis`
--

CREATE TABLE `tb_statis` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_statis`
--

INSERT INTO `tb_statis` (`id`, `judul`, `isi`, `gambar`) VALUES
(1, 'Sambutan Lurah Ngletih', '<p><strong>Assalammualaikum Wr. Wb</strong></p>\r\n\r\n<p style=\"text-align:justify\">Alhamdulillahhirobbilalamin</p>\r\n\r\n<p style=\"text-align:justify\">DENGAN mengucapkan puji dan syukur kehadirat Allah SWT, kami sampaikan salam hangat bagi warga Kabupaten Purbalingga, khususnya warga Kelurahan Ngletih. Selanjutnya dengan senang hati kami sampaikan informasi kepada Anda untuk mengenal lebih dekat Kelurahan Ngletih melalui situs resmi&nbsp;ini. Situs ini diharapkan akan memberikan informasi mengenai Kelurahan Ngletih Kecamatan Pesantren&nbsp;secara umum tentang pemerintahan, pembangunan dan kemasyarakatan, termasuk didalamnya, khasanah budaya, potensi ekonomi dan pariwisata, yang selalanjutnya dapat digunakan dinas instansi terkait dan stakeholder lainnya dalam rangka pelaksanaan program-progam pembangunan di Kelurahan Ngletih Kecamatan Pesantren untuk meningkatkan kesejahteraan masyarakat.</p>\r\n\r\n<p style=\"text-align:justify\">Jenderal Besar Sudirman pernah berkata &quot;untuk menang, kita harus kuat, untuk kuat kita harus bersatu, agar kita dapat bersatu kita harus memelihara tali silaturrahhim&quot;, untuk itu kami mengingatkan kepada selurah elemen masyarakat, mari kita menjaga persatuan dan kesatuan dengan tetap memelihara tali silaturrahhim demi keberhasilan program-program di Kelurahan Ngletih Kecamatan Pesantren.</p>\r\n\r\n<p style=\"text-align:justify\">Wabillahi Taufik Walhidayah, Wassalammualaikum Wr. Wb.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Ngletih, Januari 2024</p>\r\n\r\n<p style=\"text-align:justify\">LURAH</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>FERRY BOEDIYANTO</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '8a10b6ddabcdc3761f116cf9235ffc15.jpeg'),
(2, 'Visi dan Misi', '<p><strong>VISI</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p><strong>MISI</strong></p>\r\n\r\n<ol>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n</ol>\r\n', 'wkwkwk.com'),
(3, 'Struktur Organisasi', '<p><br />\r\n&nbsp;</p>\r\n', 'wkwkwk.com'),
(4, 'Profil Pegawai1', '', 'wkwkwk.com'),
(5, 'DAFTAR NAMA KETUA RT DAN RW KELURAHAN NGLETIH KECAMATAN PESANTREN MASA BHAKTI TAHUN 2024 - 2029', '<table class=\"table table-striped\">\r\n	<thead>\r\n		<tr>\r\n			<th>NO</th>\r\n			<th>NAMA</th>\r\n			<th>RW / RT</th>\r\n			<th>JABATAN</th>\r\n			<th>NO. HP</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>BAMBANG S.</td>\r\n			<td>RW. 1</td>\r\n			<td>Ketua RW&nbsp;</td>\r\n			<td>080000000000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>ARBAIN ROHMANI</td>\r\n			<td>RT. 01</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>VINDIKA HINAWAN</td>\r\n			<td>RT. 02</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>AGUS BUDIHARTANTO</td>\r\n			<td>RT. 03</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>SUPRI</td>\r\n			<td>RT. 04</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>ADI MULYONO</td>\r\n			<td>RT. 05</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>ANA SANIRI</td>\r\n			<td>RT. 06</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>SUWONDO</td>\r\n			<td>RW. 2</td>\r\n			<td>Ketua RW</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>ACHMAT DJAENAL ABIDIN</td>\r\n			<td>RT. 07</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>TOTOK SUJATMIKO</td>\r\n			<td>RT. 08</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>BONARI</td>\r\n			<td>RT. 09</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>AHMAD FAUZI</td>\r\n			<td>RT. 10</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>AHMAD ISHAK</td>\r\n			<td>RW. 3</td>\r\n			<td>Ketua RW</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>SUHALI</td>\r\n			<td>RT. 11</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>AHMAD BASUKI</td>\r\n			<td>RT. 12</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>ZAENAL AFANDI</td>\r\n			<td>RT. 13</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>SUTIKNO</td>\r\n			<td>RT. 14</td>\r\n			<td>Ketua RT</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'wkwkwk.com'),
(6, 'ALUR KEGIATAN PELAYANAN', '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">ALUR KEGIATAN PELAYANAN</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">KELURAHAN NGLETIH</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">PEMOHON MENDAFTARKAN DIRI PADA MEJA PELAYANAN DI KANTOR KECAMATAN KALIMANAH DENGAN MEMBAWA PERSYARATAN YANG TELAH DITENTUKAN</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">PETUGAS MENCATAT LEGALISASI SURAT PERMOHONAN DAN MENERUSKAN KEPADA PEJABAT YANG BERWENANG. (APABILA PERSYARATAN LENGKAP DITERUSKAN, APABILA PERSYARATAN TIDAK LENGKAP DIKEMBALIKAN KE PEMOHON UNTUK DILENGKAPI</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">PETUGAS MENGAJUKAN BERKAS PEMOHON KEPADA PEJABAT YANG BERWENANG</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">PEJABAT BERWENANG MENELITI DAN MENANDATANGANI BERKAS PERMOHONAN YANG DIAJUKAN UNTUK DIPROSES LEBIH LANJUT</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">PETUGAS MEREGISTRASI PERMOHONAN YANG TELAH DITANDATANGANI, SELANJUTNYA DIPROSES SESUAI DENGAN JENIS PERMOHONAN YANG BERSANGKUTAN.</span></span></li>\r\n</ol>\r\n', 'wkwkwk.com'),
(7, 'Denah Pelayanan', '', 'wkwkwk.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_submenu`
--

CREATE TABLE `tb_submenu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(3) NOT NULL,
  `idmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenkel` enum('L','P') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `status` enum('1','0') DEFAULT '1',
  `level` enum('1','2') DEFAULT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `jenkel`, `username`, `password`, `nohp`, `status`, `level`, `register`, `photo`) VALUES
(6, 'Admin Post', 'adminpost@gmail.com', 'L', 'root', '202cb962ac59075b964b07152d234b70', '123', '1', '1', '2024-02-25 15:17:06', '1a402ff13ed54aa51e9c116cc5ed6361.png'),
(7, 'Admin', 'admin@ngletih.com', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0857455671327', '1', '1', '2024-02-18 13:11:59', 'ddefac236897cedef11fca0db6599241.png'),
(8, 'Admin 2', 'admin2@gmail.com', 'L', 'admin2', 'c84258e9c39059a89ab77d846ddab909', '0', '1', '1', '2024-02-25 12:02:50', '3dcd6b7fa44a6e6e5e378b86fe2ae96d.png');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vw_berita`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vw_berita` (
`id` int(11)
,`judul` varchar(150)
,`isi` text
,`tayang` int(11)
,`slug` varchar(200)
,`gambar` varchar(255)
,`kategori` varchar(30)
,`author` varchar(50)
,`tanggal` varchar(78)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vw_berita`
--
DROP TABLE IF EXISTS `vw_berita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kecm3262`@`localhost` SQL SECURITY DEFINER VIEW `vw_berita`  AS SELECT `tb_berita`.`id` AS `id`, `tb_berita`.`judul` AS `judul`, `tb_berita`.`isi` AS `isi`, `tb_berita`.`tayang` AS `tayang`, `tb_berita`.`slug` AS `slug`, `tb_berita`.`gambar` AS `gambar`, `tb_kategori`.`nama` AS `kategori`, `tb_user`.`nama` AS `author`, date_format(`tb_berita`.`tanggal`,'%d %M %Y %h:%i') AS `tanggal` FROM ((`tb_berita` join `tb_kategori` on(`tb_berita`.`kategoriid` = `tb_kategori`.`id`)) join `tb_user` on(`tb_berita`.`userid` = `tb_user`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_buka`
--
ALTER TABLE `tb_buka`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_files`
--
ALTER TABLE `tb_files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gallery`
--
ALTER TABLE `tb_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_identitas`
--
ALTER TABLE `tb_identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_igfeed`
--
ALTER TABLE `tb_igfeed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_inbox`
--
ALTER TABLE `tb_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jenispelayanan`
--
ALTER TABLE `tb_jenispelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_potensi`
--
ALTER TABLE `tb_potensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_socmed`
--
ALTER TABLE `tb_socmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_statis`
--
ALTER TABLE `tb_statis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_submenu`
--
ALTER TABLE `tb_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_buka`
--
ALTER TABLE `tb_buka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_files`
--
ALTER TABLE `tb_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_gallery`
--
ALTER TABLE `tb_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_identitas`
--
ALTER TABLE `tb_identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_igfeed`
--
ALTER TABLE `tb_igfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_inbox`
--
ALTER TABLE `tb_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_jenispelayanan`
--
ALTER TABLE `tb_jenispelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1253;

--
-- AUTO_INCREMENT untuk tabel `tb_potensi`
--
ALTER TABLE `tb_potensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_socmed`
--
ALTER TABLE `tb_socmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_statis`
--
ALTER TABLE `tb_statis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_submenu`
--
ALTER TABLE `tb_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
