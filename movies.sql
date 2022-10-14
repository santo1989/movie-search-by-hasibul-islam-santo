-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2022 at 04:19 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aims`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year` int(11) NOT NULL,
  `Summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Short_Summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Genres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMDBID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Runtime` int(11) NOT NULL,
  `YouTube_Trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rating` double(8,2) NOT NULL,
  `Movie_Poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Writers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cast` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Title`, `Year`, `Summary`, `Short_Summary`, `Genres`, `IMDBID`, `Runtime`, `YouTube_Trailer`, `Rating`, `Movie_Poster`, `Director`, `Writers`, `Cast`) VALUES
('The Redeemed and the Dominant: Fittest on Earth', 2018, 'In 2017 the fittest athletes on Earth took on the unknown and unknowable during four of the most intense days of competition in CrossFit Games history. \"The Redeemed and the Dominant: Fittest on Earth \" captures all the drama as top athletes resembling ch', 'In 2017 the fittest athletes on Earth took on the unknown and unknowable during four of the most intense days of competition in CrossFit Games history. &quot;The Redeemed and the Dominant: ...', 'Documentary', 'tt8144778', 119, 'rlZ5MG-E2Ls', 7.10, 'https://picsum.photos/1280/720', 'Heber Cannon', 'Heber Cannon', 'Dave Castro|Justin Bergh'),
('First Match', 2018, 'Hardened by years in foster care, a teenage girl from Brooklyn\'s Brownsville neighborhood decides that joining the boys wrestling team is the only way back to her estranged father.', 'Hardened by years in foster care, a teenage girl from Brooklyn\'s Brownsville neighborhood decides that joining the boys wrestling team is the only way back to her estranged father.', 'Drama|Sport', 'tt6061074', 102, 'Xva2FWNdcD0', 6.10, 'https://picsum.photos/1280/720', 'Olivia Newman', 'Olivia Newman', 'Colman Domingo|Elvire Emanuelle|Yahya Abdul-Mateen II'),
('Re: Born', 2016, 'A legend covert soldier with a mysterious past now decides to once again unleash his beast inside of him to stand up for what he cares about.', 'A legend covert soldier with a mysterious past now decides to once again unleash his beast inside of him to stand up for what he cares about.', 'Action|Crime|Drama|War', 'tt5678110', 115, 'uxM6vsMNwXs', 6.00, 'https://picsum.photos/1280/720', 'YÃ»ji Shimomura', 'Tak Sakaguchi', 'Takumi Saitoh'),
('A Moving Romance', 2017, 'Interior designer Olivia Wilson loses her job in New York. With newfound time on her hands she decides to head home to California to surprise her dad, Neil for the 25th anniversary of the family business, Wilson Family Movers. Upon arrival she meets the n', 'After inheriting her family\'s moving company, a young woman (Ambyr Childers) starts to clash with the manager (Keegan Allen) who thought he was going to take over.', 'Family', 'tt5039242', 90, '', 6.10, 'https://picsum.photos/1280/720', 'W.D. Hogan', 'Alex Greenfield', 'Ambyr Childers|Keegan Allen'),
('Happy End', 2017, 'Gradually succumbing to dementia, George Laurent, the octogenarian patriarch of the Laurents, an affluent upper-bourgeois family, is uncomfortably sharing his palatial manor in Calais, the heart of the infamous migrant jungle, with his twice-married son, ', 'A drama about a family set in Calais with the European refugee crisis as the backdrop.', 'Drama', 'tt5304464', 107, 'cZ1ajZRn8YM', 6.90, 'https://picsum.photos/1280/720', 'Michael Haneke', 'Michael Haneke', 'Isabelle Huppert|Jean-Louis Trintignant|Mathieu Kassovitz'),
('After the Storm', 2016, 'Dwelling on his past glory as a prize-winning author, Ryota (Hiroshi Abe) wastes the money he makes as a private detective on gambling and can barely pay child support. After the death of his father, his aging mother (Kirin Kiki) and beautiful ex-wife (Yo', 'After the death of his father, a private detective struggles to find child support money and reconnect with his son and ex-wife.', 'Comedy|Drama', 'tt5294966', 118, 'i0lr6hfRG9s', 7.40, 'https://picsum.photos/1280/720', 'Hirokazu Koreeda', 'Hirokazu Koreeda', 'Hiroshi Abe|Satomi Kobayashi|YÃ´ko Maki'),
('Mary and the Witch\'s Flower', 2017, 'Mary is an ordinary young girl stuck in the country with her Great-Aunt Charlotte and seemingly no adventures or friends in sight. She follows a mysterious cat into the nearby forest, where she discovers an old broomstick and the strange Fly-by-Night flow', 'Based on &quot;The Little Broomstick&quot; by Mary Stewart, a strange flower grants a girl magic powers.', 'Adventure|Animation|Family|Fantasy', 'tt6336356', 102, '888z3ku4t3I', 6.80, 'https://picsum.photos/1280/720', 'Hiromasa Yonebayashi', 'Mary Stewart', 'Hana Sugisaki|RyÃ»nosuke Kamiki'),
('The Last Movie Star', 2017, 'An aging former movie star is forced to face the reality that his glory days are behind him. On its surface, the film is a tale about faded fame. At its core, it\'s a universal story about growing old.', 'An aging former movie star is forced to face the reality that his glory days are behind him. On its surface, the film is a tale about faded fame. At its core, it\'s a universal story about growing old.', 'Drama', 'tt5836316', 94, '1-f8O118hnE', 6.80, 'https://picsum.photos/1280/720', 'Adam Rifkin', 'Adam Rifkin', 'Ariel Winter|Burt Reynolds|Clark Duke'),
('Lucky', 2017, 'Lucky is an old US Navy veteran of rigid habits and attitudes in a small town. When his routine is interrupted by a sudden collapse at home, Lucky finds himself realizing that his remarkably healthy old age is going to face an inevitable decline and he ha', 'The spiritual journey of a ninety-year-old atheist.', 'Comedy|Drama', 'tt5859238', 88, '2KLLkj84GAo', 7.40, 'https://picsum.photos/1280/720', 'John Carroll Lynch', 'Logan Sparks', 'David Lynch|Harry Dean Stanton|Ron Livingston'),
('Phantom Thread', 2017, 'Set in the glamour of 1950s post-war London, renowned dressmaker Reynolds Woodcock (Daniel Day-Lewis) and his sister Cyril (Lesley Manville) are at the center of British fashion, dressing royalty, movie stars, heiresses, socialites, debutants, and dames w', 'Set in 1950\'s London, Reynolds Woodcock is a renowned dressmaker whose fastidious life is disrupted by a young, strong-willed woman, Alma, who becomes his muse and lover.', 'Drama|Romance', 'tt5776858', 130, 'asbg5u5j0YI', 7.70, 'https://picsum.photos/1280/720', 'Paul Thomas Anderson', 'Paul Thomas Anderson', 'Daniel Day-Lewis|Lesley Manville|Vicky Krieps'),
('Molly\'s Game', 2017, 'Molly Bloom, a beautiful young Olympic-class skier, ran the world\'s most exclusive high-stakes poker game for a decade before being arrested in the middle of the night by 17 FBI agents wielding automatic weapons. Her players included Hollywood royalty, sp', 'The true story of Molly Bloom, an Olympic-class skier who ran the world\'s most exclusive high-stakes poker game and became an FBI target.', 'Biography|Crime|Drama', 'tt4209788', 140, 'Vu4UPet8Nyc', 7.50, 'https://picsum.photos/1280/720', 'Aaron Sorkin', 'Aaron Sorkin', 'Idris Elba|Jessica Chastain|Kevin Costner'),
('The Third Murder', 2017, 'Misumi has a criminal record dating back many years and is now under the spotlight again. It looks like an open and shut case, for Misumi has confessed to the new charge. Enter prominent lawyer Shigemori, who harbours other ideas, which could mean the dif', 'A courtroom drama centered around the murder of a factory president.', 'Drama|Mystery', 'tt6410564', 124, 'Plr3V4TYBQE', 6.80, 'https://picsum.photos/1280/720', 'Hirokazu Koreeda', 'Hirokazu Koreeda', 'KÃ´ji Yakusho|Masaharu Fukuyama|Shinnosuke Mitsushima'),
('The Coming Days', 2010, 'In the near future the dreams of three adult siblings living in Germany are fractured by difficult romantic relationships and the unwitting involvement with an underground organization through a growing worldwide panic over the few remaining oil fields in', 'In the near future the dreams of three adult siblings living in Germany are fractured by difficult romantic relationships and the unwitting involvement with an underground organization ...', 'Drama|Sci-Fi', 'tt1545985', 125, '', 6.30, 'https://picsum.photos/1280/720', 'Lars Kraume', 'Lars Kraume', 'August Diehl|Bernadette Heerwagen|Daniel BrÃ¼hl'),
('Ichi the Killer', 2001, 'When a Yakuza boss named Anjo disappears with 300 million yen, his chief henchman, a sadomasochistic man named Kakihara, and the rest of his mob goons go looking for him. After capturing and torturing a rival Yakuza member looking for answers, they soon r', 'As sadomasochistic yakuza enforcer Kakihara searches for his missing boss he comes across Ichi, a repressed and psychotic killer who may be able to inflict levels of pain that Kakihara has only dreamed of.', 'Action|Comedy|Crime|Drama|Horror', 'tt0296042', 129, 'iFUMtrAMknE', 7.10, 'https://picsum.photos/1280/720', 'Takashi Miike', 'Sakichi SatÃ´', 'Nao Ohmori|Shin\'ya Tsukamoto|Tadanobu Asano'),
('The Boy with the Topknot', 2017, 'One-off drama based on the critically acclaimed memoirs of British journalist Sathnam Sanghera. A touching, humorous and emotional rites-of-passage story.', 'One-off drama based on the critically acclaimed memoirs of British journalist Sathnam Sanghera. A touching, humorous and emotional rites-of-passage story.', 'Drama', 'tt5757738', 90, 'RLEnTBG7ncQ', 6.70, 'https://picsum.photos/1280/720', 'Lynsey Miller', 'Mick Ford', 'Anupam Kher|Deepti Naval|Sacha Dhawan'),
('Small Town Crime', 2017, 'An alcoholic ex-cop (Hawkes) finds the body of a young woman and, through an act of self-redemption, becomes hell-bent on finding the killer but unwittingly puts his family in danger and gets caught up with several dark characters along the way.', 'An alcoholic ex-cop (Hawkes) finds the body of a young woman and, through an act of self-redemption, becomes hell-bent on finding the killer but unwittingly puts his family in danger and ...', 'Crime|Mystery|Thriller', 'tt5751998', 91, 'WakqZghIX_g', 6.60, 'https://picsum.photos/1280/720', 'Eshom Nelms', 'Eshom Nelms', 'Anthony Anderson|John Hawkes|Octavia Spencer'),
('Control', 2017, 'The once unconditional friendship between police officers Vincke and Verstuyft hits a very rough patch when they come up against a series of gruesome murders. Complicating matters even further, a survivor of the killer drives a wedge between them when Ver', 'The once unconditional friendship between police officers Vincke and Verstuyft hits a very rough patch when they come up against a series of gruesome murders. Complicating matters even ...', 'Action|Crime|Drama|Thriller', 'tt1727497', 127, 'xF99vVf8yv0', 6.30, 'https://picsum.photos/1280/720', 'Jan Verheyen', 'Jef Geeraerts', 'Greg Timmermans|Koen De Bouw|Werner De Smedt'),
('Dear Etranger', 2017, 'A 40-year old man sees his life change when his wife gets pregnant. He already has a daughter from his first marriage whom he rarely sees and two step-daughters, from his wife\'s first marriage. The youngest of his step-daughters is looking forward to a ba', 'A 40-year old man sees his life change when his wife gets pregnant. He already has a daughter from his first marriage whom he rarely sees and two step-daughters, from his wife\'s first ...', 'Drama', 'tt5797164', 0, 'F-FPd35FqAY', 7.00, 'https://picsum.photos/1280/720', 'Yukiko Mishima', 'Kiyoshi Shigematsu', 'Miu Arai|Rena Tanaka|Tadanobu Asano');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
