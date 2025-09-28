-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 27 sep. 2025 à 21:07
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

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(1, 1, '2025-09-22');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(2, 2, '2025-09-22');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(3, 3, '2025-09-23');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(4, 4, '2025-09-24');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(5, 5, '2025-09-25');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(6, 6, '2025-09-26');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(7, 7, '2025-09-27');
INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES(8, 8, '2025-09-27');

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(1, 'Coca-cola zéro', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(2, 'Coca-cola original', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(3, 'Fanta citron', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(4, 'Fanta orange', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(5, 'Capri-sun', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(6, 'Pepsi', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(7, 'Pepsi Max Zéro', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(8, 'Lipton zéro citron', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(9, 'Lipton Peach', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(10, 'Monster energy ultra gold', 3);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(11, 'Monster energy ultra blue', 3);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(12, 'Eau de source ', 2);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(1, 'Noza Jean-Pierre', 28, 97300);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(2, 'Doe John', 76, 97355);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(3, 'Nico Robine', 34, 97310);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(4, 'Light Yagami', 17, 97351);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(5, 'Kento Nanami', 27, 97354);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(6, 'Zenin Maki', 16, 97310);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(7, 'Uchiwa Itachi', 31, 97300);
INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES(8, 'Phantomhive Ciel ', 11, 97354);

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 15);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 13);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 3);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(1, 17);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 11);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(2, 17);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 23);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(3, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 6);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 10);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(4, 16);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 15);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 12);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 17);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(5, 18);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 15);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 4);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 2);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 20);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(6, 17);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 5);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 15);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 4);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 22);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(7, 17);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 6);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 8);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 9);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 22);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 13);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 3);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 7);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 19);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 21);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES(8, 14);

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(1, 12);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(1, 7);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(2, 10);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(3, 5);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(4, 9);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(5, 2);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(6, 12);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(7, 3);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(8, 2);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(1, 'Mozaccia', 9.8);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(2, 'Gorgonzollaccia', 10.8);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(3, 'Raclaccia', 8.9);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(4, 'Emmentalaccia', 9.8);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(5, 'Tradizione', 8.9);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(6, 'Hawaienne', 11.2);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(7, 'Américaine', 10.8);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(8, 'Paysanne', 12.8);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(1, 'Ail');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(2, 'Ananas');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(3, 'Artichaut');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(4, 'Bacon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(5, 'Base Tomate');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(6, 'Base Crème');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(7, 'Champignon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(8, 'Chèvre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(9, 'Cresson');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(10, 'Emmental');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(11, 'Gorgonzola');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(12, 'Jambon cuit');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(13, 'Jambon fumé');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(14, 'Mozarella');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(15, 'Oeuf');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(16, 'Oignon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(17, 'Olive  noire ');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(18, 'Olive verte');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(19, 'Parmesan');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(20, 'Piment');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(21, 'Poivre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(22, 'Pomme de terre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(23, 'Raclette');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(24, 'Salami');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(25, 'Tomate cerise');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(1, 'Coca-cola');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(2, 'Cristalline');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(3, 'Monster');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(4, 'Pepsico');

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(1, 'Menu Mozaccia', 9.8, 1);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(2, 'Menu Gorgonzollaccia', 10.8, 2);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(3, 'Menu Raclaccia', 8.9, 3);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(4, 'Menu Emmentalaccia', 9.8, 4);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(5, 'Menu Tradizione', 8.9, 5);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(6, 'Menu Hawaienne', 11.2, 6);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(7, 'Menu Américaine', 10.8, 7);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(8, 'Menu Paysanne', 12.8, 8);

--
-- Déchargement des données de la table `paye`
--

INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(1, 1, '2025-09-22');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(2, 2, '2025-09-22');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(3, 3, '2025-09-23');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(4, 4, '2025-09-24');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(5, 5, '2025-09-25');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(6, 6, '2025-09-26');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(7, 7, '2025-09-27');
INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES(8, 8, '2025-09-27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
