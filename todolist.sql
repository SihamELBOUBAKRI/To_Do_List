-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 juin 2024 à 17:44
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
-- Base de données : `todolist`
--

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `text` varchar(155) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `text`, `date`) VALUES
(28, 'create a website test', '2024-06-03 15:24:38'),
(31, 'dnhxswgdce', '2024-06-02 16:21:01'),
(33, 'edjxdhbcsxhg', '2024-06-02 16:21:08'),
(34, 'dshfxwgsh', '2024-06-02 16:21:12'),
(35, 'dsfbxcnv vghedgsf', '2024-06-02 16:21:18'),
(36, 'egsdferoelzdsu;frjgl,fdhg,ndsukjg', '2024-06-02 16:21:25'),
(37, 'ezgfdscdsbvhndnsbfdhsdvnddbsngh', '2024-06-02 16:21:32'),
(40, 'ezgsujhgedyheshgd', '2024-06-02 16:21:46'),
(41, 'dhxgcn', '2024-06-02 16:24:48'),
(42, 'rrejhsdgxwncn', '2024-06-02 18:43:03'),
(46, 'shgdfgj', '2024-06-03 12:53:32'),
(48, 'hello', '2024-06-03 13:30:11'),
(49, 'sihame', '2024-06-03 15:23:56'),
(50, 'ghasaaaaaaaaaaaaaaaaaaaaaaaaaaaan', '2024-06-03 15:25:59'),
(51, 'hfkk', '2024-06-03 15:43:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
