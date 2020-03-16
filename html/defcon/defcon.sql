-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 18 août 2019 à 12:28
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `defcon`
--

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `idcontrat` int(11) NOT NULL AUTO_INCREMENT,
  `demandeur` int(11) NOT NULL,
  `referent` int(11) DEFAULT NULL,
  `statut` int(11) NOT NULL,
  `nom` varchar(64) COLLATE utf8_bin NOT NULL,
  `jeu` varchar(64) COLLATE utf8_bin NOT NULL,
  `demande` mediumtext COLLATE utf8_bin NOT NULL,
  `temps` int(11) NOT NULL,
  PRIMARY KEY (`idcontrat`),
  KEY `demandeur` (`demandeur`),
  KEY `statut` (`statut`),
  KEY `referent` (`referent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `idgroupe` int(11) NOT NULL AUTO_INCREMENT,
  `representant` int(11) NOT NULL,
  `nomgroupe` varchar(32) COLLATE utf8_bin NOT NULL,
  `membres` int(11) NOT NULL,
  PRIMARY KEY (`idgroupe`),
  KEY `representant` (`representant`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `rang`
--

DROP TABLE IF EXISTS `rang`;
CREATE TABLE IF NOT EXISTS `rang` (
  `idrang` int(11) NOT NULL AUTO_INCREMENT,
  `auth` int(11) NOT NULL,
  `nomrang` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idrang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `rang`
--

INSERT INTO `rang` (`idrang`, `auth`, `nomrang`) VALUES
(0, 0, 'Banni'),
(1, 1, 'Inscrit'),
(2, 2, 'Demande de serveur'),
(3, 3, 'Administrateur DEFCON');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `idstatut` int(11) NOT NULL AUTO_INCREMENT,
  `nomstatut` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idstatut`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`idstatut`, `nomstatut`) VALUES
(1, 'Refusé'),
(2, 'En attente d\'approbation'),
(3, 'Approuvé');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(64) COLLATE utf8_bin NOT NULL,
  `email` varchar(64) COLLATE utf8_bin NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `rang` int(11) NOT NULL,
  `inscrit` int(11) NOT NULL,
  `lastvisit` int(11) NOT NULL,
  `banneduntil` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  KEY `rang` (`rang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `pseudo`, `email`, `password`, `rang`, `inscrit`, `lastvisit`, `banneduntil`) VALUES
(1, 'Gavin Sertix', 'gavin@defcon-community.be', '7759dc68054fc5d61be1a5a24c02f141d8ef16c2', 3, 1565265953, 1566127847, NULL),
(2, 'William', 'william@defcon-community.be', '7ca99b6bb911aa4b2877946f7317fb332d51d858', 3, 1565356354, 1565356354, NULL),
(3, 'ting tong', 'daniel@defcon-community.be', 'eabce8e429225b3f5d168cf1203a570c641720f2', 3, 1565351863, 1565351922, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `contrat_ibfk_1` FOREIGN KEY (`statut`) REFERENCES `statut` (`idstatut`),
  ADD CONSTRAINT `contrat_ibfk_2` FOREIGN KEY (`demandeur`) REFERENCES `user` (`iduser`),
  ADD CONSTRAINT `contrat_ibfk_3` FOREIGN KEY (`referent`) REFERENCES `user` (`iduser`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `groupe_ibfk_1` FOREIGN KEY (`representant`) REFERENCES `user` (`iduser`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rang`) REFERENCES `rang` (`idrang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
