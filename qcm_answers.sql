-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2022 at 07:00 AM
-- Server version: 8.0.20
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qcm_answers`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `qcm_id` int NOT NULL,
  `nom_prenom` varchar(255) NOT NULL,
  `date_rep` datetime NOT NULL,
  `ip_addr` varchar(128) NOT NULL,
  `reponse` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eleves_classes`
--

CREATE TABLE `eleves_classes` (
  `id` int NOT NULL,
  `classe` varchar(16) NOT NULL,
  `nom_prenom` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `eleves_classes`
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
(96, '4ECO', 'Wissal Lajmi'),
(97, '4T2', 'Eya Weslati'),
(98, '4T2', 'Eya Mechmech'),
(99, '4T2', 'Eya Daouas'),
(100, '4T2', 'Eya Weslati (Kamel)'),
(101, '4T2', 'Arij Hattab'),
(102, '4T2', 'Oussema Abdessaied'),
(103, '4T2', 'Ayoub Fedhlaoui'),
(104, '4T2', 'Israa Marzouki'),
(105, '4T2', 'Iheb Mbarek'),
(106, '4T2', 'Rima Ben Jaballah'),
(107, '4T2', 'Ranim Gebsi'),
(108, '4T2', 'Rayène Dahmen'),
(109, '4T2', 'Sirine Dziri'),
(110, '4T2', 'Chahd Sassi'),
(111, '4T2', 'Omar Hamadi'),
(112, '4T2', 'Aziz Meskine'),
(113, '4T2', 'Gaieth Bouzbida'),
(114, '4T2', 'Kaisser Ben Sma'),
(115, '4T2', 'Camilia Bouaziz'),
(116, '4T2', 'Mohamed Karim Sgahier'),
(117, '4T2', 'Mohamed Aziz Ben Kilani'),
(118, '4T2', 'Meriem Belkhiria'),
(119, '4T2', 'Maya Slimane'),
(120, '4T2', 'Molka Ben Hmida'),
(121, '4T2', 'May Farah Boussaadia'),
(122, '4T2', 'Mayssa Fakhreddine'),
(123, '4T2', 'Mohamed Salim Karaa'),
(124, '4T2', 'Mohamed Aziz Achour'),
(125, '4T2', 'Mohamed Yassine Mabruk'),
(126, '4T2', 'Nour Ben Jannet'),
(127, '4T2', 'Yassmine Bouaouina');

-- --------------------------------------------------------

--
-- Table structure for table `qcms`
--

CREATE TABLE `qcms` (
  `id` int NOT NULL,
  `classe` varchar(16) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `nbr_questions` int NOT NULL,
  `questions` text NOT NULL,
  `reponses` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qcms`
--

INSERT INTO `qcms` (`id`, `classe`, `titre`, `description`, `nbr_questions`, `questions`, `reponses`) VALUES
(6, '2TI', 'Structures itératives', 'QCM Structures itératives', 10, '[{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(3):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"0 / 1 / 2\",\"0 / 3 / 6\",\"1 / 2 / 3\",\"0 / 1 / 2 / 3\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, 7, 2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"1 / 3 / 5\",\"1 / 3 / 5 / 7\",\"1 / 2 / 3 / 4 / 5 / 6\",\"1 / 2 / 3 / 4 / 5 / 6 / 1 / 2 / 3 / 4 / 5 / 6\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">for k in range(1, -8, -2):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"-1 / -3 / -5 / -7\",\"-1 / -3 / -5 / -7 / -8\",\"1 / -1 / -3 / -5 / -7\",\"1 / -1 / -3 / -5 / -7 / -9\"]},{\"enonce\":\"      <p><strong>Qu\'affiche le programme suivant (le \\\"/\\\" indique un retour à la ligne)</strong></p>\\n      <pre><code class=\\\"python\\\">ch = \\\"ab cd\\\"\\nfor k in range(len(ch)):\\n    print(k)</code></pre>\",\"is_single\":true,\"propositions\":[\"ab / cd\",\"ab cd\",\"a / b / / c / d\",\"a / b / c / d\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 4, 3, 8, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nfor i in range(5):\\n    s += t[i]</code></pre>\\n      <p><strong>Quelle est la valeur de <code>s</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"1\",\"18\",\"8\",\"36\"]},{\"enonce\":\"      <p><strong>Soit t un tableau qui contient les éléments : 1, 2, 3, 4, 1, 2, 3, 4, 0, 2</strong></p>\\n      <p><strong>On exécute le programme suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">c = 0\\nfor i in range(10):\\n    if t[i] == t[1]:\\n        c += 1</code></pre>\\n      <p><strong>Quelle est la valeur de <code>c</code> à la fin de l\'exécution ?</strong></p>\",\"is_single\":true,\"propositions\":[\"0\",\"2\",\"3\",\"10\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 1\\nwhile a &lt;= 14:\\n    a = a + 4</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"14\",\"15\",\"17\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">a = 5\\nwhile a > 13:\\n    a = a + 3</code></pre>\",\"is_single\":true,\"propositions\":[\"1\",\"5\",\"13\",\"15\"]},{\"enonce\":\"      <p><strong>Que contient la variable <code>s</code> sachant que :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\nn = 6\\nwhile n >= 0:\\n    s = s + n\\n    n = n - 1</code></pre>\",\"is_single\":true,\"propositions\":[\"0\",\"6\",\"15\",\"21\"]},{\"enonce\":\"<p><strong>Quelle est la valeur du couple <code>(s, i)</code> à la fin de l\'exécution du programme\\n          suivant :</strong></p>\\n      <pre><code class=\\\"python\\\">s = 0\\ni = 1\\nwhile i &lt; 5:\\n    s = s + i\\n    i = i + 1</code></pre>\",\"is_single\":true,\"propositions\":[\"(4, 5)\",\"(10, 4)\",\"(10, 5)\",\"(15, 5)\"]}]', '1A2A3C4C5B6C7D8B9D10C'),
(22, 'Dummy', 'Exemplaire de QCM', 'Ceci n\'est pas vraiment un QCM. Il est juste destiné comme modèle.', 1, '[{\"enonce\":\"Quelle est la couleur du ciel lorsqu\'il est clair le matin ?\",\"is_single\":true,\"propositions\":[\"Le ciel est bleu\",\"Le ciel est gris\",\"Le ciel est noir\",\"Le ciel est rouge\"]}]', '1A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eleves_classes`
--
ALTER TABLE `eleves_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qcms`
--
ALTER TABLE `qcms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `eleves_classes`
--
ALTER TABLE `eleves_classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `qcms`
--
ALTER TABLE `qcms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
