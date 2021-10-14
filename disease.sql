-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 09:23 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicinfo-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `Did` int(4) NOT NULL,
  `Dname` varchar(50) NOT NULL,
  `Ddesc` text NOT NULL,
  `Dsymp` text NOT NULL,
  `Dcure` text NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`Did`, `Dname`, `Ddesc`, `Dsymp`, `Dcure`) VALUES
(1, 'Anemia caused by blood loss', 'In this type You can lose red blood cells through bleeding. This can happen slowly over a long period of time, and you might not notice it.', '1. Gastrointestinal conditions such as ulcers, hemorrhoids, gastritis (inflammation of your stomach), and cancer<br/>\r\n\r\n2. Non-steroidal anti-inflammatory drugs (NSAIDs) such as aspirin or ibuprofen, which can cause ulcers and gastritis<br/>\r\n\r\n3. A woman’s period, especially if you have a heavy menstruation (or heavy period). This can be associated with fibroids.<br/>\r\n4. Post-trauma or post-surgery as well.<br/>', 'Treatment for anemia usually involves taking iron supplements and making changes to your diet. If the underlying cause of iron deficiency is loss of blood - other than from menstruation - the source of the bleeding must be located and stopped. This may involve surgery.'),
(2, 'decreased or faulty red blood cell production', 'With this type of anemia, your body may not create enough blood cells, or they may not work the way they should. This can happen because there’s something wrong with your red blood cells or because you don’t have enough minerals and vitamins for your red blood cells to form normally. \r\nParasitic organisms.\r\nThe most commonly identified causes of acute diarrhea in the US are the bacteria Salmonella, Campylobacter, Shigella and Shiga toxin-producing Escherichia coli.\r\nThere are cases of chronic diarrhea that are labeled \"functional\" because they cannot be not explained by structural or biochemical abnormalities.\r\nIn the developed world, irritable bowel syndrome (IBS) is the most common cause of functional diarrhea\r\n\r\n', '1. Bone marrow and stem cell problems.<br/>\r\n		2. Iron-deficiency anemia.<br/>\r\n		3. Sickle cell anemia.<br/>\r\n		4. Vitamin-deficiency anemia, specifically b12 or folate.<br/><br>\r\n		Bone marrow and stem cell problems may keep your body from producing enough red blood cells. Some of the stem cells in the marrow that’s in the center of your bones will develop into red blood cells. If there aren’t enough stem cells, if they don’t work right, or if they’re replaced by other cells such as cancer cells, you might get anemia.<br><br>\r\n		Iron-deficiency anemia happens because you don’t have enough of the mineral iron in your body. Your bone marrow needs iron to make hemoglobin, the part of the red blood cell that takes oxygen to your organs. <br><br>\r\n		Sickle cell anemia is a disorder that, in the U.S., affects mainly African Americans and Hispanic Americans. Your red blood cells, which are usually round, become crescent-shaped because of a problem in your genes. Anemia results when the red blood cells break down quickly, so oxygen doesn’t get to your organs. The crescent-shaped red blood cells can also get stuck in tiny blood vessels and cause pain.<br><br>\r\n		Vitamin-deficiency anemia can happen when you aren’t getting enough vitamin B12 and folate. You need these two vitamins to make red blood cells. This kind of anemia can be caused by:<br>Dietary deficiency: If you eat little or no meat, you might not get enough vitamin B12. If you overcook vegetables or don’t eat enough of them, you might not get enough folate.<br>Megaloblastic anemia: When you don’t get enough vitamin B12, folate, or both<br>Pernicious anemia: When your body doesn’t absorb enough vitamin B12<br>', '1)If you have aplastic anemia, you might need medication, blood transfusions (in which you get blood from another person), or a bone marrow transplant (in which you get a donor’s stem cells).<br>\r\n			2)If you have iron-deficiency anemia, you’ll probably need to take iron supplements and change your diet.<br>\r\n			3)Sickle cell anemia treatment includes painkillers, folic acid supplements, intermittent antibiotics or oxygen therapy. A drug. called hydroxyurea (Droxia, Hydrea, Siklos) is often prescribed to decrease sickle cell pain crises (complicated mechanism). The medication called voxelator (Oxbryta) whichcan help your red blood cells keep their proper shape. Crizanlizumab-tmca (Adakveo) can keep the blood cells from sticking together and blocking vessels. L-glutamine oral powder (Endari) can cut down on your trips to the hospital for pain and also guard against a condition called acute chest syndrome. <br>\r\n			4)If you have a vitamin B12 or folate deficiency, you will be prescribed supplements.<br>'),
(3, 'destruction of red blood cells', 'When red blood cells are fragile and can’t handle the stress of traveling through your body, they may burst, causing what’s called hemolytic anemia. You might have this condition at birth, or it could come later.', '1. An attack by your immune system, as with lupus. This can happen to anyone, even a baby still in the womb or a newborn. That’s called hemolytic disease of the newborn.<br/>\r\n			2. Conditions that can be passed down through your genes, such as sickle cell anemia, thalassemia, and thrombotic thrombocytopenic purpura (TTP)<br/>\r\n			3. Enlarged spleen. This can, in rare cases, trap red blood cells and destroy them too early.<br/>\r\n			4.Something that puts strain on your body, such as infections, drugs, snake or spider venom, or certain foods<br/>\r\n			5. Toxins from advanced liver or kidney disease<br/>\r\n			6. Vascular grafts, prosthetic heart valves, tumors, severe burns, being around certain chemicals, severe hypertension, and clotting disorders<br/>\r\n		', 'If you have this type of anemia ie(hemolytic anemia) , you might need medication that will hold back your immune system. Your primary care doctor may refer you to a doctor who specializes in vascular problems.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`Did`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `Did` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
