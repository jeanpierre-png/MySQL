-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 27 sep. 2025 à 20:18
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

CREATE TABLE `achete` (
  `id_client` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 1, '2025-09-22'),
(2, 2, '2025-09-22'),
(3, 3, '2025-09-23'),
(4, 4, '2025-09-24'),
(5, 5, '2025-09-25'),
(6, 6, '2025-09-26'),
(7, 7, '2025-09-27'),
(8, 8, '2025-09-27');

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL COMMENT 'Identifiant boisson',
  `nom_boisson` varchar(45) DEFAULT NULL COMMENT 'Nom de la boisson',
  `id_marque` int(11) NOT NULL COMMENT 'clé étrangère vers marque'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source ', 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL COMMENT 'Identifiant',
  `nom_client` varchar(45) DEFAULT NULL COMMENT 'Nom du client',
  `age` int(11) DEFAULT NULL COMMENT 'Âge du client',
  `cp_client` int(11) DEFAULT NULL COMMENT 'Code postal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Noza Jean-Pierre', 28, 97300),
(2, 'Doe John', 76, 97355),
(3, 'Nico Robine', 34, 97310),
(4, 'Light Yagami', 17, 97351),
(5, 'Kento Nanami', 27, 97354),
(6, 'Zenin Maki', 16, 97310),
(7, 'Uchiwa Itachi', 31, 97300),
(8, 'Phantomhive Ciel ', 11, 97354);

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

CREATE TABLE `comprend` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 5),
(1, 15),
(1, 9),
(1, 13),
(1, 1),
(1, 3),
(1, 7),
(1, 19),
(1, 21),
(1, 17),
(2, 5),
(2, 11),
(2, 9),
(2, 1),
(2, 7),
(2, 19),
(2, 21),
(2, 17),
(3, 5),
(3, 23),
(3, 9),
(3, 1),
(3, 7),
(3, 19),
(3, 21),
(4, 6),
(4, 10),
(4, 9),
(4, 7),
(4, 19),
(4, 21),
(4, 16),
(5, 5),
(5, 15),
(5, 9),
(5, 12),
(5, 7),
(5, 19),
(5, 21),
(5, 17),
(5, 18),
(6, 5),
(6, 15),
(6, 9),
(6, 4),
(6, 2),
(6, 20),
(6, 19),
(6, 21),
(6, 17),
(7, 5),
(7, 15),
(7, 9),
(7, 4),
(7, 22),
(7, 19),
(7, 21),
(7, 17),
(8, 6),
(8, 8),
(8, 9),
(8, 22),
(8, 13),
(8, 1),
(8, 3),
(8, 7),
(8, 19),
(8, 21),
(8, 14);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(1, 12),
(1, 7),
(2, 10),
(3, 5),
(4, 9),
(5, 2),
(6, 12),
(7, 3),
(8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL COMMENT 'Identifiant focaccia',
  `nom_focaccia` varchar(45) NOT NULL COMMENT 'Nom de la focaccia',
  `prix_focaccia` float NOT NULL COMMENT 'Prix de la focaccia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL COMMENT 'Identifiant ingrédient',
  `nom_ingredient` varchar(45) NOT NULL COMMENT 'Nom de l''ingrédient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base Crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Mozarella'),
(15, 'Oeuf'),
(16, 'Oignon'),
(17, 'Olive  noire '),
(18, 'Olive verte'),
(19, 'Parmesan'),
(20, 'Piment'),
(21, 'Poivre'),
(22, 'Pomme de terre'),
(23, 'Raclette'),
(24, 'Salami'),
(25, 'Tomate cerise');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL COMMENT 'Identifiant marque',
  `nom_marque` varchar(45) NOT NULL COMMENT 'Nom de la marque'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL COMMENT 'Identifiant menu',
  `nom_menu` varchar(45) NOT NULL COMMENT 'Nom du menu',
  `prix_menu` float NOT NULL COMMENT 'Prix du menu',
  `id_focaccia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES
(1, 'Menu Mozaccia', 9.8, 1),
(2, 'Menu Gorgonzollaccia', 10.8, 2),
(3, 'Menu Raclaccia', 8.9, 3),
(4, 'Menu Emmentalaccia', 9.8, 4),
(5, 'Menu Tradizione', 8.9, 5),
(6, 'Menu Hawaienne', 11.2, 6),
(7, 'Menu Américaine', 10.8, 7),
(8, 'Menu Paysanne', 12.8, 8);

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

CREATE TABLE `paye` (
  `id_client` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paye`
--

INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
(1, 1, '2025-09-22'),
(2, 2, '2025-09-22'),
(3, 3, '2025-09-23'),
(4, 4, '2025-09-24'),
(5, 5, '2025-09-25'),
(6, 6, '2025-09-26'),
(7, 7, '2025-09-27'),
(8, 8, '2025-09-27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achete`
--
ALTER TABLE `achete`
  ADD KEY `id_client` (`id_client`,`id_focaccia`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`),
  ADD KEY `boisson_ibfk_1` (`id_marque`) USING BTREE;

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD KEY `id_focaccia` (`id_focaccia`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_boisson` (`id_boisson`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Index pour la table `paye`
--
ALTER TABLE `paye`
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_menu` (`id_menu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boisson`
--
ALTER TABLE `boisson`
  MODIFY `id_boisson` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant boisson', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant focaccia', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant ingrédient', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant marque', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant menu', AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `paye` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
