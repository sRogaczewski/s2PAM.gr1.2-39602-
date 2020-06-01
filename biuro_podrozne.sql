-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Kwi 2020, 21:22
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biuro_podrozne`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hotel`
--

CREATE TABLE `hotel` (
  `Id_hotelu` int(11) NOT NULL,
  `Nazwa_hotelu` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Ilość_gwiazdek` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Strona` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `hotel`
--

INSERT INTO `hotel` (`Id_hotelu`, `Nazwa_hotelu`, `Ilość_gwiazdek`, `Opis`, `Strona`) VALUES
(1, 'La Plaz', '1', 'wspaniałe widoki', 'asd.com'),
(2, 'as', '1', 'najlepszy', 'As.pl'),
(3, 'Magnolia Hotel & Restauracja', '4', 'Hotel z restauracją idealny na wesele', 'www.magnoliajawor.pl'),
(4, 'DWORZYSKO - Restauracja & Hotel', '3', 'Hotel ze świetnymi widokami', 'www.dworzysko.pl'),
(5, 'Hotel & Restauracja Pałac Krotoszyce', '5', 'Hotel z spa oraz basenem', 'www.palac_krotoszyce.pl'),
(6, 'Hotel Sękowski', '3', 'Hotel w centrum miasta', 'www.sekowski.pl'),
(7, 'PAŁAC w GROBLI', '4', 'Hotel w zamku poczuj średniwoeiczny klimat', 'www.palac_grobla.pl'),
(8, 'Pensjonat Pod Chmielarzem Wojcieszów', '5', 'Hotel blisko natury ', 'www.pod_chmielarzem.pl'),
(9, 'Qubus Hotel Legnica', '4', 'Najlepsza obsługa', 'www.qubus.pl'),
(10, 'Hotel Kamieniczka', '3', 'Poczuj smak PRLU', 'www.kamieniczka.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `Id` int(11) NOT NULL,
  `haslo` text CHARACTER SET cp1250 COLLATE cp1250_polish_ci NOT NULL,
  `Imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Pesel` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Ulica` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Numer_telefonu` int(11) NOT NULL,
  `Mail` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`Id`, `haslo`, `Imie`, `Nazwisko`, `Pesel`, `Miasto`, `Ulica`, `Numer_telefonu`, `Mail`) VALUES
(0, '0CBC6611F5540BD0809A388DC95A615B', 'Paweł', 'Detuna', '9872234321234', 'Jawor', 'Rynek', 934323456, 'Pablo@gmail.com'),
(1, '0CBC6611F5540BD0809A388DC95A615B', 'Andrzej', 'Koza', '902342781232', 'Paszowice', 'Paszowice', 283746223, 'Koza@gmail.com'),
(2, '0CBC6611F5540BD0809A388DC95A615B', 'Eryk', 'Sobczyński', '293485612344', 'Warszawa', 'Jagielona', 923456848, 'Sobczynski@gmail.com'),
(3, '0CBC6611F5540BD0809A388DC95A615B', 'Danuta', 'Zyszczyńska', '456432987532', 'Zębowice', 'Jansa', 234876234, 'Danuta@gmail.com'),
(4, '0CBC6611F5540BD0809A388DC95A615B', 'Józef', 'Salamon', '847574362213', 'Legnica', 'Szkolna', 984372345, 'Salamon@gmail.com'),
(5, '0CBC6611F5540BD0809A388DC95A615B', 'Michał', 'Buńko', '348725636719', 'Wrocław', 'Wrocławska', 384543931, 'Buńko@gmail.com'),
(6, '0CBC6611F5540BD0809A388DC95A615B', 'Adrian', 'Bakuś', '876234456354', 'Gdańsk', 'Wolna', 345876654, 'Bakuś@gmail.com'),
(7, '0CBC6611F5540BD0809A388DC95A615B', 'Emil', 'Bera', '123456654323', 'Jawor', 'Ciemna', 234432789, 'Bera@gmail.com'),
(8, '0CBC6611F5540BD0809A388DC95A615B', 'Urszula', 'Paterkiewicz', '982345376423', 'Jawor', 'Koszary', 945237876, 'Pater@gmail.com'),
(9, '0CBC6611F5540BD0809A388DC95A615B', 'Tymon', 'Masalski', '238485726342', 'Łódź', 'Moniuszki', 495943876, 'Masalski_Tymon@gmail.com'),
(10, '0CBC6611F5540BD0809A388DC95A615B', 'Dawid', 'Szparag', '987345234876', 'Kłodzk', 'Wyszyńskiego', 308234876, 'Szparag@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przewodnicy`
--

CREATE TABLE `przewodnicy` (
  `Id_przewodnika` int(11) NOT NULL,
  `Imie_przewodnika` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko_przewodnika` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Telefon` int(11) NOT NULL,
  `Miejsce_zamieszkania` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Ulica_zamieszkania` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `przewodnicy`
--

INSERT INTO `przewodnicy` (`Id_przewodnika`, `Imie_przewodnika`, `Nazwisko_przewodnika`, `Telefon`, `Miejsce_zamieszkania`, `Ulica_zamieszkania`) VALUES
(1, 'Pablo', 'Eskobar', 375688234, 'Kolumbia', 'Bogota'),
(2, 'Brad', 'Pitt', 987234567, 'Ameryka', 'Wall Street'),
(3, 'Mariusz', 'Pudzianowski', 739034434, 'Polska', 'Rapackiego'),
(4, 'Wiktoria', 'Gabor', 833423456, 'Polska', 'Kuźnicza'),
(5, 'Michał', 'Furmankiewicz', 989876678, 'Polska', 'Rynek'),
(6, 'Radek', 'Gołębiecki', 129344721, 'Niemcy', 'Straßenrand'),
(7, 'Radosław', 'Pokrywa', 982345543, 'Rosja', 'Kremlowa'),
(8, 'Zbigniew', 'Stonoga', 122221345, 'Polska', 'Maja'),
(9, 'Mateusz', 'Kląskała', 756394328, 'Polska', 'Spokojna'),
(10, 'Sebastian', 'Bogdanowicz', 98234566, 'Polska', 'Przyrzecze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `Id_rezerwacji` int(11) NOT NULL,
  `data_rezerwacji` datetime NOT NULL DEFAULT current_timestamp(),
  `Początek` date NOT NULL,
  `Koniec` date NOT NULL,
  `Id_ubezpieczenia` int(11) NOT NULL,
  `Id_klienta` int(11) NOT NULL,
  `Id_wycieczki` int(11) NOT NULL,
  `Koszt` double NOT NULL,
  `Liczba_osób` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `rezerwacja`
--

INSERT INTO `rezerwacja` (`Id_rezerwacji`, `data_rezerwacji`, `Początek`, `Koniec`, `Id_ubezpieczenia`, `Id_klienta`, `Id_wycieczki`, `Koszt`, `Liczba_osób`) VALUES
(1, '2020-04-24 21:14:22', '2020-04-22', '2020-05-07', 4, 1, 6, 17770, 5),
(2, '2020-04-24 21:16:13', '2020-05-10', '2020-09-05', 1, 1, 1, 27662, 1),
(3, '2020-04-24 21:16:47', '2020-10-03', '2020-10-24', 6, 1, 7, 8391, 3),
(4, '2020-04-24 21:18:28', '2020-04-24', '2020-05-07', 1, 1, 10, 14636, 6),
(5, '2020-04-24 21:20:21', '2020-06-26', '2020-06-28', 6, 7, 8, 2475, 2),
(6, '2020-04-24 21:21:26', '2020-05-09', '2020-05-15', 6, 9, 6, 4323, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ubezpieczenia`
--

CREATE TABLE `ubezpieczenia` (
  `Id_ubezpieczenia` int(11) NOT NULL,
  `rodzaj_ubezpieczenia` text COLLATE utf8mb4_polish_ci NOT NULL,
  `cena_ubezpieczenia` int(4) NOT NULL,
  `kwota_ubezpieczenia` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `ubezpieczenia`
--

INSERT INTO `ubezpieczenia` (`Id_ubezpieczenia`, `rodzaj_ubezpieczenia`, `cena_ubezpieczenia`, `kwota_ubezpieczenia`) VALUES
(1, 'zdrowie', 50, 100000),
(4, 'zdrowie+bagaż', 70, 106000),
(5, 'zdrowie+odwołanie wczasów', 55, 100000),
(6, 'zdrowie+bagaż+odwołanie wczasów', 75, 120000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycieczki`
--

CREATE TABLE `wycieczki` (
  `Id_wycieczki` int(11) NOT NULL,
  `Miejsce` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Cena` int(5) NOT NULL,
  `Opis_wycieczki` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Id_przewodnika` int(11) NOT NULL,
  `Id_hotelu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `wycieczki`
--

INSERT INTO `wycieczki` (`Id_wycieczki`, `Miejsce`, `Cena`, `Opis_wycieczki`, `Id_przewodnika`, `Id_hotelu`) VALUES
(1, 'Holandia', 234, 'Zwiedznie ogrodow botanicznych', 1, 4),
(2, 'Francja', 280, 'Świetne bagietki i nie tylko', 5, 10),
(3, 'Horwacja', 156, 'Wysmienite plaże', 10, 7),
(4, 'Szwajcarai', 365, 'Wspaniałe widoki górskie', 4, 3),
(5, 'Ameryka', 456, 'Niezapomniane widoki', 6, 2),
(6, 'Brazylia', 236, 'Niezapomniany festiwal', 10, 9),
(7, 'Rosja', 132, 'Najlepszy alkochol', 5, 7),
(8, 'Hiszpania', 600, 'Super słońce', 1, 5),
(9, 'Włochy', 342, 'Przejazd gondolami', 2, 1),
(10, 'Austria', 187, 'Świetne stoki narciarskie ', 10, 7);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Id_hotelu`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `przewodnicy`
--
ALTER TABLE `przewodnicy`
  ADD PRIMARY KEY (`Id_przewodnika`);

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`Id_rezerwacji`);

--
-- Indeksy dla tabeli `ubezpieczenia`
--
ALTER TABLE `ubezpieczenia`
  ADD PRIMARY KEY (`Id_ubezpieczenia`);

--
-- Indeksy dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  ADD PRIMARY KEY (`Id_wycieczki`),
  ADD KEY `wycieczki_ibfk_1` (`Id_przewodnika`),
  ADD KEY `wycieczki_ibfk_2` (`Id_hotelu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Id_hotelu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `przewodnicy`
--
ALTER TABLE `przewodnicy`
  MODIFY `Id_przewodnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  MODIFY `Id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `ubezpieczenia`
--
ALTER TABLE `ubezpieczenia`
  MODIFY `Id_ubezpieczenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  MODIFY `Id_wycieczki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  ADD CONSTRAINT `wycieczki_ibfk_1` FOREIGN KEY (`Id_przewodnika`) REFERENCES `przewodnicy` (`Id_przewodnika`),
  ADD CONSTRAINT `wycieczki_ibfk_2` FOREIGN KEY (`Id_hotelu`) REFERENCES `hotel` (`Id_hotelu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
