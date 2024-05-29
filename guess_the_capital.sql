-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 29 mai 2024 à 16:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `guess_the_capital`
--

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`, `capital`) VALUES
(1, 'Belgrade', 'Serbia'),
(2, 'Sofia', 'Bulgaria'),
(3, 'Dublin', 'Ireland'),
(4, 'Sarajevo', 'Bosnia and Herzegovina'),
(5, 'Vaduz', 'Liechtenstein'),
(6, 'Kyiv', 'Ukraine'),
(7, 'Douglas', 'Isle of Man'),
(8, 'Skopje', 'North Macedonia'),
(9, 'Moscow', 'Russia'),
(10, 'Chișinău', 'Moldova'),
(11, 'Ljubljana', 'Slovenia'),
(12, 'London', 'United Kingdom'),
(13, 'Zagreb', 'Croatia'),
(14, 'Budapest', 'Hungary'),
(15, 'Pristina', 'Kosovo'),
(16, 'Berlin', 'Germany'),
(17, 'Copenhagen', 'Denmark'),
(18, 'Lisbon', 'Portugal'),
(19, 'Luxembourg', 'Luxembourg'),
(20, 'Longyearbyen', 'Svalbard and Jan Mayen'),
(21, 'Gibraltar', 'Gibraltar'),
(22, 'Minsk', 'Belarus'),
(23, 'Bern', 'Switzerland'),
(24, 'Riga', 'Latvia'),
(25, 'Madrid', 'Spain'),
(26, 'Vatican City', 'Vatican City'),
(27, 'Nicosia', 'Cyprus'),
(28, 'Oslo', 'Norway'),
(29, 'Tallinn', 'Estonia'),
(30, 'Stockholm', 'Sweden'),
(31, 'Tórshavn', 'Faroe Islands'),
(32, 'Bucharest', 'Romania'),
(33, 'Reykjavik', 'Iceland'),
(34, 'Andorra la Vella', 'Andorra'),
(35, 'City of San Marino', 'San Marino'),
(36, 'Warsaw', 'Poland'),
(37, 'Valletta', 'Malta'),
(38, 'Rome', 'Italy'),
(39, 'Monaco', 'Monaco'),
(40, 'Helsinki', 'Finland'),
(41, 'Athens', 'Greece'),
(42, 'Paris', 'France'),
(43, 'Saint Helier', 'Jersey'),
(44, 'Vienna', 'Austria'),
(45, 'Tirana', 'Albania'),
(46, 'Vilnius', 'Lithuania'),
(47, 'Mariehamn', 'Åland Islands'),
(48, 'Bratislava', 'Slovakia'),
(49, 'St. Peter Port', 'Guernsey'),
(50, 'Amsterdam', 'Netherlands'),
(51, 'Prague', 'Czechia'),
(52, 'Podgorica', 'Montenegro'),
(53, 'Brussels', 'Belgium');

-- --------------------------------------------------------

--
-- Structure de la table `country_seq`
--

CREATE TABLE `country_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `country_seq`
--

INSERT INTO `country_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id` bigint(20) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `points`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `score_seq`
--

CREATE TABLE `score_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `score_seq`
--

INSERT INTO `score_seq` (`next_val`) VALUES
(51);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
