-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2021 pada 03.35
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loker_guru`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_tlpn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `passwd`, `alamat`, `email`, `no_tlpn`) VALUES
(1, 'Udin', 'shg7&k', 'Yogyakarta', 'udin@gmail.com', '082176836452'),
(2, 'Saron', 'k6ty$d', 'Yogyakarta', 'saron@gmail.com', '082177651243'),
(3, 'Mini', 'j#dat7', 'Yogyakarta', 'mini@gmail.com', '082190778332');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datasekolah`
--

CREATE TABLE `datasekolah` (
  `id_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(30) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_tlpn` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `about` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datasekolah`
--

INSERT INTO `datasekolah` (`id_sekolah`, `nama_sekolah`, `npsn`, `alamat`, `kelurahan`, `email`, `no_tlpn`, `status`, `about`) VALUES
(1, '	MAS NURUL UMMAH	', '	 20363281	', '	JL. R. RONGGO KG. II NO. 982 KOTAGEDE YOGYAKARTA 55172	', '	Prenggan	', '	masnurulummah@gmail.com	', '	02747486585 	', '	swasta	', '	MAS NURUL UMMAH	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(2, '	MIS MA`HAD ISLAMY	', '	 20403394	', '	JL. PURBAYAN, SELOKRAMAN, PURBAYAN	', '	Purbayan	', '	misma`hadislamy@gmail.com	', '	02747486585 	', '	swasta	', '	MIS MA`HAD ISLAMY	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(3, '	MTSS NURUL UMMAH	', '	 20404161	', '	Jl. Raden Ronggo KG II/982	', '	Prenggan	', '	mtssnurulummah@gmail.com	', '	02747486585 	', '	swasta	', '	MTSS NURUL UMMAH	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(4, '	SD INTIS SCHOOL YOGYAKARTA	', '	 20409887	', '	J. Retno Dumilah No. 54	', '	Rejowinangun	', '	sdintisschoolyogyakarta	@gmail.com	', '	02747486585 	', '	swasta	', '	SD INTIS SCHOOL YOGYAKARTA	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(5, '	SD MUHAMMADIYAH KLECO 1	', '	 20403348	', '	Jl. Nyi Pembayun no. 20	', '	Prenggan	', '	sdmuhammadiyaha1@gmail.com	', '	02747486585 	', '	swasta	', '	SD MUHAMMADIYAH KLECO 1	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(6, '	SD MUHAMMADIYAH KLECO 2	', '	 20403349	', '	Jl. Tegal Gendu 3	', '	Prenggan	', '	sdmuhammadiyahkleco2@gmail.com	', '	02747486585 	', '	swasta	', '	SD MUHAMMADIYAH KLECO 2	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(7, '	SD MUHAMMADIYAH KLECO 3	', '	 20403350	', '	Jl. Nyi Pembayun 20	', '	Prenggan	', '	sdmuhammadiyahkleco 3@gmail.com	', '	02747486585 	', '	swasta	', '	SD MUHAMMADIYAH KLECO 3	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(8, '	SD MUHAMMADIYAH PURBAYAN	', '	 20403325	', '	Jl. Purbayan No. 11	', '	Purbayan	', '	sdmuhammadiyahpurbayan@gmail.com	', '	02747486585 	', '	swasta	', '	SD MUHAMMADIYAH PURBAYAN	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(9, '	SD NEGERI BALUWARTI	', '	 20403491	', '	Basen Purbayan Kotagede Yogyakarta	', '	Purbayan	', '	sdnegeribaluwarti@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI BALUWARTI	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(10, '	SD NEGERI DALEM	', '	 20403479	', '	Jln RM Danang Sutawijaya	', '	Purbayan	', '	sdnegeridalem@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI DALEM	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(11, '	SD NEGERI GEDONGKUNING	', '	 20403483	', '	Jl. Kusumanegara 62	', '	Rejowinangun	', '	sdnegerigedongkuning@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI GEDONGKUNING	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(12, '	SD NEGERI KARANGMULYO	', '	 20403498	', '	Karang KG II/531	', '	Prenggan	', '	sdnegerikarangmulyo@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI KARANGMULYO	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(13, '	SD NEGERI KARANGSARI	', '	 20404150	', '	KARANGSARI, REJOWINANGUN, KOTAGEDE, YOGYAKARTA	', '	Rejowinangun	', '	sdnegerikarangsari@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI KARANGSARI	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(14, '	SD NEGERI KOTAGEDE 1	', '	 20403434	', '	Kotagede Yk	', '	Purbayan	', '	sdnegerikotagede1@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI KOTAGEDE 1	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(15, '	SD NEGERI KOTAGEDE 4	', '	 20404152	', '	Bumen	', '	Purbayan	', '	sdnegerikotagede4@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI KOTAGEDE 4	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(16, '	SD NEGERI KOTAGEDE 5	', '	 20403436	', '	Jl. Kemasan 68	', '	Prenggan	', '	sdnegerikotagede5@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI KOTAGEDE 5	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(17, '	SD NEGERI PILAHAN	', '	 20403443	', '	Pilahan	', '	Rejowinangun	', '	sdnegeripilahan	@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI PILAHAN	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(18, '	SD NEGERI RANDUSARI	', '	 20403473	', '	Karang Prenggan Kg Ii/512	', '	Prenggan	', '	sdnegerirandusari@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI RANDUSARI	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(19, '	SD NEGERI REJOWINANGUN I	', '	 20403318	', '	Jln Ki Penjawi	', '	Rejowinangun	', '	sdnegerirejowinanguni@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI REJOWINANGUN I	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(20, '	SD NEGERI REJOWINANGUN III	', '	 20404157	', '	Jl. Nyi Adisoro 33	', '	Prenggan	', '	sdnegerirejowinanguniii	@gmail.com	', '	02747486585 	', '	negeri	', '	SD NEGERI REJOWINANGUN III	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(21, '	SMAN 5 YOGYAKARTA	', '	 20403180	', '	Jl. Nyi Pembayun No. 39 Yogyakarta	', '	Prenggan	', '	sman5yogyakarta@gmail.com	', '	02747486585 	', '	negeri	', '	SMAN 5 YOGYAKARTA	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(22, '	SMAS IT ABU BAKAR	', '	 20404171	', '	REJOWINANGUN NO 28 E KOTAGEDE	', '	Rejowinangun	', '	smasitabu bakar@gmail.com	', '	02747486585 	', '	swasta	', '	SMAS IT ABU BAKAR	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(23, '	SMAS MUHAMMADIYAH 4 YOGYAKART', '	 20403148	', '	JL. MONDORAKAN NO. 51	', '	Prenggan	', '	smasmuhammadiyah4yogyakarta@gmail.com	', '	02747486585 	', '	swasta	', '	SMAS MUHAMMADIYAH 4 YOGYAKARTA	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(24, '	SMP MUHAMMADIYAH 7 YOGYAKARTA', '	 20403249	', '	Purbayan Kotagede Yogyakarta	', '	Purbayan	', '	smpmuhammadiyah7yogyakarta@gmail.com	', '	02747486585 	', '	swasta	', '	SMP MUHAMMADIYAH 7 YOGYAKARTA	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	'),
(25, '	SMP NEGERI 9 YOGYAKARTA	', '	 20403272	', '	Jl. Ngeksigondo 30 Yogyakarta	', '	Prenggan	', '	smpnegeri9yogyakarta@gmail.com	', '	02747486585 	', '	negeri	', '	SMP NEGERI 9 YOGYAKARTA	adalah lembaga pendidikan negeri dibawah naungan kemendikbud	'),
(26, '	SMP PERAK YOGYAKARTA	', '	 20403231	', '	Jl. Kemasan 46 Yogyakarta	', '	Prenggan	', '	smpperakyogyakarta@gmail.com	', '	02747486585 	', '	swasta	', '	SMP PERAK YOGYAKARTA	adalah lembaga pendidikan swasta dibawah naungan kemendikbud	');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(5) NOT NULL,
  `nama_lowongan` varchar(50) NOT NULL,
  `id_sekolah` int(5) NOT NULL,
  `tipe` enum('purna waktu','paruh waktu','','') NOT NULL,
  `pendidikan_minimal` varchar(50) NOT NULL,
  `id_syarat` int(5) NOT NULL,
  `gaji` varchar(30) NOT NULL,
  `tunjangan` varchar(500) NOT NULL,
  `waktu_kerja` varchar(100) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `tgl_dimodif` date NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `nama_lowongan`, `id_sekolah`, `tipe`, `pendidikan_minimal`, `id_syarat`, `gaji`, `tunjangan`, `waktu_kerja`, `tgl_dibuat`, `tgl_dimodif`, `tgl_expired`) VALUES
(1, '	Lowongan Kerja Guru Bahasa Indonesia 	MAS NURUL U', 1, '', '	Sarjana/ S1	', 1, '	2-3 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(2, '	Lowongan Kerja Guru Bahasa Indonesia 	MIS MA`HAD ', 2, '', '	Sarjana/ S1	', 2, '	2-3 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(3, '	Lowongan Kerja Guru Bahasa Indonesia 	MTSS NURUL ', 3, '', '	Sarjana/ S1	', 3, '	2-3 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(4, '	Lowongan Kerja Guru Bahasa Indonesia 	SD INTIS SC', 4, '', '	Sarjana/ S1	', 4, '	2-3 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(5, '	Lowongan Kerja Guru Bahasa Indonesia 	SD MUHAMMAD', 5, '', '	Sarjana/ S1	', 5, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(6, '	Lowongan Kerja Guru Matematika	SD MUHAMMADIYAH KL', 6, '', '	Sarjana/ S1	', 6, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(7, '	Lowongan Kerja Guru Matematika	SD MUHAMMADIYAH KL', 7, '', '	Sarjana/ S1	', 7, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(8, '	Lowongan Kerja Guru Matematika	SD MUHAMMADIYAH PU', 8, '', '	Sarjana/ S1	', 8, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(9, '	Lowongan Kerja Guru Bahasa Inggris	SD NEGERI BALU', 9, '', '	Sarjana/ S1	', 9, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(10, '	Lowongan Kerja Guru Bahasa Inggris	SD NEGERI DALE', 10, '', '	Sarjana/ S1	', 10, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(11, '	Lowongan Kerja Guru Bahasa Inggris	SD NEGERI GEDO', 11, '', '	Sarjana/ S1	', 11, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(12, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI K', 12, '', '	Sarjana/ S1	', 12, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(13, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI K', 13, '', '	Sarjana/ S1	', 13, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(14, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI K', 14, '', '	Sarjana/ S1	', 14, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(15, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI K', 15, '', '	Sarjana/ S1	', 15, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(16, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI K', 16, '', '	Sarjana/ S1	', 16, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(17, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI P', 17, '', '	Sarjana/ S1	', 17, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(18, '	Lowongan Kerja Guru Bahasa Indonesia 	SD NEGERI R', 18, '', '	Sarjana/ S1	', 18, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(19, '	Lowongan Kerja Guru Matematika	SD NEGERI REJOWINA', 19, '', '	Sarjana/ S1	', 19, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(20, '	Lowongan Kerja Guru Matematika	SD NEGERI REJOWINA', 20, '', '	Sarjana/ S1	', 20, '	2-3 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(21, '	Lowongan Kerja Guru Matematika	SMAN 5 YOGYAKARTA	', 21, '', '	Sarjana/ S1	', 21, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(22, '	Lowongan Kerja Guru Bahasa Inggris	SMAS IT ABU BA', 22, '', '	Sarjana/ S1	', 22, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(23, '	Lowongan Kerja Guru Bahasa Inggris	SMAS MUHAMMADI', 23, '', '	Sarjana/ S1	', 23, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(24, '	Lowongan Kerja Guru Bahasa Inggris	SMP MUHAMMADIY', 24, '', '	Sarjana/ S1	', 24, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(25, '	Lowongan Kerja Guru Bahasa Inggris	SMP NEGERI 9 Y', 25, '', '	Sarjana/ S1	', 25, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00'),
(26, '	Lowongan Kerja Guru Bahasa Inggris	SMP PERAK YOGY', 26, '', '	Sarjana/ S1	', 26, '	2-4 juta	', '	Gaji Pokok, Uang Transport, Uang Makan	', '	Senin – Sabtu, pukul 07.00-13.30, 	', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan_guru`
--

CREATE TABLE `lowongan_guru` (
  `id_lowongan_guru` int(5) NOT NULL,
  `id_lowongan` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lowongan_guru`
--

INSERT INTO `lowongan_guru` (`id_lowongan_guru`, `id_lowongan`, `id_admin`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 3),
(20, 20, 3),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat`
--

CREATE TABLE `syarat` (
  `id_syarat` int(5) NOT NULL,
  `keahlian` varchar(500) NOT NULL,
  `kualifikasi` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `syarat`
--

INSERT INTO `syarat` (`id_syarat`, `keahlian`, `kualifikasi`) VALUES
(1, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(2, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(3, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(4, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(5, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(6, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(7, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(8, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(9, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(10, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(11, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(12, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(13, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(14, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(15, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(16, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(17, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(18, '	Menguasai Bahasa Indonesia, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(19, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(20, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(21, '	Menguasai Bahasa Matematika, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(22, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(23, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(24, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(25, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	'),
(26, '	Menguasai Bahasa Inggris, komputer, dan Ms. Word	', '	Jujur, teliti, disiplin, dan bertanggung jawab.	');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `datasekolah`
--
ALTER TABLE `datasekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`),
  ADD KEY `fk_lowonganSyarat` (`id_syarat`),
  ADD KEY `fk_lowonganDataSekolah` (`id_sekolah`);

--
-- Indeks untuk tabel `lowongan_guru`
--
ALTER TABLE `lowongan_guru`
  ADD PRIMARY KEY (`id_lowongan_guru`),
  ADD KEY `fk_lowonganGuruLowongan` (`id_lowongan`),
  ADD KEY `fk_lowonganGuruAdmin` (`id_admin`);

--
-- Indeks untuk tabel `syarat`
--
ALTER TABLE `syarat`
  ADD PRIMARY KEY (`id_syarat`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `fk_lowonganDataSekolah` FOREIGN KEY (`id_sekolah`) REFERENCES `datasekolah` (`id_sekolah`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lowongan_guru`
--
ALTER TABLE `lowongan_guru`
  ADD CONSTRAINT `fk_lowonganGuruAdmin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lowonganGuruLowongan` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id_lowongan`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
