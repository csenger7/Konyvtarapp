-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Már 11. 09:34
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyvtar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(150) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `year`, `price`) VALUES
(1, 'A Pál utcai fiúk', 'Molnár Ferenc', 1907, 3500),
(2, 'Egri csillagok', 'Gárdonyi Géza', 1899, 4200),
(3, 'Az ember tragédiája', 'Madách Imre', 1861, 3900),
(4, 'Tüskevár', 'Fekete István', 1957, 4100),
(5, 'A kőszívű ember fiai', 'Jókai Mór', 1869, 4500),
(6, 'Harry Potter és a bölcsek köve', 'J. K. Rowling', 1997, 5200),
(7, 'A Gyűrűk Ura', 'J. R. R. Tolkien', 1954, 6200),
(8, '1984', 'George Orwell', 1949, 4800),
(9, 'Állatfarm', 'George Orwell', 1945, 3700),
(10, 'A kis herceg', 'Antoine de Saint-Exupéry', 1943, 3300);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
