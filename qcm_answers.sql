-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 14 fév. 2022 à 18:22
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qcm_answers`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `qcm_id` int(11) NOT NULL,
  `nom_prenom` varchar(255) NOT NULL,
  `date_rep` datetime NOT NULL,
  `ip_addr` varchar(128) NOT NULL,
  `reponse` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `qcm_id`, `nom_prenom`, `date_rep`, `ip_addr`, `reponse`) VALUES
(1, 1, 'Mohamed Anis MANI', '2022-02-12 18:39:22', '127.0.0.1', '1A2B3B4C5D6D7C8C9D10A'),
(2, 1, 'Mohamed Anis MANI', '2022-02-13 06:27:57', '127.0.0.1', '1C2B3C4A5A6A7C8D9C10B'),
(3, 1, 'Mohamed Anis MANI', '2022-02-13 06:28:27', '127.0.0.1', '1D2D3B4D5C6A7B8A9B10A'),
(4, 1, 'Mohamed Anis MANI', '2022-02-13 07:19:10', '127.0.0.1', '1A2C3C4D5A6A7D8B9D10A'),
(5, 1, 'Abdouda MANI', '2022-02-13 07:33:33', '127.0.0.1', '1C2A3A4D5A6A7B8B9A10C'),
(6, 1, 'Mohamed Anis MANI', '2022-02-13 07:35:58', '127.0.0.1', '1A2A3C4C5B6C7D8B9D10C'),
(11, 1, 'Ahmed Ben Moussa', '2022-02-13 10:29:03', '127.0.0.1', '1A2A3C4C5B6C7D8B9D10C');

-- --------------------------------------------------------

--
-- Structure de la table `eleves_classes`
--

CREATE TABLE `eleves_classes` (
  `id` int(11) NOT NULL,
  `classe` varchar(16) NOT NULL,
  `nom_prenom` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `eleves_classes`
--

INSERT INTO `eleves_classes` (`id`, `classe`, `nom_prenom`) VALUES
(1, '2TI', 'Abrar Gaaloul'),
(2, '2TI', 'Ahmed Ben Moussa'),
(3, '2TI', 'Ahmed Ghemari'),
(4, '2TI', 'Ahmed Jegham'),
(5, '2TI', 'Adam Ben Hmida'),
(6, '2TI', 'Adam Mougou'),
(7, '2TI', 'Amel Ben Massaoud'),
(8, '2TI', 'Amel Krifa'),
(9, '2TI', 'Amir Jedidi'),
(10, '2TI', 'Ayhem Jedidi'),
(11, '2TI', 'Raed Chamsi'),
(12, '2TI', 'Raslène Gharzoul'),
(13, '2TI', 'Rayène Mkhinini'),
(14, '2TI', 'Zaineb Belkhiria'),
(15, '2TI', 'Safa Ziraoui'),
(16, '2TI', 'Abdelmalek Bourkhis'),
(17, '2TI', 'Fedi Khalifa'),
(18, '2TI', 'Kenza Laabidi'),
(19, '2TI', 'Louay Talbi'),
(20, '2TI', 'Lina Ben Amor'),
(21, '2TI', 'Mohamed Hédi Béjaoui'),
(22, '2TI', 'Mohamed Amine Sahloul'),
(23, '2TI', 'Mohamed Amine Kassouma'),
(24, '2TI', 'Mohamed Amine Msallem'),
(25, '2TI', 'Mohamed Bachar Khlifa'),
(26, '2TI', 'Mohamed Saïd Stoufa Sakji'),
(27, '2TI', 'Mohamed Mehdi Zayani'),
(28, '2TI', 'Mohamed Nour Ben Taher'),
(29, '2TI', 'Maryem Hassayoune'),
(30, '2TI', 'Menyar Bousnina'),
(31, '2TI', 'Miriam Rezgui'),
(32, '2TI', 'Nour Abdeljlil'),
(33, '2TI', 'Hachem Mhiri'),
(34, '2TI', 'Wiem Tounsi'),
(35, '2TI', 'Yassine Dahmene'),
(36, '2TI', 'Yosri Ayedi'),
(66, '4ECO', 'Adem Ben Kahla'),
(67, '4ECO', 'Eya Tayeb'),
(68, '4ECO', 'Eya Skander'),
(69, '4ECO', 'Eya Gandouz'),
(70, '4ECO', 'Ahmed Mahfoudh'),
(71, '4ECO', 'Ahmed Mhiri'),
(72, '4ECO', 'Ahmed Aziz Abid'),
(73, '4ECO', 'Arij Lamine'),
(74, '4ECO', 'Amira Morjène'),
(75, '4ECO', 'Israa Brahem'),
(76, '4ECO', 'Ikram Souhail'),
(77, '4ECO', 'Elyess Khechine'),
(78, '4ECO', 'Iheb Hkayem'),
(79, '4ECO', 'Balsem Halloul'),
(80, '4ECO', 'Bochra Lahouar'),
(81, '4ECO', 'Bochra Khalifa Hmissi'),
(82, '4ECO', 'Houssem Hmaissi'),
(83, '4ECO', 'Hassen Hichri'),
(84, '4ECO', 'Hayder Hamdi'),
(85, '4ECO', 'Rahma Mshekni'),
(86, '4ECO', 'Roua Said'),
(87, '4ECO', 'Zayneb Latiri'),
(88, '4ECO', 'Salma Jebali'),
(89, '4ECO', 'Sahar Ayed'),
(90, '4ECO', 'Ali Ben Hassen'),
(91, '4ECO', 'Mohamed Halim Bettaieb'),
(92, '4ECO', 'Mohamed Mokhtar Mani'),
(93, '4ECO', 'Modtadha Abbessi'),
(94, '4ECO', 'Monjieddine Mani'),
(95, '4ECO', 'Nour Dahmeni'),
(96, '4ECO', 'Wissal Lajmi');

-- --------------------------------------------------------

--
-- Structure de la table `qcms`
--

CREATE TABLE `qcms` (
  `id` int(11) NOT NULL,
  `classe` varchar(16) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `nbr_questions` int(11) NOT NULL,
  `questions` text NOT NULL,
  `reponses` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `qcms`
--

INSERT INTO `qcms` (`id`, `classe`, `titre`, `description`, `nbr_questions`, `questions`, `reponses`) VALUES
(1, '2TI', 'Structures itératives', 'QCM Structures itératives', 10, '', '1A2A3C4C5B6C7D8B9D10C'),
(6, '2TI', 'Structures itératives', 'QCM Structures itératives', 10, '[{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(3):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"0 / 1 / 2\",\"0 / 3 / 6\",\"1 / 2 / 3\",\"0 / 1 / 2 / 3\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, 7, 2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"1 / 3 / 5\",\"1 / 3 / 5 / 7\",\"1 / 2 / 3 / 4 / 5 / 6\",\"1 / 2 / 3 / 4 / 5 / 6 / 1 / 2 / 3 / 4 / 5 / 6\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, -8, -2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"-1 / -3 / -5 / -7\",\"-1 / -3 / -5 / -7 / -8\",\"1 / -1 / -3 / -5 / -7\",\"1 / -1 / -3 / -5 / -7 / -9\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">ch = \\\"ab cd\\\"\\nfor k in range(len(ch)):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"ab / cd\",\"ab cd\",\"a / b / / c / d\",\"a / b / c / d\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 4, 3, 8, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nfor i in range(5):\\n    s += t[i]</code></pre>\\n      <p><strong>Quelle est la valeur de <code>s</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"1\",\"18\",\"8\",\"36\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 2, 3, 4, 1, 2, 3, 4, 0, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">c = 0\\nfor i in range(10):\\n    if t[i] == t[1]:\\n        c += 1</code></pre>\\n      <p><strong>Quelle est la valeur de <code>c</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"0\",\"2\",\"3\",\"10\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 1\\nwhile a &lt;= 14:\\n    a = a + 4</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"14\",\"15\",\"17\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 5\\nwhile a > 13:\\n    a = a + 3</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"5\",\"13\",\"15\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>s</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nn = 6\\nwhile n >= 0:\\n    s = s + n\\n    n = n - 1</code></pre>\",\"is_single\":true,\"propositions\":[\"0\",\"6\",\"15\",\"21\"]},{\"enonce\":\"<p><strong>Quelle est la valeur du couple <code>(s, i)</code> à la fin de l\'exécution du programme\\n          suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\ni = 1\\nwhile i &lt; 5:\\n    s = s + i\\n    i = i + 1</code></pre>\",\"is_single\":true,\"propositions\":[\"(4, 5)\",\"(10, 4)\",\"(10, 5)\",\"(15, 5)\"]}]', '1A2B3C4C5B6C7D8B9D10C');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `eleves_classes`
--
ALTER TABLE `eleves_classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qcms`
--
ALTER TABLE `qcms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `eleves_classes`
--
ALTER TABLE `eleves_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `qcms`
--
ALTER TABLE `qcms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
