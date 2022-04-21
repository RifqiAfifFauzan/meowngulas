-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 07:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meowngulas`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `nama_genre`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Romance', 'romance', '2022-04-12 08:24:24', '2022-04-12 08:24:24'),
(3, 'Sci-Fi', 'sci-fi', '2022-04-12 05:31:09', '2022-04-12 21:11:30'),
(5, 'Thriller', 'thriller', '2022-04-13 00:34:57', '2022-04-13 00:34:57'),
(6, 'Fantasy', 'fantasy', '2022-04-13 01:45:54', '2022-04-13 01:45:54'),
(9, 'Animation', 'animation', '2022-04-20 05:07:05', '2022-04-20 05:07:05'),
(10, 'Action', 'action', '2022-04-20 05:07:10', '2022-04-20 05:07:10'),
(11, 'Comedy', 'comedy', '2022-04-20 05:07:15', '2022-04-20 05:07:15'),
(12, 'Adventure', 'adventure', '2022-04-20 05:07:21', '2022-04-20 05:07:21'),
(13, 'Superhero', 'superhero', '2022-04-20 05:11:13', '2022-04-20 05:11:13'),
(14, 'Mystery', 'mystery', '2022-04-20 06:05:27', '2022-04-20 06:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_12_082205_create_genres_table', 2),
(6, '2022_04_12_132123_create_news_table', 3),
(7, '2022_04_13_045513_create_playlists_table', 4),
(8, '2022_04_13_050608_create_slides_table', 5),
(9, '2022_04_14_050542_change_news_table_name', 6),
(10, '2022_04_20_040455_create_news_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gambar_news` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `slug`, `body`, `user_id`, `gambar_news`, `is_active`, `views`, `created_at`, `updated_at`) VALUES
(2, 'Ada Dinosaurus Baru di ‘Jurassic World Dominion’!', 'ada-dinosaurus-baru-di-jurassic-world-dominion', '<p>Berbeda dari beberapa film sebelumnya, &lsquo;<a href=\"https://cineverse.id/?s=jurassic+world+dominion\" target=\"_blank\">Jurassic World Dominion</a>&rsquo; memiliki waktu tayang yang lebih lama yaitu 2 jam 26 menit. Namun, sepertinya hal ini bukan menjadi masalah besar bagi para penggemar yang sangat menyukai cerita petualangan dan dinosaurus. Apalagi, dalam gambar terbaru yang dibagikan Empire, terlihat seekor dinosaurus baru yang berukuran cukup besar.&nbsp;Dalam gambar tersebut, Giganotosaurus, atau pendeknya, Giga, menjadi ancaman baru bagi para karakter. Giga memang terdengar seperti salah satu dinosaurus hibrida trilogi baru seperti Indominus Rex, ternyata Giga berasal dari tempat yang nyata. Giga adalah salah satu dinosaurus raksasa yang didokumentasikan secara ilmiah pada periode Cretaceous akhir.</p>\r\n\r\n<p>Giga bukanlah dino yang ramah. Dalam gambar yang dibagikan, terlihat dinosaurus yang menyerupai Giga berada disisi lain dari sebuah Jeep kuning terbalik. Disisi satunya, terdapat para pemain yang bersembunyi. Suasananya terasa menegangkan dengan visual Giganotosaurus yang mengintimidasi, jangan coba-coba mempermainkannya!</p>\r\n\r\n<p>Dilansir dari Collider, Empire juga menjelaskan bahwa rumah Giga berada di BioSyn Valley yang merupakan nama dari perusahaan InGen di Jurassic Park yang asli.</p>\r\n\r\n<p>Colin Trevorrow, sebagai sutradara film ini menjelaskan bahwa BioSyn mendapat kontrak untuk menampung dinosaurus yang telah ditangkap di seluruh dunia melalui berbagai pemerintah.</p>\r\n\r\n<p>Mereka mengklaim itu adalah fasilitas penelitian di mana mereka dapat mempelajari nilai-nilai farmasi hewan. Tapi ada beberapa hal lain yang terjadi.</p>\r\n\r\n<p>Seorang pemain baru dalam film ini, Mamoudou Athie, akan memerankan Ramsay Cole yang merupakan karyawan BioSyn. Trevorrow menyebutnya &ldquo;pemuda yang ambisius dan berpikiran maju&rdquo;.</p>\r\n\r\n<p>Detail karakternya belum dipastikan akan seperti apa, bisa saja menjadi penjahat atau penolong. Dan ini menjadi informasi paling spesifik yang baru diketahui.&nbsp;Bagaimanapun konflik yang akan terjadi di film ini, &lsquo;Jurassic World Dominion&rsquo; akan menjadi film yang berbeda dari film sebelumnya.&nbsp;</p>\r\n\r\n<p>Dari trailernya, kita bisa melihat bagaimana para manusia berhadapan langsung dengan dinosaurus besar didepan mata. Kejar-mengejar menggunakan kendaraan darat, bahkan serangan saat di udara pun akan menambah ketegangan dari cerita yang ditampilkan pada film ini. Terutama dengan kembalinya BioSyn, film ini akan membawa hal-hal menjadi utuh.&nbsp;</p>\r\n\r\n<p>Dibintangi oleh Goldblum, Neill, Chris Pratt, Bryce Dallas Howard, Laura Dern, Jake Johnson, Omar Sy, Daniella Pineda, Justice Smith, Mamoudou Athie, Isabella Sermon, BD Wong, DeWanda Wise, Dichen Lachman, Scott Haze, dan Campbell Scott.&nbsp;</p>\r\n\r\n<p>Mengingat hadirnya Giganotosaurus yang berukuran raksasa, serta menjadi film dengan durasi tayang yang panjang, membuat &lsquo;Jurassic World Dominion&rsquo; menjadi penutup dan kesimpulan yang akan besar bagi&nbsp;<em>franchise</em>&nbsp;ini.&nbsp;</p>', 1, 'news/I6r68TqnyKQg5RizNu946FqMQllROFYTR6r7Jqlv.jpg', 1, 0, '2022-04-19 21:43:28', '2022-04-20 06:15:02'),
(3, 'Semua Hal Ini Muncul di Teaser ‘Thor: Love and Thunder\'', 'semua-hal-ini-muncul-di-teaser-thor-love-and-thunder', '<p>Menjelang tanggal rilis &lsquo;Thor: Love and Thunder&rsquo; Juli 2022, Marvel Studios akhirnya&nbsp;merilis teaser pertama &lsquo;Thor: Love and Thunder&rsquo;, film Thor keempat di Marvel Cinematic Universe yang akan melihat kembalinya Chris Hemsworth sebagai dewa petir.</p>\r\n\r\n<p>Dengan durasi satu setengah menit, Marvel masih menutupi banyak rahasia tentang film ini. Namun, masih ada banyak detail cerita, pengungkapan karakter, dan&nbsp;<em>easter eggs</em>&nbsp;yang disertakan dalam teasernya.</p>\r\n\r\n<p>Di awal teaser, &lsquo;Love and Thunder&rsquo; menyoroti keputuasaan Thor yang berniat untuk pensiun sebagai pahlawan.&nbsp;Dia mengklaim bahwa hari-harinya sebagai pahlawan super telah berakhir. Thor kemudiam ditampilkan menancapkan Stormbreaker ke tanah, dan berangkat dengan Korg melintasi galaksi untuk mencari kedamaian batin.</p>\r\n\r\n<p>Mengambil peristiwa setelah&nbsp;&nbsp;&lsquo;Avengers: Endgame&rsquo;, dialognya juga mengatakan,&nbsp;&ldquo;Tangan-tangan ini pernah digunakan untuk pertempuran, sekarang mereka hanyalah alat sederhana untuk perdamaian&rdquo;. Dia juga melanjutkan,&nbsp;&ldquo;hari pahlawan supernya sudah berakhir,&rdquo;&nbsp;menandakan jalan baru yang dia jalani setelah peristiwa &lsquo;Endgame&rsquo;.</p>\r\n\r\n<p>Tapi pensiunnya terganggu oleh pembunuh galaksi yang dikenal sebagai Gorr the God Butcher (Christian Bale), yang mengincar kepunahan para dewa.</p>\r\n\r\n<p>Untuk memerangi ancaman itu, Thor meminta bantuan King Valkyrie, Korg, dan mantan pacarnya, Jane Foster. Bersama-sama, mereka memulai petualangan kosmik yang mengerikan untuk mengungkap misteri pembalasan Gorr the God Butcher dan menghentikannya sebelum terlambat.</p>\r\n\r\n<p>Penampilan Thor yang lebih gemuk muncul lagi dalam teaser terbarunya. Penampilannya itu dikarenakan dia menyalahkan dirinya sendiri atas jentikan Thanos dan tidak mengambil alih sebagai kepala di Wakanda.</p>\r\n\r\n<p>&lsquo;Avengers: Endgame&rsquo;&nbsp;membuktikan kepada Thor bahwa dia masih layak meskipun kesalahan itu dan penampilannya. Sekarang, Thor siap untuk kembali bugar.&nbsp;&lsquo;Thor: Love and Thunder&rsquo;&nbsp;menampilkan Thor yang sedang berlatih mengurangi berat badannya dan kembali menjadi sehat seperti penampilan sebelumnya.&nbsp;</p>\r\n\r\n<p>The Guardians of the Galaxy dan Thor terlihat bekerja sama untuk berbagai petualangan di sepanjang teaser &lsquo;Thor: Love and Thunder&rsquo;<em>.&nbsp;</em>Melalui kilasan sekilas dari petualangan ini, Thor tidak mendengarkan perintah Star-Lord&nbsp;(Chris Pratt) dan lebih memilih mencari jalannya sendiri yang membuatnya memutarkan mata.&nbsp;</p>\r\n\r\n<p>Interaksi antara Thor dan Guardians of the Galaxy menggoda adegan-adegan lucu yang akan kita saksikan lebih banyak di filmnya nanti.</p>\r\n\r\n<p>Setelah berpisah dengan The Guardians of the Galaxy, Thor dan Korg ditinggalkan di sebuah planet yang kacau dan penuh dengan sampah, yang mungkin merupakan&nbsp;Sakaar, dunia pertarungan yang dijalankan oleh Grandmaster (Jeff Goldblum) di&nbsp; &lsquo;Thor: Ragnarok&rsquo;.</p>\r\n\r\n<p>Thor dan Korg bisa kembali ke tempat mereka pertama kali bertemu untuk membantu membawa perdamaian ke planet ini atau mendapatkan beberapa informasi dari Grandmaster.</p>\r\n\r\n<p>Kambing Thor,&nbsp;Toothgnasher dan Toothgrinder,&nbsp;diperkenalkan dalam komik pada tahun 1976 saat mereka menarik kereta dewa guntur. Dalam teasernya, mereka terlihat menarik sebuah kapal Asgardian di udara saat meninggalkan New Asgard.</p>\r\n\r\n<p>Setelah sebelumnya terungkap dalam mainan dan materi pemasaran lainnya, teaser tersebut menampilkan tampilan kostum baru yang dipakai Thor untuk &lsquo;Thor: Love and Thunder&rsquo;<em>.&nbsp;</em>Penonton akhirnya dapat melihat<em>&nbsp;s</em>etelan berwarna merah, biru, dan emas yang dipakai Chris Hemsworth pertama kali di teasernya.</p>\r\n\r\n<p>Pada akhir teasernya, penggemar mendapatkan tampilan pertama dari Natalie Portman sebagai Mighty Thor. Seolah-olah perkenalannya tidak cukup, teaser itu juga menunjukkan saat dia memanggil Mjolnir yang datang kepadanya dan membuktikan bahwa dia sama layaknya untuk menggunakan itu.</p>\r\n\r\n<p>Kisah &lsquo;Love and Thunder&rsquo; didasarkan pada karya Jason Aaron dari komik &ldquo;The Mighty Thor&rdquo;, yang mengikuti Jane Foster yang mengambil jubah superhero dan palu Mjolnir setelah putus dengannya.</p>\r\n\r\n<p>Dalam komik, kekuatan baru Jane Foster mempunyai konsekuensi yang cukup besar. Setiap kali dia menggunakan palu, kanker payudaranya menjadi bertambah lebih buruk. Tapi belum jelas apakah film ini akan mengikuti alur cerita yang sama dengan komiknya atau tidak.</p>', 1, 'news/jSoJBZwV26w8cFJRGtJyzmnhPm4V8ogpsffbPUOv.jpg', 1, 0, '2022-04-20 01:12:16', '2022-04-20 01:12:16'),
(4, 'Debut Pembukaan ‘Fantastic Beasts 3’ Rendah, Mengapa?', 'debut-pembukaan-fantastic-beasts-3-rendah-mengapa', '<p>Sementara&nbsp;<em>box office</em>&nbsp;domestik menunjukkan tanda-tanda kehidupan setelah adanya pandemi COVID-19 yang menghambat dunia hiburan sementara waktu, tampaknya &lsquo;Fantastic Beasts 3&rsquo; tidak mendukung kenyataan tersebut.</p>\r\n\r\n<p>Jika sedikit melihat ke belakang, ada beberapa film yang sukses menghasilkan angka cukup tinggi di bioskop, untuk pemutaran pembuka pada tahun 2022. &lsquo;The Batman&rsquo;, &lsquo;Uncharted&rsquo;, hingga &lsquo;Scream&rsquo; contohnya, mampu menarik penonton untuk kembali ke bioskop yang dibuktikan dengan pendapatan pembuka yang cukup tinggi.</p>\r\n\r\n<p>Film terbaru Warner Bros., &lsquo;<a href=\"https://cineverse.id/review-film-fantastic-beasts-the-secrets-of-dumbledore/\">Fantastic Beasts: The Secrets of Dumbledore,</a>&rsquo; memulai penayangannya di bioskop dengan hasil yang kurang memuaskan. Debut rendah tersebut nyatanya adalah pendapatan pembuka terendah yang pernah waralaba &lsquo;Fantastic Beasts&rsquo; alami. Jika memang akan ada lima film untuk total keseluruhan waralaba, mungkin Warner Bros. perlu mengganti strategi.</p>\r\n\r\n<p>&lsquo;Fantastic Beasts&rsquo; ketiga menghasilkan 20,1 juta dolar AS pada pratinjau Jumat dan Kamis malam dari 4.753 lokasi di Amerika Utara.</p>\r\n\r\n<p>Menjadi angka pembukaan terendah yang pernah ada di Amerika Serikat untuk film J.K. Rowling, hal ini mungkin menjadi bukti bahwa penggemar tidak menyukai film terakhir, &lsquo;Crimes of Grindelwald,&rsquo; dan tidak ingin kembali untuk bertemu Dumbledore lagi.</p>\r\n\r\n<p>&lsquo;Fantastic Beasts: The Secrets of Dumbledore&rsquo; melanjutkan waralaba &lsquo;Fantastic Beasts&rsquo; yang dimulai pada 2016 lalu. Film pertama, &lsquo;Fantastic Beasts and Where to Find Them&rsquo;, sukses dengan pembukaan domestik sebesar 74 juta dolar AS, sementara sekuel 2018, &lsquo;The Crimes of Grindelwald,&rsquo; turun menjadi 62 juta dolar AS.</p>\r\n\r\n<p>Sebagian besar alasan mungkin saja dikarenakan &lsquo;Fantastic Beasts&rsquo; tayang pada musim pandemi yang tidak kunjung selesai. Namun hal ini juga bisa dipatahkan melalui banyaknya film-film waralaba yang menghasilkan sukses besar dibandingkan film sebelumnya, di tengah kondisi saat ini, sebut saja &lsquo;Venom: Let There Be Carnage&rsquo;, &lsquo;Spider-Man: No Way Home&rsquo; dan &lsquo;Sonic the Hedgehog 2&rsquo;.</p>\r\n\r\n<p>Kemungkinan, ada faktor-faktor lain yang membuat film &lsquo;Fantastic Beasts&rsquo; ketiga ini kurang mendapatkan antusiasme dari masyarakat. Bisa saja karena pernyataan J.K Rowling di tahun-tahun yang lalu mengenai pendapatnya tentang seks dan indentitas gender.</p>\r\n\r\n<p>Selain itu, masalah lain juga muncul ketika Johnny Depp tersandung kasus kekerasan dalam rumah tangga yang menghebohkan dunia hiburan pada tahun 2020 lalu. Hal ini membuat Warner Bros. menghapus nama Depp sebagai Grindelwald dan menggaet Mads Mikkelsen sebagai penggantinya.</p>\r\n\r\n<p>Penggantian sosok Grindelwald ini nyatanya menjadi nilai lebih dari &lsquo;Fantastic Beasts 3&rsquo;. Melalui akting yang lebih bagus dan berkarakter jika dibandingkan dengan Depp, Mikkelsen dikatakan sebagai salah satu hal terbaik dalam film tersebut, jika dibandingkan dengan alur cerita yang kurang menarik.</p>\r\n\r\n<p>Disutradarai oleh David Yates, &lsquo;Fantastic Beasts: The Secrets of Dumbledore&rsquo; membawa Jude Law kembali sebagai pemimpin Hogwarts, Albus Dumbledore, dan Eddie Redmayne mengulangi perannya sebagai ahli sihir Newt Scamander.</p>\r\n\r\n<p>Meski begitu, &lsquo;Fantastic Beasts: The Secrets of Dumbledore&rsquo; menjadi film terlaris di Amerika Utara pada debut akhir pekan. Sementara mendapatkan angka debut terendah dalam waralaba Dumbledore tersebut, masih ada harapan bagi Warner Bros. untuk mendapatkan pendapatan yang lebih besar lagi setiap pekannya.</p>', 1, 'news/POxxG8VCi1j1L15ONj6oEqg0YVsyXJyBE8zgT4yE.jpg', 1, 0, '2022-04-20 01:14:22', '2022-04-20 01:16:33'),
(5, 'Stranger Things: Max Punya Kekuatan Super?', 'stranger-things-max-punya-kekuatan-super', '<p>Setelah penantian yang cukup panjang akhirnya Netflix merilis trailer perdana&nbsp;<em>Stranger Things</em>&nbsp;Season 4. Meskipun jadwal perilisannya berjarak tiga tahun dari season sebelumnya, season keempatnya ini akan berlangsung sekitar enam bulan setelah tragedi Battle of Starcourt, di mana Billy Hargrove (Dacre Montgomery) tewas demi menyelamatkan para anak-anak kota Hawkins termasuk adiknya, Max Mayfield (Sadie Sink).</p>\r\n\r\n<p>Kematian Billy tersebut bahkan disinggung di trailer terbaru Season 4 yang memperlihatkan Max tengah berbicara dengan nisan Billy.&nbsp;<em>&ldquo;Teruntuk Billy, aku tidak tahu apakah kau bisa mendengarnya. Sejak kau pergi, semuanya makin tampak seperti bencana,&rdquo;</em>&nbsp;kata Max. Sejurus kemudian, masih di lokasi yang sama, Max terlihat bisa melayang dengan disaksikan oleh Lucas (Caleb McLaughlin), Dustin (Gaten Matarazzo), dan Steve (Joe Keery). Apakah itu artinya dia mempunyai kekuatan super sama seperti Eleven/Jane Hopper (Millie Bobby Brown).</p>\r\n\r\n<p>Tidak jelas apa yang tengah terjadi dalam adegan tersebut, yang jelas Max sebelumnya tidak pernah diperlihatkan bisa melayang seperti yang baru-baru ini terungkap. Ada tiga teori yang bisa menjelaskan kejadian gaib tersebut. Yang pertama karena lokasinya berada di sebuah kuburan, ada kemungkinan Max dirasuki oleh &ldquo;sesuatu&rdquo;, bisa arwah Billy atau monster Mind Flayer yang sebelumnya memang diperlihatkan mempunyai kemampuan untuk mengendalikan orang. Namun, jika itu kasusnya, maka Max tidak mempunyai kekuatan super, melainkan hanya kerasukan seperti di film&nbsp;<em>The Exorcist</em>&nbsp;(1973).</p>\r\n\r\n<p>Teori kedua, Max mungkin saja baru mendapatkan kekuatan supernya di Season 4 ini. Sebelumnya sudah terungkap bahwa salah satu lokasi yang akan dipakai di season keempat ini adalah sebuah rumah berhantu yang disebut &ldquo;Creel House&rdquo;, di mana di dalamnya ada sebuah jam bandul antik yang misterius. Jam bandul tersebut mungkin adalah gerbang baru menuju Upside Down yang pertama kali ditemukan oleh Max. Sebagai seorang gadis muda yang penasaran, Max mungkin menyentuhnya atau bahkan masuk ke Upside Down, di mana semacam radiasi gaib telah mengubahnya menjadi manusia super.</p>\r\n\r\n<p>Yang ketiga, teori lain yang tidak kalah menarik adalah kemungkinan bahwa Max sebenarnya sudah mempunyai kekuatan super sejak awal. Max adalah karakter yang diperkenalkan pertama kali di Season 2, dia digambarkan sebagai gadis tangguh yang cukup pendiam. Kakaknya yang bernama Billy sering memarahi dan menyalahkannya. Billy merasa Max adalah orang yang membuatnya harus pindah ke Hawkins. Semua latar belakang Max tersebut kemungkinan berhubungan dengan masa lalunya sebagai kelinci percobaan pemerintah sama seperti Eleven.</p>\r\n\r\n<p>Di season-season sebelumnya telah dijelaskan bahwa Laboratorium Nasional Hawkins milik pemerintah Amerika adalah tempat dilakukannya eksperimen terhadap anak-anak yang memiliki kekuatan super, dan Max mungkin adalah salah satunya. Ayah kandung Max mungkin saja adalah orang penting di Lab Hawkins, itulah mengapa ibunya memilih untuk bercerai karena tidak tahan melihat anaknya dijadikan eksperimen. Alasan itu juga yang akhirnya membuat Max dan keluarga barunya harus terus berpindah-pindah menghindari kejaran ayahnya dan pemerintah.</p>\r\n\r\n<p>Sampai saat ini masih belum ada penjelasan resmi terkait kekuatan Max yang terlihat di trailernya. Eleven mungkin adalah karakter terkuat di serial&nbsp;<em>Stranger Things</em>, tetapi dia tidak pernah terlihat mempunyai kemampuan untuk melayang seperti yang dilakukan oleh Max. Menurut kalian apa yang sebenarnya terjadi kepada Max, Geeks, apakah dia kerasukan atau memang mempunyai kekuatan super? Jawabannya akan segera kita temukan saat serial&nbsp;<em>Stranger Things</em>&nbsp;Season 4&nbsp;Vol. 1 tayang pada 27 Mei 2022 nanti.</p>', 1, 'news/9AtV2LmWDaWLKpvEMGqkhM535qFNtLcVEl2UxgrO.jpg', 1, 0, '2022-04-20 05:44:23', '2022-04-20 05:44:23'),
(6, 'Jason Momoa Bintangi Film Live Action Minecraft!', 'jason-momoa-bintangi-film-live-action-minecraft', '<p>Setelah sukses memerankan karakter Khal Drogo di serial populer&nbsp;<em>Game of Thrones</em>, saat ini Jason Momoa telah dikenal oleh orang banyak sebagai salah satu aktor Hollywood yang cukup berpengaruh. Karier Momoa sendiri makin bersinar setelah dirinya berperan sebagai Arthur Curry alias Aquaman dalam berbagai film DC Extended Universe, termasuk cameo di&nbsp;<em>Batman v Superman: Dawn of Justice</em>, kemudian muncul secara penuh di film&nbsp;<em><em>Justice League, Aquaman,&nbsp;</em></em>dan terakhir kali di&nbsp;<em><em>Zack Snyder&rsquo;s Justice League.</em></em></p>\r\n\r\n<p>Kesuksesannya dalam memerankan Aquaman, membuat Momoa dipastikan akan kembali mengulang perannya di film sekuel berjudul&nbsp;<em>Aquaman and the Lost Kingdom&nbsp;</em>yang dijadwalkan untuk rilis pada tahun 2023 mendatang. Selain itu, penampilannya yang seperti&nbsp;<em>bad boy</em>&nbsp;bahkan membuat Momoa ditunjuk untuk berperan sebagai salah satu antagonis di film&nbsp;<em>Fast &amp; Furious 10&nbsp;</em>mendatang. Keterlibatannya dalam berbagai judul film menarik ini pada akhirnya membuat dia makin populer di seluruh dunia.</p>\r\n\r\n<p>Dan sekarang, berdasarkan laporan terbaru&nbsp;<a href=\"https://www.hollywoodreporter.com/movies/movie-news/minecraft-movie-jason-momoa-1235131605/\"><em>The Hollywood Reporter</em></a>, Momoa dikabarkan sedang dalam tahap negosiasi akhir untuk membintangi film&nbsp;<em>live action Minecraft.&nbsp;</em>Mengingat serialnya diadaptasi dari video game populer berjudul sama, yang memang tidak ada karakter spesifik di dalamnya, masih belum diketahui peran seperti apa yang akan dimainkan oleh Momoa.&nbsp;<em>Minecraft</em>&nbsp;sendiri adalah video game sederhana, di mana pemain diberikan kesempatan untuk membangun di dunia yang serba kubus.</p>\r\n\r\n<p>Masih dalam laporan yang sama, dilaporkan juga bahwa Jared Hess (<em>Napoleon Dynamite</em>)&nbsp;telah ditunjuk untuk menjadi sutradaranya. Film&nbsp;<em>live action Minecraft&nbsp;</em>sendiri sebenarnya telah diumumkan sejak tahun 2014 silam, dan Hess adalah orang keempat yang menduduki kursi sutradara, setelah sebelumnya sempat diisi oleh Peter Sollett (<em>The Path</em>), Rob McElhenney (<em>It&rsquo;s Always Sunny in Philadelphia</em>), dan Shawn Levy (<em>Free Guy</em>).</p>\r\n\r\n<p>Pada tahun 2019 lalu, Mojang selaku pencipta game&nbsp;<em>Minecraft&nbsp;</em>sempat mengatakan bahwa filmnya akan berfokus pada seorang remaja wanita yang berpetualangan bersama teman-temannya untuk menyelamatkan dunianya dari Ender Dragon yang sangat jahat. Saat ini terhitung ada 141 juta pemain yang masih aktif memainkan gamenya, dan jika promosi filmnya berhasil, kemungkinan besar&nbsp;<em>live action Minecraft&nbsp;</em>akan menjadi salah satu film yang sangat diantisipasi pada masa yang akan datang.</p>', 1, 'news/hvpQYhmxEzWbPzTwxfakqYJap8dcN7dNVxDbysn9.jpg', 1, 0, '2022-04-20 05:48:05', '2022-04-20 05:48:05'),
(7, 'Detail Kostum Batman Michael Keaton di The Flash!', 'detail-kostum-batman-michael-keaton-di-the-flash', '<p><em>The Flash</em>&nbsp;adalah film DC Extended Universe mendatang yang dipastikan akan lebih mengekplorasi kisah Barry Allen alias Flash dari Ezra Miller. Disutradarai oleh Andy Muschietti yang mengarahkan filmnya berdasarkan naskah Christina Hodson, film ini dipastikan akan kembali melibatkan Ezra Miller yang mengulang perannya sebagai Flash, bersama Sasha Calle sebagai Supergirl, Ben Affleck sebagai Batman DCEU, dan Michael Keaton sebagai versi Batman-nya sendiri yang sebelumnya debut di film&nbsp;<em>Batman</em>&nbsp;(1989).</p>\r\n\r\n<p>Di film yang kabarnya mengambil referensi dari peristiwa&nbsp;<em>Flashpoint&nbsp;</em>ini, Flash akan diceritakan melakukan perjalan waktu ke masa lalu untuk mencegah kematian ibunya, di mana hal tersebut justru malah menimbulkan masalah yang jauh lebih besar dari sebelumnya. Akibat dari upaya Flash untuk mengubah takdir, akhirnya dia akan terjebak di sebuah universe asing yang di dalamnya ada banyak karakter yang baru pertama kali dia temui, seperti Flash alternatif, Supergirl, dan Batman versi Keaton. Baru-baru ini, sebuah bocoran foto telah mengungkap penampilan penuh dari Batman Keaton di film&nbsp;<em>The Flash</em>.</p>\r\n\r\n<p>Baru saja dibagikan oleh akun Twitter&nbsp;<em>Epic Film Guys,&nbsp;</em>penampilan kostum Batman Keaton di DCEU ini kurang lebih mirip seperti versi aslinya yang pertama kali terlihat di film&nbsp;<em>Batman&nbsp;</em>dan&nbsp;<em>Batman Return</em>&nbsp;(1992). Perbedaannya hanya terletak pada jubah yang tampak lebih menyatu dengan topengnnya, serta warna sabuk gadget yang semula berwarna kuning seperti simbolnya diganti menjadi warna hitam, sehingga penampilannya sedikit lebih kelam dan tidak terlalu mencolok seperti sebelumnya.</p>\r\n\r\n<p>Saat Batman Keaton muncul dengan kostumnya di film&nbsp;<em>Batman&nbsp;</em>dan&nbsp;<em>Batman Return&nbsp;</em>karya Tim Burton, pada saat itu para penggemar banyak yang mengkritik tampilan topengnya, di mana tampak sangat kaku dan membuat Batman kesulitan untuk melirik kanan kiri. Selain itu, Keaton sendiri sebelumnya sempat berharap bahwa kostum barunya ini akan lebih nyaman ketika digunakan, mengingat kostum Batman sebelumnya tidak dilengkapi dengan ritsleting yang memudahkannya untuk buang air kecil.</p>\r\n\r\n<p>Dan berdasarkan apa yang sudah terungkap melalui bocoran foto terbaru ini, tampaknya kekurangan tersebut masih belum diatasi dengan baik. Selain di film&nbsp;<em>The Flash</em>, Batman Keaton juga dipastikan akan muncul di film&nbsp;<em>Batgirl&nbsp;</em>yang diperkirakan tayang pada tahun 2022 ini di HBO Max. Setelah mengalami beberapa kali penundaan, film&nbsp;<em>The Flash</em>&nbsp;sendiri rencananya akan bisa disaksikan pada 23 Juni 2023.</p>', 1, 'news/yGgMid6YPsyBXGItRlkvhfZ9elYFiTgi0p1kRrHg.jpg', 1, 0, '2022-04-20 05:53:39', '2022-04-20 05:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_playlist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gambar_playlist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gambar_review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `judul`, `slug`, `body`, `genre_id`, `user_id`, `gambar_review`, `rating`, `is_active`, `views`, `created_at`, `updated_at`) VALUES
(9, 'Sonic the Hedgehog 2', 'sonic-the-hedgehog-2', '<p><em>Sonic the Hedgehog</em>&nbsp;merupakan permainan video (video game) yang dirilis oleh Sega untuk pertama kalinya pada tahun 1991. Dan sampai sekarang ini video game Sonic masih menjadi permainan yang cukup populer dan digemari tak hanya oleh anak-anak bahkan juga oleh orang dewasa.&nbsp;</p>\r\n\r\n<p>Dan karena kepopulerannya itu, karakter dari Sonic telah merambah ke media lainnya, seperti serial animasi, buku komik dan film layar. Dan untuk pertama kalinya pada tahun 2020, Sonic mendapatkan tempatnya di layar lebar.</p>\r\n\r\n<p>Film &lsquo;Sonic the Hedgehog&rsquo; yang dirilis kemudian mendapatkan kesuksesan yang cukup besar, sehingga berselang dua tahun kemudian dibuatlah sekuelnya, &lsquo;<a href=\"https://cineverse.id/?s=sonic+the+hedgehog+2\" target=\"_blank\">Sonic the Hedgehog 2</a>&lsquo;.</p>\r\n\r\n<p>Sonic (Ben Schwartz), si landak biru berkecepatan super menjalani kehidupan sebagai pahlawan setelah mengusir musuh bebuyutannya, Doctor Robotnik (Jim Carrey) ke planet jamur.</p>\r\n\r\n<p>Tapi ketika Robotnik kembali untuk membalas dendam dan beraliansi dengan Knuckles (idris Elba), Sonic harus bekerja sama dengan teman barunya, Tails (Colleen O&rsquo;Shaughnessey) untuk menyelamatkan dunia lagi.</p>\r\n\r\n<p>Adaptasi aktual berdasarkan game-nya</p>\r\n\r\n<p>Sutradara Jeff Fowler kembali lagi dipercaya untuk mengarahkan sekuel film tentang si landak berkecepatan supersonik ini.</p>\r\n\r\n<p>&lsquo;Sonic 2&rsquo; adalah peningkatan besar-besaran dibandingkan dengan pendekatan perjalanan film pertama, dari aksi, dinamika karakter hingga komedi.</p>\r\n\r\n<p>Plotnya dibangun di atas cerita pendahulunya sambil menambahkan karakter dan alur cerita baru.&nbsp;</p>\r\n\r\n<p>Sekuel ini mengubah petualangan menjadi perburuan harta karun dengan lebih banyak aksi dan dengan banyak lokasi serta dengan taruhannya menyelamatkan dunia dari bencana kiamat.</p>\r\n\r\n<p>Jeff Fowler dalam sekuel ini membawa petualangan Sonic dan kawan-kawan lebih aktual berdasarkan video game-nya.</p>\r\n\r\n<p>Persahabatan adalah jiwa dan jantung film ini</p>\r\n\r\n<p>Berbeda dari film pertama yang terasa lebih seperti komedi persahabatan antara Thomas Wachowski (James Marsden) dan Sonic, film kedua ini lebih berfokus pada Sonic itu sendiri untuk menemukan tujuannya di rumah barunya yang sekarang.</p>\r\n\r\n<p>Lebih dari setengah film ini narasinya berkisar pada dinamika antara Sonic, Tails, Knuckles dan Dr. Robotnik.&nbsp;</p>\r\n\r\n<p>Dengan run time yang lumayan panjang, menjadikan hal tersebut untuk membiarkan karakter-karakter ini berkembang secara alami sepanjang film. Di mana kita melihat tentang sisi kepribadian Tails yang sangat bertolak belakang dengan Sonic.</p>\r\n\r\n<p>Sonic adalah pribadi yang senang dan berani mengambil risiko yang ambisius sedang Tails lebih merupakan teman yang berkepribadian tenang dan berjiwa ilmuwan.</p>\r\n\r\n<p>Akan tetapi keduanya bisa bekerja sama dengan sangat baik karena mereka saling memahami kekuatan dan kelemahan satu sama lainnya. Persahabatan mereka menjadi jantung dan jiwa dalam cerita ini.</p>\r\n\r\n<p>Tails pada awalnya mengagumi Sonic dan pada akhirnya mereka berdua tidak dapat dipisahkan. Kembalinya, Dr. Robotnik yang diasingkan dengan membawa aliansi baru yaitu Knuckles membawa serta tingkat bahaya baru.</p>\r\n\r\n<p>Knuckles juga sangat baik berperan sebagai penjahat yang penuh dendam yang seiring waktu berlalu belajar lebih banyak tentang kehidupan di bumi dan mendapatkan perspektif baru tentang kehidupan.</p>\r\n\r\n<p>Tampil impresif dalam live-action dan animasi</p>\r\n\r\n<p>Cerita baru Sonic ini dengan bijak menempatkan peran pendukung manusia lebih sebagai pendukung narasi dan menempatkan karakter utama, teman dan musuh sebagai pertunjukan yang utama.</p>\r\n\r\n<p>Tapi itu tidak berarti film ini meninggalkan aspek komedi keluarga, karakter manusia di sini mendapatkan subplot ceritanya tersendiri.</p>\r\n\r\n<p>Walaupun harus diakui karakter manusia, selain Dr. Robotnik tentunya tidak semenarik karakter animasinya.&nbsp;</p>\r\n\r\n<p>&lsquo;Sonic the Hedgehog 2&rsquo; dibangun berdasarkan adaptasi yang setia dari video gamenya dan dieksekusi dengan cukup bagus, bahkan lebih baik dari yang pertama.</p>\r\n\r\n<p>Film ini tidak hanya memberikan kepuasan tersendiri dari para penggemar video game dari Sonic tapi juga memberikan hiburan memikat bagi penikmat film tanpa harus menonton film pertamanya.</p>\r\n\r\n<p>Sekuel ini juga dibuat dengan sentuh kekinian demi memikat para audiens yang lebih muda.</p>', 9, 1, 'news/6fl5TyNPiilSPoVfSCevK0isEApEZedySVN9Kmt5.jpg', 5, 1, 0, '2022-04-13 02:14:25', '2022-04-20 06:37:16'),
(18, 'The Batman', 'the-batman', '<p>Sejak pertama kali muncul dalam DC Comics pada tahun 1939, karakter yang juga dikenal dengan nama &lsquo;caped crusader&rsquo;, &lsquo;the dark knight&rsquo; dan &lsquo;the world&rsquo;s greatest detective&rsquo; ini telah menjadi ikon budaya pop selama lebih dari delapan dekade.</p>\r\n\r\n<p>Petualangan superhero yang tinggal di kota Gotham ini pertama kali muncul di layar lebar dalam film berjudul &lsquo;Batman&rsquo; di tahun 1989 yang kemudian berlanjut sampai dengan &lsquo;The Dark Knight Rises&rsquo; pada tahun 2012.</p>\r\n\r\n<p>Walau karakter Batman muncul dalam &lsquo;Batman V Superman: Dawn of Justice&rsquo; (2016) dan &lsquo;Justice League&rsquo; (2017), versi teranyar dari Caped Crusader yang diberi judul &lsquo;The Batman&rsquo; ini terpisah jarak sepuluh tahun dari film solo Batman yang terakhir (The Dark Knight Rises-red).</p>\r\n\r\n<p>Sinopsis</p>\r\n\r\n<p>Di tahun keduanya sebagai Batman (Robert Pattinson), Bruce Wayne berjuang untuk menemukan tempatnya sebagai pemburu kejahatan. Dia menanamkan rasa takut pada mereka yang melakukan tindakan kriminal, akan tetapi dengan metodenya yang selalu main hakim sendiri.</p>\r\n\r\n<p>Alasannya, karena dia masih belum mendapatkan kepercayaan dari orang-orang, kecuali Letnan James &ldquo;Jim&rdquo; Gordon (Jeffrey Wright) yang mengizinkan Batman menyelidiki TKP bersamanya. Kasus berikutnya yang harus ia hadapi adalah kasus pembunuhan dan korbannya adalah Walikota Don Mitchell Jr (Rupert Penry-Jones).</p>\r\n\r\n<p>Terdapat orang yang dicurigai sebagai dalang dari pembunuhan tersebut, yakni seseorang yang menyebut dirinya The Riddler (Paul Dano). Batman pun mulai mengumpulkan petunjuk yang ditinggalkan si pembunuh setelah ia melakukan aksinya.</p>\r\n\r\n<p>Dengan bantuan Selina Kyle (Zoe Kravitz) yang menjadi pelayan di klub bos mafia Carmine Falcone (John Turturo), Batman bekerja untuk memecahkan misteri sebelum The Riddler dapat mengklaim korban berikutnya. Misteri yang membawanya pada rahasia besar tentang Gotham dan juga tentang keluarganya.</p>\r\n\r\n<p>Kota yang runtuh di bawah korupsi</p>\r\n\r\n<p>Sinyal kelelawar yang diproyeksikan ke langit kota Gotham mungkin sudah menimbulkan ketakutan di hati para penjahat di kota itu, tetapi Batman jelas bukan pahlawan bagi orang-orang Gotham. Dalam &lsquo;The Batman&rsquo;, sutradara Matt Reeves menunjukkan kegelapan dan teror di kota Gotham.</p>\r\n\r\n<p>Reeves menyajikan pembunuhan, pencurian, vandalisme dan penyerangan yang merajalela di seluruh kota. Tetapi kemudian datang Batman yang keluar dari bayang-bayang kegelapan dan mengunakan rasa takut untuk menghentikan kejahatan Gotham.</p>\r\n\r\n<p>Solusi yang tumpul untuk masalah yang rumit, karena Batman tidak menghentikan akar dari unsur kriminal tersebut, dia hanya menunda kejahatan untuk satu malam lagi.</p>\r\n\r\n<p>Dalam &lsquo;The Batman&rsquo;, ceritanya berfokus pada sistim dan lapisan masyarakat yang sudah rusak, terutama di tingkat elit kekuasaan yang harusnya memberikan pengabdiannya pada masyarakat akan tetapi mereka memakai wewenang dan pengaruhnya untuk melakukan berbagai bentuk korupsi.</p>\r\n\r\n<p>Kengerian yang tersembunyi di balik bayang-bayang</p>\r\n\r\n<p>Untuk James Gordon, sekutu tidak resmi dari Batman dalam mengurai kejahatan gila yang dilakukan oleh Riddler, Wright tampil sebagai seseorang yang kharismatik, tegas dan bahkan dia tampaknya lebih percaya pada Batman dibandingkan rekan penegak hukum lainnya.</p>\r\n\r\n<p>Bersama dengan Catwoman, masing-masing dari mereka saling menyumbangkan perannya secara unik dengan&nbsp;<em>chemistry</em>&nbsp;yang mempesona saat mengejar Riddler. Pada tahap ini Gordon bukan seorang komisaris, tapi masih seorang letnan di kepolisian yang penuh dengan korupsi.</p>\r\n\r\n<p>Reeves memberikan garis waktu ketika Batman masih berusia jauh lebih muda dan belum matang sebagai pemberantas kejahatan, dia masih mencari-cari cara yang sesuai dengan idealismenya.</p>\r\n\r\n<p>Kamera sering ditempatkan dengan cara yang menampilkan berbagai perspektif karakter, terutama saat Batman mengamati Catwoman yang sedang berbicara dengan teman sekamarnya melalui teropong. Atau The Riddler mengawasi target berikutnya melalui jendela, perspektif semacam itu turut meningkatkan kengerian.</p>\r\n\r\n<p>Seolah-olah ada sosok tersembunyi di balik bayang-bayang yang siap untuk menerkam. Reeves tampaknya juga mengambil pengaruh besar dari film horor yang menggunakan rasa takut. Di sepanjang film ini Reeves berhasil menjaga intensitas ketegangan demi ketegangan yang terus terjadi.</p>\r\n\r\n<p>Gotham jadi elemen penting dalam The Batman</p>\r\n\r\n<p>Aspek yang paling menarik dari &lsquo;The Batman&rsquo; adalah penggambaran tentang Gotham itu sendiri, yang juga bisa dibilang salah satu elemen yang penting dalam setiap cerita Batman. Gotham adalah kota metropolitan yang berkembang pesat dalam film-film arahan Christopher Nolan.</p>\r\n\r\n<p>Sama dengan yang ditunjukkan oleh Zack Synder tentang Gotham dalam Justice League yang digambarkannya sebagai kota canggih dan modern.</p>\r\n\r\n<p>Kesimpulan</p>\r\n\r\n<p>&lsquo;The Batman&rsquo; lebih berfokus pada kisah manusianya daripada kisah tentang heroisme, yang membawa kita menyelami lebih jauh dan dalam tentang krisis eksistensial Batman. Lalu menempatkan Batman di persimpangan jalan dalam perjalanan sebagai Caped Crusader, di mana perannya sebagai pelindung Gotham masih jauh dari bayangannya.</p>\r\n\r\n<p>Reeves dalam film ini mungkin ingin menyampaikan analoginya bahwa masa lalu yang membentuk kita yang sekarang, akan tetapi kita yang akan menentukan apa yang harus dilakukan dengannya, karena di sini dan sekarang dalam &lsquo;The Batman&rsquo;, masa lalu belum berlalu bahkan masa lalu masih hidup dan tinggal bersama dengannya.</p>\r\n\r\n<p>&nbsp;</p>', 10, 1, 'review/qi5IFdiEHaVAfQ1dUhTCf12tOmfor1zuQz6yQZ75.jpg', 4, 1, 0, '2022-04-15 00:56:45', '2022-04-20 05:15:30'),
(19, 'Morbius', 'morbius', '<p>&lsquo;<a href=\"https://cineverse.id/?s=morbius\" target=\"_blank\">Morbius</a>&rsquo; membuka keran Sony&rsquo;s Spider-Man Universe menjadi lebih deras lagi. Setelah mendulang kesuksesan bersama dua film Venom, kali ini giliran anti-hero Morbius yang mendapatkan kesempatan debut di film live action, dibintangi oleh Jared Leto.</p>\r\n\r\n<p>Sepak terjang &lsquo;Morbius&rsquo; untuk bisa rilis bisa dibilang tidak mudah. Film ini melakukan syuting ulang sebanyak dua kali dan desas-desusnya akibat dari skrip yang ingin dirombak ulang. Belum lagi soal pengunduran jadwal yang dilakukan berulang yang mana salah satunya diakibatkan oleh pandemi yang sedang melanda.&nbsp;</p>\r\n\r\n<p>Meski beberapa kali terkena halangan, &lsquo;Morbius&rsquo; akhirnya rilis juga di bioskop dan memberikan semburan angin segar untuk semesta Marvel di layar lebar. Dihiasi dengan scoring yang menggelegar, film ini berhasil membuat penonton terjaga dengan rentetan adegan action yang memesona.&nbsp;</p>\r\n\r\n<p>Ceritanya sendiri bisa dibilang sebagai titik kelemahan &lsquo;Morbius&rsquo;, tetapi hal itu segera tertutupi oleh penampilan ciamik para karakter. Jared Leto menunjukkan seorang Michael Morbius yang tak kenal lelah mencari obat untuk penyakitnya, juga Matt Smith yang memainkan peran antagonis di film ini bisa dibilang sebagai&nbsp;<em>show stealer&nbsp;</em>alias menjadi hiburan tersendiri di film.</p>\r\n\r\n<p>Di tengah keindahan gemerlap visualisasi dan CGI saat adegan&nbsp;<em>fighting&nbsp;</em>sedang terjadi, &lsquo;Morbius&rsquo; sayangnya terhambat dari sisi cerita. Sisi paling vital dari sebuah film. Kelemahan itu datang dari konflik yang dibangun, sehingga menimbulkan kesan &ldquo;gitu doang&rdquo; ketika film berakhir.</p>\r\n\r\n<p>Berbagai karakter pendukung juga sangat mengecewakan karena kehadirannya hanya seperti sebuah tempelan. Lagi-lagi memberikan kesan &ldquo;ya udah&rdquo; dari mereka.</p>\r\n\r\n<p>Konflik yang &lsquo;Morbius&rsquo; miliki sangat datar. Pembangunan detail-detail cerita benar-benar biasa saja, jadi konflik yang akhirnya mulai timbul tidak begitu berbobot. Cuma gitu doang. Tidak ada&nbsp;<em>specialty&nbsp;</em>yang mereka tawarkan karena apa yang ada di film ini sudah sangat umum terjadi di banyak film superhero.&nbsp;</p>\r\n\r\n<p>Serba biasa saja itu akhirnya menimbulkan formula generik yang jelas akan sulit membekas pada kesan penonton usai meninggalkan bioskop. Ini bisa saja adalah buah dari syuting yang dilakukan berulang kali, di mana restrukturisasi skrip banyak dilakukan, sehingga berimbas pada pendalaman karakter.&nbsp;</p>\r\n\r\n<p>Karakter seperti Martine Bancroft (Adria Arjona) tidak mampu menunjukkan potensi terbaiknya sebagai tangan kanan Morbius. Kehadirannya banyak tersia-siakan, apalagi setelah Morbius mendapatkan kekuatannya untuk pertama kali. Ia hanya muncul sekali dua kali dan penuntasan cerita karakternya benar-benar membingungkan.</p>\r\n\r\n<p>Padahal, ia berkesempatan untuk menjadi penengah antara Morbius dan Milo dan tentu karakternya akan mentereng, berhubung Bancroft juga tahu betul seluk beluk Morbius saat mendalami eksperimen DNA kelelawar ini.</p>\r\n\r\n<p>&lsquo;Morbius&rsquo; memberikan angin segar untuk semesta Marvel di layar lebar. Filmnya memiliki tempo cepat dan penuh aksi. Bersamaan dengan latar musik yang menggelegar, &lsquo;Morbius&rsquo; adalah tontonan yang tidak boleh dilewatkan.</p>\r\n\r\n<p>Namun, sisi cerita yang menjadi kelemahannya akan sangat mengganggu jalannya film ini. Mereka tidak mampu meramu kisah apik Michael Morbius menjadi anti-hero yang disegani dan ditakuti akibat dari konflik yang dibangun kurang baik.</p>\r\n\r\n<p>Besar kemungkinan &lsquo;Morbius&rsquo; tidak akan menjadi film yang melekat dan berkesan bagi para penonton. Sony harus berdoa kalau film ini mendapatkan pemasukan besar yang tinggi agar kemungkinan dibuatnya sekuel bisa terjadi.</p>', 13, 1, 'review/7larq3JeG93q0LXOqvno70cKN1scXTAbNvgrR4sx.jpg', 3, 1, 0, '2022-04-15 00:58:17', '2022-04-20 05:15:38'),
(23, 'Last Night in Soho', 'last-night-in-soho', '<p>&lsquo;Last Night in Soho&rsquo; adalah sebuah film horor psikologis garapan Edgar Wright yang sudah tayang perdana di bioskop Indonesia pada Rabu kemarin. Sutradara Wright dikenal sebagai seseorang yang kreatif dengan ciri khasnya yang suka mengemas ulang genre-genre film menjadi cerita-cerita kontemporer.</p>\r\n\r\n<p>Sejumlah karyanya yang terkenal seperti &lsquo;Shaun of The Dead&rsquo; (yang memparodikan zombie), &lsquo;Hot Fuzz&rsquo; (Film dengan genre&nbsp;<em>action comedy</em>&nbsp;tentang polisi) dan &lsquo;The World&rsquo;s End&rsquo; (<em>science fiction comedy</em>&nbsp;tentang invasi alien).&nbsp; Konsisten dalam berkarya, kali ini Wright mencoba sesuatu yang berbeda dengan menggarap secara serius film bergenre horor.</p>\r\n\r\n<p>Tentu saja kabar tersebut langsung menarik perhatian bagi penggemar karya-karya Wright dan penggemar film horor pada umumnya untuk menyaksikan bagaiman hasil akhir dari garapan sutradara kesayangan mereka.</p>\r\n\r\n<h3>Film terakhir dari aktris veteran Diana Rigg</h3>\r\n\r\n<p>&lsquo;Last Night In Soho&rsquo; adalah film terakhir di mana aktris kelahiran Inggris, Diana Rigg ikut berperan di dalamnya. Rigg tampil terakhir kalinya dengan memerankan sosok Miss Collins, induk semang yang kolot dari Eloise.</p>\r\n\r\n<p>Ia meninggal dalam usia 82 tahun di London, aktris yang mendapat gelar Dame dari Kerajaan Britania Raya ini sebelumnya dikenal sebagai ikon tahun 1960-an lewat perannya sebagai Emma Peel di serial televisi The Avengers.</p>\r\n\r\n<p>Rigg juga dikenal lewat perannya di layar lebar sebagai satu-satunya perempuan yang akan menikah dengan James Bond. Ia berperan sebagai Contess Tracy di Vicenzo dalam On Her Majesty&rsquo;s Secret Service bersama George Lazenby di tahun 1969.</p>\r\n\r\n<h3>Sinopsis &lsquo;Last Night in Soho&rsquo;</h3>\r\n\r\n<p>Eloise &lsquo;Ellie&rsquo; Turner (Thomasin MacKenzie) yang berasal dari kota kecil, Cornwall pergi ke ibu kota Inggris, London, karena hendak menggapai impiannya untuk menjadi seorang perancang busana ternama. Salah satu usaha yang berhasil dilakukannya ialah dengan diterimanya ia di sekolah mode yang cukup bergengsi.</p>\r\n\r\n<p>Namun, setelah ia mengalami suatu peristiwa yang tidak menyenangkan dengan melibatkan teman asramanya, Ellie yang menjadi tidak senang dengan kehidupan di asramanya memutuskan untuk pindah dan menyewa sebuah kamar di rumah tua milik Miss Collins (Diana Rigg).</p>\r\n\r\n<p>Masalah pun dimulai ketika Ellie pergi tidur, ia mulai mendapat mimpi tentang Sandie (Anya Taylor-Joy), seorang gadis muda yang bercita-cita menjadi bintang pertunjukan pada tahun 1960-an. Mimpi yang awalnya menyenangkan kemudian mulai berubah menjadi mimpi buruk yang membawanya pada misteri sebuah misteri yang mempengaruhi kehidupan Ellie.</p>\r\n\r\n<h3>Kisah paralel di satu kota yang melibatkan dua wanita</h3>\r\n\r\n<p>&lsquo;Last Night in Soho&rsquo; menceritakan kisah paralel dua wanita yang tiba di London. Sang sutradara, Wright, menawarkan visual yang unik dengan membagi kota London seakan-akan menjadi dua, yakni di antara calon perancang busana, Eloise, di masa kini dan calon bintang, Sandie, di masa lalu pada tahun 1960-an dengan kehidupan glamor yang disaksikan Eloise saat ia tidur.</p>\r\n\r\n<h3>Kesimpulan</h3>\r\n\r\n<p>&lsquo;Last Night in Soho&rsquo; adalah sebuah film yang senang bermain-main dengan &lsquo;suasana&rsquo; dari fantasi perjalanan waktu menjadi dongeng gelap mengerikan, dari misteri ke horor dengan banyak mimpi buruk. Ini adalah sebuah film horor psikologis yang memadukan unsur perjalanan waktu dan misteri. Tapi sekaligus juga tentang melakukan perjalanan ke masa lalu dan mencoba menciptakan kembali suatu identias diri di masa depan.</p>\r\n\r\n<p>&nbsp;</p>', 14, 1, 'review/1MrWTdRufohN50uOvuwhoMBr4zuHHc1sQUXDTwX3.jpg', 4, 1, 0, '2022-04-20 05:57:47', '2022-04-20 06:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_slide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_slide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `judul_slide`, `link`, `gambar_slide`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Sonic The Hedgehog', 'sonic-the-hedgehog', 'slide/ZKv5Vj94SoPb5FTKxXxTmWCw0nID0r63OQthhPWZ.jpg', 1, '2022-04-14 15:32:26', '2022-04-14 15:32:26'),
(12, 'Morbius', 'morbius', 'slide/gFkyO6NKM5JIdpaDxk1WfCvjjLoSfcjjftj8LyvV.jpg', 1, '2022-04-14 15:32:38', '2022-04-14 15:32:38'),
(13, 'Dr.Strange in the Multiverse of Madness', 'multiverse-of-madness', 'slide/c8YGPsDKQ4Lrx7hBUs0U5bkBaOJEhHY53QBXrvzb.jpg', 1, '2022-04-20 06:12:54', '2022-04-20 06:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rifqi Afif Fauzan', 'rifqiafiffauzan@gmail.com', NULL, '$2y$10$rf3PkN0YW/12YrFmB0r2AuvEu4CSFyJa/sSRbjeI/rtWaXse7Rywm', NULL, '2022-04-12 01:00:51', '2022-04-12 01:00:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
