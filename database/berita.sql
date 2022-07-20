-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 04:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `foto`, `web`, `link`, `kategori`) VALUES
(1, 'Ditahan Bareng Putra Siregar, Akun IG Rico Valentino Jadi Tempat Ejekan', 'https://statik.tempo.co/data/2022/04/13/id_1102701/1102701_400.jpg', '0', 'https://seleb.tempo.co/read/1581650/ditahan-bareng-putra-siregar-akun-ig-rico-valentino-jadi-tempat-ejekan\" style=\"background: #eee', 'selebriti'),
(2, 'Lucunya King Faaz Video Call dengan Arsyi Hermansyah untuk Lihat Pakai Hijab', 'https://statik.tempo.co/data/2022/04/13/id_1102673/1102673_400.jpg', '1', 'https://seleb.tempo.co/read/1581650/ditahan-bareng-putra-siregar-akun-ig-rico-valentino-jadi-tempat-ejekan', 'selebriti'),
(3, 'Anak Pertama Ulang Tahun, Emil Dardak  Justru Terima Kasih ke Arumi Bachsin', 'https://statik.tempo.co/data/2022/04/13/id_1102712/1102712_400.jpg', '2', 'https://seleb.tempo.co/read/1581626/lucunya-king-faaz-video-call-dengan-arsyi-hermansyah-untuk-lihat-pakai-hijab\" style=\"background: #eee', 'selebriti'),
(4, 'Siapa yang Harus Mengonsumsi Obat Pengencer Darah?', 'https://statik.tempo.co/data/2021/04/25/id_1016967/1016967_400.jpg', '3', 'https://seleb.tempo.co/read/1581626/lucunya-king-faaz-video-call-dengan-arsyi-hermansyah-untuk-lihat-pakai-hijab', 'kesehatan'),
(5, 'Mengurangi Konsumsi Lemak Jenuh Mencegah Risiko Penyakit Jantung dan Stroke', 'https://statik.tempo.co/data/2018/11/03/id_794381/794381_400.jpg', '4', 'https://seleb.tempo.co/read/1581665/anak-pertama-ulang-tahun-emil-dardakjustru-terima-kasih-ke-arumi-bachsin\" style=\"background: #eee', 'kesehatan'),
(6, 'Waktu Sikat Gigi yang Tepat Selama Ramadan', 'https://statik.tempo.co/data/2017/03/13/id_589462/589462_400.jpg', '5', 'https://seleb.tempo.co/read/1581665/anak-pertama-ulang-tahun-emil-dardakjustru-terima-kasih-ke-arumi-bachsin', 'kesehatan'),
(7, 'Negara-negara Ini Alami Durasi Puasa Terlama di Dunia', 'https://statik.tempo.co/data/2022/03/19/id_1096366/1096366_400.jpg', '6', 'https://gaya.tempo.co/read/1581620/siapa-yang-harus-mengonsumsi-obat-pengencer-darah\" style=\"background: #eee', 'internasional'),
(8, 'Cara Sultan Yogyakarta Tekan Kasus Klitih, Tak Cuma Lewat Jalur Hukum', 'https://statik.tempo.co/data/2022/03/14/id_1094872/1094872_400.jpg', '7', 'https://gaya.tempo.co/read/1581620/siapa-yang-harus-mengonsumsi-obat-pengencer-darah', 'politik'),
(9, 'Libur Lebaran, Yogyakarta Antisipasi Kasus Nuthuk Hingga Oleh-Oleh Tak Layak', 'https://statik.tempo.co/data/2022/02/10/id_1087216/1087216_400.jpg', '8', 'https://gaya.tempo.co/read/1581860/mengurangi-konsumsi-lemak-jenuh-mencegah-risiko-penyakit-jantung-dan-stroke\" style=\"background: #eee', 'politik'),
(10, 'Ada Pintu Masjidil Haram yang Khusus untuk Penyandang Disabilitas', 'https://statik.tempo.co/data/2021/07/18/id_1035921/1035921_400.jpg', '9', 'https://gaya.tempo.co/read/1581860/mengurangi-konsumsi-lemak-jenuh-mencegah-risiko-penyakit-jantung-dan-stroke', 'internasional'),
(11, 'Politeknik Pariwisata Terima Mahasiswa Penyandang Disabilitas', 'https://statik.tempo.co/data/2019/05/13/id_841463/841463_400.jpg', '10', 'https://gaya.tempo.co/read/1581752/waktu-sikat-gigi-yang-tepat-selama-ramadan\" style=\"background: #eee', 'pendidikan'),
(12, 'Komedian Ricky Gervais Sindir Lelucon Chris Rock Soal Istri Will Smith', 'https://statik.tempo.co/data/2022/03/28/id_1098596/1098596_400.jpg', '11', 'https://gaya.tempo.co/read/1581752/waktu-sikat-gigi-yang-tepat-selama-ramadan', 'selebriti'),
(13, 'Jadwal Imsakiyah dan Buka Puasa Ramadan 1443H atau 2022M Versi Pemerintah', 'https://statik.tempo.co/data/2022/04/04/id_1100540/1100540_400.jpg', '12', 'https://travel.tempo.co/read/1581541/negara-negara-ini-alami-durasi-puasa-terlama-di-dunia\" style=\"background: #eee', 'religi'),
(14, 'Harga Pertamax Naik Mulai April 2022', 'https://statik.tempo.co/data/2022/04/01/id_1099696/1099696_400.jpg', '13', 'https://travel.tempo.co/read/1581541/negara-negara-ini-alami-durasi-puasa-terlama-di-dunia', 'ekonomi'),
(15, 'Fakta-Fakta Pemecatan Terawan Agus Putranto oleh IDI', 'https://statik.tempo.co/data/2022/03/30/id_1099282/1099282_400.jpg', '14', 'https://travel.tempo.co/read/1581547/cara-sultan-yogyakarta-tekan-kasus-klitih-tak-cuma-lewat-jalur-hukum\" style=\"background: #eee', 'kesehatan'),
(16, 'Pria Cenderung Habiskan Budget Lebih Banyak Dibanding Perempuan di Bulan Ramadan', 'https://statik.tempo.co/data/2022/04/13/id_1102796/1102796_400.jpg', '15', 'https://travel.tempo.co/read/1581547/cara-sultan-yogyakarta-tekan-kasus-klitih-tak-cuma-lewat-jalur-hukum', 'religi'),
(17, 'Kenaikan Dana Pemilu 2024 Tertinggi Dibanding Pemilu Sebelumnya', 'https://statik.tempo.co/data/2022/04/12/id_1102547/1102547_400.jpg', '16', 'https://travel.tempo.co/read/1581830/libur-lebaran-yogyakarta-antisipasi-kasus-nuthuk-hingga-oleh-oleh-tak-layak\" style=\"background: #eee', 'politik'),
(18, 'Perkembangan Covid-19 Indonesia: Jumlah Kasus Harian, Kasus Aktif, dan Kematian Terus Menurun', 'https://statik.tempo.co/data/2022/04/11/id_1102244/1102244_400.jpg', '17', 'https://travel.tempo.co/read/1581830/libur-lebaran-yogyakarta-antisipasi-kasus-nuthuk-hingga-oleh-oleh-tak-layak', 'kesehatan'),
(19, 'Anggota KPU dan Bawaslu Terpilih Bertemu DPR', 'https://statik.tempo.co/data/2022/03/14/id_1095039/1095039_400.jpg', '18', 'https://difabel.tempo.co/read/1580772/ada-pintu-masjidil-haram-yang-khusus-untuk-penyandang-disabilitas\" style=\"background: #eee', 'politik'),
(20, 'Inisiatif BAKTI di Program Merdeka Sinyal 2024', 'https://statik.tempo.co/data/2022/03/19/id_1096411/1096411_400.jpg', '19', 'https://difabel.tempo.co/read/1580772/ada-pintu-masjidil-haram-yang-khusus-untuk-penyandang-disabilitas', 'pendidikan'),
(21, 'Enesis Dukung Prokes MotoGP Mandalika 2022', 'https://statik.tempo.co/data/2022/03/21/id_1096949/1096949_400.jpg', '20', 'https://difabel.tempo.co/read/1580389/politeknik-pariwisata-terima-mahasiswa-penyandang-disabilitas\" style=\"background: #eee', 'politik'),
(22, 'Menyesatkan, Rusia Membantu Indonesia saat akan Diserang Australia pada 2015', 'https://statik.tempo.co/data/2022/03/17/id_1095907/1095907_400.jpg', '21', 'https://difabel.tempo.co/read/1580389/politeknik-pariwisata-terima-mahasiswa-penyandang-disabilitas', 'internasional'),
(23, 'Keliru, Sniper Kanada Bernama Wali Tewas Hanya 20 Menit di Tangan Pasukan Khusus Rusia', 'https://statik.tempo.co/data/2022/03/28/id_1098664/1098664_400.jpg', '22', 'https://difabel.tempo.co/read/1581290/komedian-ricky-gervais-sindir-lelucon-chris-rock-soal-istri-will-smith\" style=\"background: #eee', 'internasional'),
(24, 'Keliru, Video Presiden Putin Mendadak Memeluk Agama Islam', 'https://statik.tempo.co/data/2022/03/16/id_1095619/1095619_400.jpg', '23', 'https://difabel.tempo.co/read/1581290/komedian-ricky-gervais-sindir-lelucon-chris-rock-soal-istri-will-smith', 'internasional'),
(25, 'Grand Opening Joylive BSD City', 'https://statik.tempo.co/data/2022/03/13/id_1094831/1094831_400.jpg', '24', 'https://grafis.tempo.co/read/2972/jadwal-imsakiyah-dan-buka-puasa-ramadan-1443h-atau-2022m-versi-pemerintah\" style=\"background: #eee', 'ekonomi'),
(176, 'NYC Lounge & Bar Hadir Kembali di Manhattan Hotel Jakarta', 'https://statik.tempo.co/data/2022/03/14/id_1094838/1094838_400.jpg', '25', 'https://grafis.tempo.co/read/2972/jadwal-imsakiyah-dan-buka-puasa-ramadan-1443h-atau-2022m-versi-pemerintah', ''),
(177, 'Kreavi Challenge Ajak Kreator Wujudkan Wajah Baru Tempo.co', 'https://statik.tempo.co/data/2022/03/15/id_1095337/1095337_400.jpg', '26', 'https://grafis.tempo.co/read/2969/harga-pertamax-naik-mulai-april-2022\" style=\"background: #eee', ''),
(178, 'Atletico vs Manchester City: Guardiola Kaget Dengar Putusan Fernandinho', 'https://www.tempo.co/images/ads-premium-head-2.jpg\">\r\n    				</a>\r\n    			</div>\r\n				-->\r\n    		</div>\r\n    	</div>\r\n    	<!-- end top banner -->\r\n\r\n\r\n      <!-- <script type=\"text/javascript\">\r\n      $(\'input#tanggal\').on(\'change\', function(e) {\r\n     ', '27', 'https://grafis.tempo.co/read/2969/harga-pertamax-naik-mulai-april-2022', ''),
(179, 'Hasil Liga Champions: Liverpool dan Manchester City Lolos ke Semifinal', 'https://statik.tempo.co/data/2022/04/06/id_1100848/1100848_400.jpg', '28', 'https://grafis.tempo.co/read/2967/fakta-fakta-pemecatan-terawan-agus-putranto-oleh-idi\" style=\"background: #eee', ''),
(180, 'Prediksi Michael Owen untuk Liverpool vs Benfica dan Atletico Madrid vs Man City', 'https://statik.tempo.co/data/2022/04/06/id_1100848/1100848_400.jpg', '29', 'https://grafis.tempo.co/read/2967/fakta-fakta-pemecatan-terawan-agus-putranto-oleh-idi', ''),
(181, 'Liga Champions: Babak Perempat Final Tuntas, Simak Jadwal Semifinal', 'https://statik.tempo.co/data/2021/08/17/id_1043600/1043600_400.jpg', '30', 'https://data.tempo.co/data/1393/pria-cenderung-habiskan-budget-lebih-banyak-dibanding-perempuan-di-bulan-ramadan\" style=\"background: #eee', ''),
(182, 'Carlo Ancelotti Samai Rekor Pep Guardiola dan Jose Mourinho di Liga Champions', 'https://statik.tempo.co/data/2022/04/13/id_1102601/1102601_400.jpg', '31', 'https://data.tempo.co/data/1393/pria-cenderung-habiskan-budget-lebih-banyak-dibanding-perempuan-di-bulan-ramadan', ''),
(183, 'Ini 4 Kiper Terbaik yang Pernah Dihadapi Penyerang Liverpool, Mohamed Salah', 'https://statik.tempo.co/data/2022/04/07/id_1101089/1101089_720.jpg', '32', 'https://data.tempo.co/data/1392/kenaikan-dana-pemilu-2024-tertinggi-dibanding-pemilu-sebelumnya\" style=\"background: #eee', ''),
(184, 'Erik ten Hag Disebut ke Manchester United, Bagaimana Nasib Cristiano Ronaldo?', 'https://statik.tempo.co/data/2022/04/11/id_1102158/1102158_400.jpg', '33', 'https://data.tempo.co/data/1392/kenaikan-dana-pemilu-2024-tertinggi-dibanding-pemilu-sebelumnya', ''),
(185, 'Ralf Rangnick Diminta Bawa Manchester United ke Kompetisi Eropa', 'https://statik.tempo.co/data/2022/04/11/id_1102085/1102085_400.jpg', '34', 'https://data.tempo.co/data/1391/perkembangan-covid-19-indonesia-jumlah-kasus-harian-kasus-aktif-dan-kematian-terus-menurun\" style=\"background: #eee', ''),
(186, 'Erik ten Hag Bakal Jadi Pelatih Manchester United, Ini Profilnya', 'https://statik.tempo.co/data/2022/04/10/id_1102025/1102025_400.jpg', '35', 'https://data.tempo.co/data/1391/perkembangan-covid-19-indonesia-jumlah-kasus-harian-kasus-aktif-dan-kematian-terus-menurun', ''),
(187, 'Manchester United dan Erik ten Hag Dilaporkan sudah Capai Kesepakatan', 'https://statik.tempo.co/data/2022/04/08/id_1101348/1101348_400.jpg', '36', 'https://inforial.tempo.co/read/1006383/anggota-kpu-dan-bawaslu-terpilih-bertemu-dpr\" style=\"background: #eee', ''),
(188, 'Klasemen Liga Inggris Pekan 32: Man City vs Liverpool 2-2, Leicester Menang', 'https://statik.tempo.co/data/2021/04/25/id_1017017/1017017_400.jpg', '37', 'https://inforial.tempo.co/read/1006383/anggota-kpu-dan-bawaslu-terpilih-bertemu-dpr', ''),
(189, 'Manchester City vs Liverpool Imbang, Ini Kata Pep Guardiola dan Jurgen Klopp', 'https://statik.tempo.co/data/2022/04/13/id_1102792/1102792_400.jpg', '38', 'https://inforial.tempo.co/read/1006408/inisiatif-bakti-di-program-merdeka-sinyal-2024\" style=\"background: #eee', ''),
(190, 'Manchester City vs Liverpool Berakhir Imbang 2-2', 'https://statik.tempo.co/data/2022/04/06/id_1100843/1100843_400.jpg', '39', 'https://inforial.tempo.co/read/1006408/inisiatif-bakti-di-program-merdeka-sinyal-2024', ''),
(191, 'Stefano Pioli Sebut 3 Tim Papan Atas Bukan Favorit Juara Liga Italia', 'https://statik.tempo.co/data/2022/04/13/id_1102629/1102629_400.jpg', '40', 'https://inforial.tempo.co/read/1006414/enesis-dukung-prokes-motogp-mandalika-2022\" style=\"background: #eee', ''),
(192, 'Klasemen Liga Italia Pekan 32: Torino vs AC Milan 0-0, Napoli Keok', 'https://statik.tempo.co/data/2021/06/02/id_1025075/1025075_400.jpg', '41', 'https://inforial.tempo.co/read/1006414/enesis-dukung-prokes-motogp-mandalika-2022', ''),
(193, 'Hasil Serie A: AS Roma Kalahkan Salernitana 2-1, Chris Smalling Jadi Penentu', 'https://statik.tempo.co/data/2022/03/12/id_1094663/1094663_400.jpg', '42', 'https://cekfakta.tempo.co/fakta/1676/menyesatkan-rusia-membantu-indonesia-saat-akan-diserang-australia-pada-2015\" style=\"background: #eee', ''),
(194, 'Klasemen Liga Italia Pekan 32: Inter vs Verona 2-0, Cagliari vs Juventus 1-2', 'https://statik.tempo.co/data/2022/04/10/id_1101896/1101896_400.jpg', '43', 'https://cekfakta.tempo.co/fakta/1676/menyesatkan-rusia-membantu-indonesia-saat-akan-diserang-australia-pada-2015', ''),
(195, 'Liga Italia Pekan Ke-32 Sabtu Malam Ini: Prediksi Cagliari vs Juventus', 'https://statik.tempo.co/data/2021/12/06/id_1071628/1071628_400.jpg', '44', 'https://cekfakta.tempo.co/fakta/1682/keliru-sniper-kanada-bernama-wali-tewas-hanya-20-menit-di-tangan-pasukan-khusus-rusia\" style=\"background: #eee', ''),
(196, 'Xavi Hernandez Tegaskan Barcelona Tak Bergantung pada Pedri', 'https://statik.tempo.co/data/2019/04/17/id_834921/834921_400.jpg', '45', 'https://cekfakta.tempo.co/fakta/1682/keliru-sniper-kanada-bernama-wali-tewas-hanya-20-menit-di-tangan-pasukan-khusus-rusia', ''),
(197, 'Klasemen Liga Spanyol Pekan 31: Posisi 2, Adakah Peluang Barcelona Kejar Madrid?', 'https://statik.tempo.co/data/2022/04/13/id_1102653/1102653_400.jpg', '46', 'https://cekfakta.tempo.co/fakta/1675/keliru-video-presiden-putin-mendadak-memeluk-agama-islam\" style=\"background: #eee', ''),
(198, 'Levante vs Barcelona 2-3, Gol Luuk de Jong Jadi Penentu', 'https://statik.tempo.co/data/2022/04/10/id_1102063/1102063_400.jpg', '47', 'https://cekfakta.tempo.co/fakta/1675/keliru-video-presiden-putin-mendadak-memeluk-agama-islam', ''),
(199, 'Levante vs Barcelona Malam Ini, Memphis Depay dan Gerard Pique Absen', 'https://statik.tempo.co/data/2022/04/10/id_1102064/1102064_400.jpg', '48', 'https://event.tempo.co/read/1570451/grand-opening-joylive-bsd-city\" style=\"background: #eee', ''),
(200, 'Xavi Hernandez Yakin Ansu Fati akan Main Lagi untuk Barcelona Musim Ini', 'https://statik.tempo.co/data/2022/04/10/id_1102063/1102063_400.jpg', '49', 'https://event.tempo.co/read/1570451/grand-opening-joylive-bsd-city', ''),
(201, 'Kemnaker Harap Anggota G20 Dukung Empat Isu Prioritas  t t t t t t t t', 'https://statik.tempo.co/data/2019/10/10/id_879372/879372_400.jpg', '50', 'https://event.tempo.co/read/1570456/nyc-lounge-bar-hadir-kembali-di-manhattan-hotel-jakarta\" style=\"background: #eee', ''),
(202, 'Investasi Cina Meningkat, Airlangga: Nilai Perdagangan Capai USD100 Miliar t t t t t t t t', 'https://statik.tempo.co/data/2020/10/18/id_974617/974617_400.jpg', '51', 'https://event.tempo.co/read/1570456/nyc-lounge-bar-hadir-kembali-di-manhattan-hotel-jakarta', ''),
(203, 'Menteri Luar Negeri Kanada Minta Indonesia Tak Undang Putin di G20 t t t t t t t t', 'https://statik.tempo.co/data/2022/04/11/id_1102079/1102079_400.jpg', '52', 'https://event.tempo.co/read/1571111/kreavi-challenge-ajak-kreator-wujudkan-wajah-baru-tempo-co\" style=\"background: #eee', ''),
(204, 'Manchester City Lolos ke Semifinal usai Tahan Imbang Atletico Madrid', 'https://statik.tempo.co/data/2020/10/18/id_974617/974617_400.jpg', '53', 'https://event.tempo.co/read/1571111/kreavi-challenge-ajak-kreator-wujudkan-wajah-baru-tempo-co', ''),
(205, 'Imbang, Liverpool Tetap Lolos ke Semifinal Liga Champions', 'https://statik.tempo.co/data/2022/03/03/id_1092198/1092198_400.jpg', '54', 'javascript:document.getElementById(\'text\').submit();', ''),
(206, 'Laga Indonesia Vs Barcelona Berakhir Imbang Tanpa Gol', 'https://statik.tempo.co/data/2021/12/13/id_1073441/1073441_400.jpg', '55', 'https://bola.tempo.co/read/1581648/atletico-vs-manchester-city-guardiola-kaget-dengar-putusan-fernandinho\" style=\"background: #eee', ''),
(207, 'Laga Pembuka IYC: Atletico Madrid U-18 Menang Telak Atas Bali United', 'https://statik.tempo.co/data/2022/04/11/id_1102085/1102085_400.jpg', '56', 'https://bola.tempo.co/read/1581648/atletico-vs-manchester-city-guardiola-kaget-dengar-putusan-fernandinho', ''),
(208, 'Menang Agregat 5-4 Atas Chelsea, Real Madrid Lolos Semifinal Liga Champions', 'https://statik.tempo.co/data/2022/04/11/id_1102084/1102084_400.jpg', '57', 'https://bola.tempo.co/read/1581648/atletico-vs-manchester-city-guardiola-kaget-dengar-putusan-fernandinho', ''),
(209, 'Kegembiraan Villarreal Setelah Singkirkan Bayern Munchen di Liga Champions', 'https://statik.tempo.co/data/2022/03/11/id_1094172/1094172_400.jpg', '58', 'https://bola.tempo.co/read/1581648/atletico-vs-manchester-city-guardiola-kaget-dengar-putusan-fernandinho', ''),
(210, 'Intip Latihan Timnas U-23 Jelang SEA Games 2022', 'https://statik.tempo.co/data/2021/11/03/id_1063462/1063462_400.jpg', '59', 'https://bola.tempo.co/read/1581897/hasil-liga-champions-liverpool-dan-manchester-city-lolos-ke-semifinal\" style=\"background: #eee', ''),
(211, 'Atletico Madrid U-18 Tiba di Indonesia untuk Ikuti IYC 2021', 'https://statik.tempo.co/data/2022/04/08/id_1101374/1101374_400.jpg', '60', 'https://bola.tempo.co/read/1581897/hasil-liga-champions-liverpool-dan-manchester-city-lolos-ke-semifinal', ''),
(212, 'Barcelona Menang Dramatis 3-2 atas Levante', 'https://statik.tempo.co/data/2021/12/13/id_1073441/1073441_400.jpg', '61', 'https://bola.tempo.co/read/1581897/hasil-liga-champions-liverpool-dan-manchester-city-lolos-ke-semifinal', ''),
(213, 'Manchester City vs Liverpool Berakhir Imbang 2-2', 'https://statik.tempo.co/data/2022/04/08/id_1101377/1101377_400.jpg', '62', 'https://bola.tempo.co/read/1581700/prediksi-michael-owen-untuk-liverpool-vs-benfica-dan-atletico-madrid-vs-man-city\" style=\"background: #eee', ''),
(214, 'Liga Champions: Liverpool Hadapi Villarreal di Semifinal, Apa Kata Klopp?', 'https://statik.tempo.co/data/2022/01/14/id_1080767/1080767_400.jpg', '63', 'https://bola.tempo.co/read/1581700/prediksi-michael-owen-untuk-liverpool-vs-benfica-dan-atletico-madrid-vs-man-city', ''),
(215, 'Liga Champions: Man City Singkirkan Atletico, Simak Kata Guardiola dan Simeone', 'https://statik.tempo.co/data/2021/05/06/id_1019668/1019668_400.jpg', '64', 'https://bola.tempo.co/read/1581700/prediksi-michael-owen-untuk-liverpool-vs-benfica-dan-atletico-madrid-vs-man-city', ''),
(216, 'Liga Champions: Babak Perempat Final Tuntas, Simak Jadwal Semifinal', 'https://statik.tempo.co/data/2021/09/23/id_1053272/1053272_400.jpg', '65', 'https://bola.tempo.co/read/1581901/liga-champions-babak-perempat-final-tuntas-simak-jadwal-semifinal\" style=\"background: #eee', ''),
(217, 'Hasil Liga Champions: Liverpool dan Manchester City Lolos ke Semifinal', 'https://statik.tempo.co/data/2022/04/13/id_1102629/1102629_400.jpg', '66', 'https://bola.tempo.co/read/1581901/liga-champions-babak-perempat-final-tuntas-simak-jadwal-semifinal', ''),
(218, 'Carlo Ancelotti Samai Rekor Pep Guardiola dan Jose Mourinho di Liga Champions', 'https://statik.tempo.co/data/2022/04/13/id_1102792/1102792_400.jpg', '67', 'https://bola.tempo.co/read/1581901/liga-champions-babak-perempat-final-tuntas-simak-jadwal-semifinal', ''),
(219, 'Hasil Liga Champions: Ditekuk Chelsea 3-2, Real Madrid Tetap Lolos ke Semifinal', 'https://statik.tempo.co/data/2021/06/02/id_1025075/1025075_400.jpg', '68', 'https://bola.tempo.co/read/1581873/carlo-ancelotti-samai-rekor-pep-guardiola-dan-jose-mourinho-di-liga-champions\" style=\"background: #eee', ''),
(220, 'Hasil Liga Champions: Hattrick Benzema Bungkam Chelsea Dikandang Sendiri', 'https://statik.tempo.co/data/2022/03/12/id_1094663/1094663_400.jpg', '69', 'https://bola.tempo.co/read/1581873/carlo-ancelotti-samai-rekor-pep-guardiola-dan-jose-mourinho-di-liga-champions', ''),
(221, 'Hasil Liga Champions: Manchester City Sukses Kalahkan Atletico Madrid', 'https://statik.tempo.co/data/2022/04/13/id_1102752/1102752_400.jpg\">\r\n							</a>\r\n							<a class=\"col\" href=\"https://nasional.tempo.co/read/1581795/kemnaker-harap-anggota-g20-dukung-empat-isu-prioritas\">\r\n								<h2 class=\"title\">Kemnaker Harap Anggota', '70', 'https://bola.tempo.co/read/1581873/carlo-ancelotti-samai-rekor-pep-guardiola-dan-jose-mourinho-di-liga-champions', ''),
(222, 'Kontrak Bambang Pamungkas Sebagai Official Persija Tak Diperpanjang', 'https://statik.tempo.co/data/2022/04/14/id_1102855/1102855_400.jpg', '71', 'https://bola.tempo.co/read/1581865/ini-4-kiper-terbaik-yang-pernah-dihadapi-penyerang-liverpool-mohamed-salah\" style=\"background: #eee', ''),
(223, '4 Berita Bursa Transfer Pemain Liga 1: Persib, Bhayangkara FC, PSM, Persikabo', 'https://statik.tempo.co/data/2022/04/14/id_1102836/1102836_400.jpg', '72', 'https://bola.tempo.co/read/1581865/ini-4-kiper-terbaik-yang-pernah-dihadapi-penyerang-liverpool-mohamed-salah', ''),
(224, 'Persija Jakarta Perpanjang Kontrak 2 Pemain Senior', 'https://statik.tempo.co/data/2022/04/13/id_1102760/1102760_400.jpg', '73', 'https://bola.tempo.co/read/1581865/ini-4-kiper-terbaik-yang-pernah-dihadapi-penyerang-liverpool-mohamed-salah', ''),
(225, 'Kabar Terbaru Bursa Transfer Liga 1, Persib Bandung Dapatkan Ciro Alves', 'https://statik.tempo.co/data/2022/04/13/id_1102627/1102627_400.jpg', '74', 'https://bola.tempo.co/read/1581758/erik-ten-hag-disebut-ke-manchester-united-bagaimana-nasib-cristiano-ronaldo\" style=\"background: #eee', ''),
(226, 'Hasil Bola IYC: Atletico Madrid U-18 Kalahkan Bali United U-18, Skor 5-0', 'https://statik.tempo.co/data/2022/04/13/id_1102621/1102621_400.jpg', '75', 'https://bola.tempo.co/read/1581758/erik-ten-hag-disebut-ke-manchester-united-bagaimana-nasib-cristiano-ronaldo', ''),
(227, 'Lawan Barcelona, Pelatih Eintracht Frankfurt Jadikan Villarreal Sebagai Rujukan', 'https://statik.tempo.co/data/2022/04/12/id_1102537/1102537_400.jpg', '76', 'https://bola.tempo.co/read/1581758/erik-ten-hag-disebut-ke-manchester-united-bagaimana-nasib-cristiano-ronaldo', ''),
(228, 'Barcelona vs Eintracht Frankfurt, Xavi Waspadai Transisi Serangan Lawan', 'https://statik.tempo.co/data/2022/04/12/id_1102394/1102394_400.jpg', '77', 'https://bola.tempo.co/read/1581731/ralf-rangnick-diminta-bawa-manchester-united-ke-kompetisi-eropa\" style=\"background: #eee', ''),
(229, 'Prediksi Barcelona vs Eintracht Frankfurt di Leg 2 Liga Europa Jumat Dinihari', 'https://statik.tempo.co/data/2022/04/11/id_1102103/1102103_400.jpg', '78', 'https://bola.tempo.co/read/1581731/ralf-rangnick-diminta-bawa-manchester-united-ke-kompetisi-eropa', ''),
(230, 'Bermain di Piala AFC, Ini Jadwal Lengkap Bali United', 'https://statik.tempo.co/data/2022/04/11/id_1102095/1102095_400.jpg', '79', 'https://bola.tempo.co/read/1581731/ralf-rangnick-diminta-bawa-manchester-united-ke-kompetisi-eropa', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
