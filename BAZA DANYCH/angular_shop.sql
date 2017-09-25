-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Kwi 2015, 14:24
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `angular_shop`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `items` text NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `userId`, `name`, `email`, `items`, `total`, `status`) VALUES
(3, 30, 'Test', 'asd@asd.pl', '[{"id":"1","name":"Amlodipine Besylate","weight":"1.63","description":"ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac","price":"0.03","qty":"1"},{"id":"4","name":"Proair HFA","weight":"1.62","description":"volutpat. Nulla dignissim. Maeprices ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maeprices malesuada fringilla est. Mauris eu turpis. Nulla aliquet.","price":"7.96","qty":"1"},{"id":"5","name":"Amoxicillin","weight":"0.85","description":"lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maeprices iaculis","price":"7.98","qty":"2"}]', '23.95', 0),
(5, 32, 'Admin', 'admin@admin.pl', '[{"id":"1","name":"Amlodipine Besylate","weight":"1.63","description":"ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac","price":"0.03","qty":"1"},{"id":"8","name":"Simvastatin","weight":"0.19","description":"libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at","price":"2.33","qty":"2"},{"id":"7","name":"Digoxin","weight":"1.94","description":"magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit","price":"1.7","qty":"5"}]', '13.19', 0),
(6, 32, 'Admin', 'admin@admin.pl', '[{"id":"3","name":"Flovent HFA","weight":"1.69","description":"eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt","price":"2.82","thumb":"foodiesfeed.com_healthy-fats.jpg","qty":"5"}]', '14.10', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `weight`, `description`, `price`, `thumb`) VALUES
(3, 'Flovent HFA', '1.69', 'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt', '2.82', 'foodiesfeed.com_healthy-fats.jpg'),
(4, 'Proair HFA', '1.62', 'volutpat. Nulla dignissim. Maeprices ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maeprices malesuada fringilla est. Mauris eu turpis. Nulla aliquet.', '7.96', ''),
(5, 'Amoxicillin', '0.85', 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maeprices iaculis', '7.98', ''),
(6, 'Suboxone', '1.97', 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,', '5.11', ''),
(7, 'Digoxin', '1.94', 'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit', '1.7', 'foodiesfeed.com_sweet-candies-store4.jpg'),
(8, 'Simvastatin', '0.19', 'libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at', '2.33', ''),
(9, 'Super produkt', '10', 'Nowy opis który musi już zadziałać na 100%', '1000000', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`) VALUES
(1, 'Ulla', 'enim.consequat@luctusetultrices.net', 'user', ''),
(2, 'Zelenia', 'cursus.Nunc@dolor.com', 'user', ''),
(3, 'Jenna', 'et@urna.com', 'user', ''),
(5, 'Sade', 'ultrices.posuere@malesuadaiderat.co.uk', 'user', ''),
(6, 'Carlos', 'magna.Cras@mauris.com', 'user', ''),
(7, 'Chancellor', 'magnis.dis@tristiquesenectus.net', 'user', ''),
(8, 'Angela', 'blandit.mattis.Cras@convallis.net', 'user', ''),
(9, 'Christine', 'placerat.Cras@ipsum.com', 'user', ''),
(10, 'Bethany', 'Nunc.mauris.sapien@Sednuncest.edu', 'user', ''),
(11, 'Quintessa', 'nulla@fermentumfermentum.net', 'user', ''),
(12, 'Elaine', 'arcu.Nunc.mauris@nonegestas.org', 'user', ''),
(13, 'Macaulay', 'In@Integervulputate.ca', 'user', ''),
(14, 'Justina', 'at.risus.Nunc@augueidante.net', 'user', ''),
(15, 'Chloe', 'mi.ac.mattis@nec.com', 'user', ''),
(16, 'Sheila', 'a.purus@quam.ca', 'user', ''),
(17, 'Cairo', 'a.magna.Lorem@uteros.co.uk', 'user', ''),
(18, 'Molly', 'felis@ametanteVivamus.edu', 'user', ''),
(26, 'Test', 'test@test.pl', 'user', 'asd'),
(30, 'Test', 'asd@asd.pl', 'user', 'FtdqLtQvgcuzo'),
(31, 'Test', 'testowy@test.pl', 'user', 'FtdqLtQvgcuzo'),
(32, 'Admin', 'admin@admin.pl', 'admin', 'FtMaUMglKzRYk');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
