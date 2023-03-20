-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 mars 2023 à 12:00
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testestage`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacte`
--

DROP TABLE IF EXISTS `contacte`;
CREATE TABLE IF NOT EXISTS `contacte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eamil` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `departement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacte`
--

INSERT INTO `contacte` (`id`, `full_name`, `eamil`, `message`, `departement`, `created_at`) VALUES
(1, 'Adèle Allain-Moreno', 'francois.carlier@martineau.com', 'Dolorem ratione omnis sit in voluptas dolorum enim. Vel possimus reiciendis laborum. Dolor sed ab molestiae quibusdam.', 'Departement n1', '2023-03-19 18:25:10'),
(2, 'Jacques Reynaud', 'bernard.delaunay@noos.fr', 'Dolore placeat sit tempora maxime natus voluptas. Ad ducimus ad est.', 'Departement n2', '2023-03-19 18:25:10'),
(3, 'Bertrand Verdier', 'tristan09@laposte.net', 'Ab qui et incidunt repellendus soluta velit aut. Accusamus voluptatem nihil nam ipsum itaque. Quia libero nobis ea mollitia officiis sed.', 'Departement n3', '2023-03-19 18:25:10'),
(4, 'Dominique Pages', 'dubois.lucas@hotmail.fr', 'Facere eligendi esse exercitationem vero et suscipit qui. Debitis quis maiores error sit consequatur rerum. At ut aut voluptas rem enim iusto.', 'Departement n4', '2023-03-19 18:25:10'),
(5, 'Susan Gilbert', 'ljacques@legros.com', 'Voluptas voluptate tempore eum qui quos sed. Modi qui dolorem eum et culpa laboriosam et autem. Dolore recusandae et quia velit nulla quae at. Error voluptatem magni sunt eum.', 'Departement n5', '2023-03-19 18:25:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
