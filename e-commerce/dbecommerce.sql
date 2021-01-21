-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2021 pada 08.51
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(5) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'Dinosaurus ', 'terbuat dari bahan plastik,sangat aman untuk anak kecil.'),
('2', 'Gundam', 'Gundam ini terbuat dari bahan besi yang solid,keunggulan dari gundam ini memiliki daya tahan yang ku'),
('3', 'yoyo', 'terbuat dari plastik,sangat ringan untuk dimainkan.'),
('4', 'Tamiya ', 'dengan membeli ini autowin,memiliki daya tahan yang kuat,dan batre yang awet.Dengan batre sanyo mena');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` varchar(5) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `sku`, `name`, `brand`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'Dinosaurus', 'Dinosaurus', 'doctor toys', 'memiliki keunggulang glow in the dark,jika ditempat gelap dinosaurus ini akan menyala', 110000, '1', 'https://static.duniaku.net/2019/08/Snap-Squad-Jurassic-World.jpg'),
('2', 'Gundam', 'Gundam', 'Doctor Toys', 'Terbuat dari plastik,dengan keunggulan daya tahan banting', 200000, '2', 'http://1.bp.blogspot.com/-prAYV1KEHMs/VRf7lRthAUI/AAAAAAAAAj0/ktIP_-QV5d0/s1600/BowDMDMIcAAFimB.jpg%2Blarge.jpeg'),
('3', 'yoyo', 'yoyo', 'Doctor Toys', 'Terbuat dari plastik,sangat ringan untuk dimainkan.', 150000, '3', 'https://asset-a.grid.id//crop/0x0:0x0/700x465/photo/bobofoto/original/10093_1.jpg'),
('4', 'Tamiya', 'Tamiya', 'Doctor Toys', 'tamiya jaman modern,dengan ke unggulan awet batre,dan daya tahan yang kuat', 250000, '4', 'https://cdn-2.tstatic.net/manado/foto/bank/images/tamiya-3424.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
