-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 02:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olive`
--

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chats` varchar(3000) NOT NULL,
  `type` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`chat_id`, `user_id`, `chats`, `type`, `time`) VALUES
(508, 673, 'HI', 'user', '2022-08-29 20:55:32'),
(509, 673, 'Hello How Are You ?', 'bot', '2022-08-29 20:55:32'),
(510, 673, 'FINE', 'user', '2022-08-29 20:55:36'),
(511, 673, 'OH..! Thats Great', 'bot', '2022-08-29 20:55:36'),
(512, 673, 'NAME', 'user', '2022-08-29 20:55:44'),
(513, 673, 'My Name Is Olive and I am Here To Help You', 'bot', '2022-08-29 20:55:44'),
(514, 673, 'help', 'user', '2022-08-29 20:56:15'),
(515, 673, 'OH! I got it then please enter your branch for further process', 'bot', '2022-08-29 20:56:15'),
(516, 673, 'help', 'user', '2022-08-29 20:56:41'),
(517, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 20:56:41'),
(518, 673, 'result', 'user', '2022-08-29 20:56:53'),
(519, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 20:56:53'),
(520, 673, 'result', 'user', '2022-08-29 21:00:45'),
(521, 673, 'result', 'bot', '2022-08-29 21:00:45'),
(522, 673, 'hii', 'user', '2022-08-29 21:02:00'),
(523, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:02:00'),
(524, 673, 'result', 'user', '2022-08-29 21:06:32'),
(525, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-29 21:06:32'),
(526, 673, 'result', 'user', '2022-08-29 21:13:07'),
(527, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-29 21:13:07'),
(528, 673, 'marks', 'user', '2022-08-29 21:14:09'),
(529, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-29 21:14:09'),
(530, 673, 'score', 'user', '2022-08-29 21:14:34'),
(531, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-29 21:14:34'),
(532, 673, 'hii', 'user', '2022-08-29 21:15:22'),
(533, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:15:22'),
(534, 673, 'hi', 'user', '2022-08-29 21:15:25'),
(535, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:15:25'),
(536, 673, 'hii', 'user', '2022-08-29 21:15:56'),
(537, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:15:56'),
(538, 673, 'result', 'user', '2022-08-29 21:16:00'),
(539, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-29 21:16:00'),
(540, 673, 'fine', 'user', '2022-08-29 21:16:09'),
(541, 673, 'OH..! Thats Great', 'bot', '2022-08-29 21:16:09'),
(542, 673, 'bye', 'user', '2022-08-29 21:16:15'),
(543, 673, 'Very Good Bye....Happy To See You Again', 'bot', '2022-08-29 21:16:15'),
(544, 673, 'help', 'user', '2022-08-29 21:16:21'),
(545, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 21:16:21'),
(546, 673, 'help', 'user', '2022-08-29 21:17:24'),
(547, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 21:17:24'),
(548, 673, 'hi', 'user', '2022-08-29 21:17:30'),
(549, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:17:30'),
(550, 673, 'what is your name', 'user', '2022-08-29 21:17:40'),
(551, 673, 'My Name Is Olive and I am Here To Help You', 'bot', '2022-08-29 21:17:40'),
(552, 673, 'i want help', 'user', '2022-08-29 21:17:47'),
(553, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 21:17:47'),
(554, 673, 'hi', 'user', '2022-08-29 21:19:45'),
(555, 673, 'Hello How Are You ?', 'bot', '2022-08-29 21:19:45'),
(556, 673, 'fine', 'user', '2022-08-29 21:19:52'),
(557, 673, 'OH..! Thats Great', 'bot', '2022-08-29 21:19:52'),
(558, 673, 'what is your name', 'user', '2022-08-29 21:20:06'),
(559, 673, 'My Name Is Olive and I am Here To Help You', 'bot', '2022-08-29 21:20:06'),
(560, 673, 'help me', 'user', '2022-08-29 21:20:14'),
(561, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-29 21:20:14'),
(562, 673, 'hi', 'user', '2022-08-30 04:54:59'),
(563, 673, 'Hello How Are You ?', 'bot', '2022-08-30 04:54:59'),
(564, 673, 'fine', 'user', '2022-08-30 04:55:02'),
(565, 673, 'OH..! Thats Great', 'bot', '2022-08-30 04:55:02'),
(566, 673, 'what is your name', 'user', '2022-08-30 04:55:10'),
(567, 673, 'My Name Is Olive and I am Here To Help You', 'bot', '2022-08-30 04:55:10'),
(568, 673, 'i need help', 'user', '2022-08-30 04:55:19'),
(569, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 04:55:19'),
(570, 673, 'result', 'user', '2022-08-30 04:59:31'),
(571, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 04:59:31'),
(572, 673, 'hi', 'user', '2022-08-30 05:06:18'),
(573, 673, 'Hello How Are You ?', 'bot', '2022-08-30 05:06:18'),
(574, 673, 'fine', 'user', '2022-08-30 05:06:22'),
(575, 673, 'OH..! Thats Great', 'bot', '2022-08-30 05:06:22'),
(576, 673, 'what name', 'user', '2022-08-30 05:06:31'),
(577, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 05:06:31'),
(578, 673, 'hi', 'user', '2022-08-30 05:12:37'),
(579, 673, 'Hello How Are You ?', 'bot', '2022-08-30 05:12:37'),
(580, 673, 'result', 'user', '2022-08-30 05:12:41'),
(581, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 05:12:41'),
(582, 673, 'result', 'user', '2022-08-30 05:12:51'),
(583, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 05:12:51'),
(584, 673, 'help', 'user', '2022-08-30 05:13:05'),
(585, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 05:13:05'),
(586, 673, 'hi', 'user', '2022-08-30 05:34:47'),
(587, 673, 'Hello How Are You ?', 'bot', '2022-08-30 05:34:47'),
(588, 673, 'fine', 'user', '2022-08-30 05:34:56'),
(589, 673, 'OH..! Thats Great', 'bot', '2022-08-30 05:34:56'),
(590, 673, 'fine', 'user', '2022-08-30 05:36:38'),
(591, 673, 'OH..! Thats Great', 'bot', '2022-08-30 05:36:38'),
(592, 673, 'help', 'user', '2022-08-30 05:38:28'),
(593, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 05:38:28'),
(594, 673, 'result', 'user', '2022-08-30 05:40:41'),
(595, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 05:40:41'),
(596, 673, 'when', 'user', '2022-08-30 05:41:56'),
(597, 673, 'Your ESE Exam Is Scheduled On 15th January 2023', 'bot', '2022-08-30 05:41:56'),
(598, 673, 'date', 'user', '2022-08-30 05:42:44'),
(599, 673, 'Your ESE Exam Is Scheduled On 15th January 2023', 'bot', '2022-08-30 05:42:44'),
(600, 673, 'mse', 'user', '2022-08-30 05:45:38'),
(601, 673, 'Your ESE Exam Is Scheduled On 15th January 2023 and MSE is on 25th December 2022 ', 'bot', '2022-08-30 05:45:38'),
(602, 673, 'fees', 'user', '2022-08-30 05:53:35'),
(603, 673, 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nplease contact @ycce.help.com for payment', 'bot', '2022-08-30 05:53:35'),
(604, 673, 'fees', 'user', '2022-08-30 05:54:20'),
(605, 673, 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nplease contact ycce@help.com for payment', 'bot', '2022-08-30 05:54:20'),
(606, 673, 'fee', 'user', '2022-08-30 05:55:24'),
(607, 673, 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nPlease contact help@ycce.com for payment', 'bot', '2022-08-30 05:55:24'),
(608, 673, 'fee', 'user', '2022-08-30 05:56:40'),
(609, 673, 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nPlease contact Ganesh Yenurkar Sir for payment', 'bot', '2022-08-30 05:56:40'),
(610, 673, 'fees', 'user', '2022-08-30 05:57:32'),
(611, 673, 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nPlease contact Ganesh Yenurkar Sir for payment\r\n9503972345', 'bot', '2022-08-30 05:57:32'),
(612, 673, 'who', 'user', '2022-08-30 06:00:02'),
(613, 673, 'You Can Contact Gauri Dhopavkar for Exam Queries.\r\nFirst Floor Admin Block YCCE', 'bot', '2022-08-30 06:00:02'),
(614, 673, 'who', 'user', '2022-08-30 06:00:50'),
(615, 673, 'You Can Contact Gauri Dhopavkar for Exam Queries.\r\nFirst Floor Admin Block YCCE\r\n9998674378', 'bot', '2022-08-30 06:00:50'),
(616, 673, 'grievance', 'user', '2022-08-30 06:02:00'),
(617, 673, 'You Can Contact Gauri Dhopavkar for Exam Grievances.\r\nFirst Floor Admin Block YCCE\r\n9998674378', 'bot', '2022-08-30 06:02:00'),
(618, 673, 'result', 'user', '2022-08-30 06:07:44'),
(619, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:07:44'),
(620, 673, 'result', 'user', '2022-08-30 06:08:22'),
(621, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:08:22'),
(622, 673, 'result', 'user', '2022-08-30 06:09:38'),
(623, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:09:38'),
(624, 673, 'res', 'user', '2022-08-30 06:11:12'),
(625, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:11:12'),
(626, 673, 'res', 'user', '2022-08-30 06:13:19'),
(627, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:13:19'),
(628, 673, 'result', 'user', '2022-08-30 06:14:10'),
(629, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:14:10'),
(630, 673, 'result', 'user', '2022-08-30 06:15:08'),
(631, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:15:08'),
(632, 673, 'result', 'user', '2022-08-30 06:15:44'),
(633, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:15:44'),
(634, 673, 'result', 'user', '2022-08-30 06:16:14'),
(635, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:16:14'),
(636, 673, 'result', 'user', '2022-08-30 06:17:05'),
(637, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:17:05'),
(638, 673, 'result', 'user', '2022-08-30 06:17:32'),
(639, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:17:32'),
(640, 673, 'pass', 'user', '2022-08-30 06:20:54'),
(641, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 06:20:54'),
(642, 673, 'result', 'user', '2022-08-30 06:22:10'),
(643, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:22:10'),
(644, 673, 'result', 'user', '2022-08-30 06:22:53'),
(645, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:22:53'),
(646, 673, 'result', 'user', '2022-08-30 06:23:34'),
(647, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:23:34'),
(648, 673, 'result', 'user', '2022-08-30 06:24:20'),
(649, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 06:24:20'),
(650, 673, 'result', 'user', '2022-08-30 10:34:14'),
(651, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:34:14'),
(652, 673, 'result', 'user', '2022-08-30 10:45:14'),
(653, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:45:14'),
(654, 673, 're', 'user', '2022-08-30 10:46:16'),
(655, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:46:16'),
(656, 673, 'r', 'user', '2022-08-30 10:47:40'),
(657, 673, 'My Name Is Olive and I am Here To Help You', 'bot', '2022-08-30 10:47:40'),
(658, 673, 'result', 'user', '2022-08-30 10:48:34'),
(659, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:48:34'),
(660, 673, 'result', 'user', '2022-08-30 10:49:18'),
(661, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:49:18'),
(662, 673, 'result', 'user', '2022-08-30 10:49:59'),
(663, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:49:59'),
(664, 673, 'result', 'user', '2022-08-30 10:50:48'),
(665, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:50:48'),
(666, 673, 'result', 'user', '2022-08-30 10:52:26'),
(667, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:52:26'),
(668, 673, 'hi', 'user', '2022-08-30 10:54:49'),
(669, 673, 'Hello How Are You ?', 'bot', '2022-08-30 10:54:49'),
(670, 673, 'result', 'user', '2022-08-30 10:54:53'),
(671, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:54:53'),
(672, 673, 'res', 'user', '2022-08-30 10:55:34'),
(673, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:55:34'),
(674, 673, 'result', 'user', '2022-08-30 10:56:44'),
(675, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:56:44'),
(676, 673, 'result', 'user', '2022-08-30 10:57:12'),
(677, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:57:12'),
(678, 673, 'result', 'user', '2022-08-30 10:58:01'),
(679, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:58:01'),
(680, 673, 'result', 'user', '2022-08-30 10:58:49'),
(681, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:58:49'),
(682, 673, 'result', 'user', '2022-08-30 10:59:56'),
(683, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 10:59:56'),
(684, 673, 'result', 'user', '2022-08-30 11:02:53'),
(685, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:02:53'),
(686, 673, 'result', 'user', '2022-08-30 11:03:59'),
(687, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:03:59'),
(688, 673, 'result', 'user', '2022-08-30 11:04:46'),
(689, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:04:46'),
(690, 673, 'result', 'user', '2022-08-30 11:05:25'),
(691, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:05:25'),
(692, 673, 'result', 'user', '2022-08-30 11:06:53'),
(693, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:06:53'),
(694, 673, 'result', 'user', '2022-08-30 11:08:03'),
(695, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:08:03'),
(696, 673, 'result', 'user', '2022-08-30 11:08:21'),
(697, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:08:21'),
(698, 673, 'result', 'user', '2022-08-30 11:08:41'),
(699, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:08:41'),
(700, 673, 'result', 'user', '2022-08-30 11:09:11'),
(701, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:09:11'),
(702, 673, 'result', 'user', '2022-08-30 11:09:28'),
(703, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:09:28'),
(704, 673, 'result', 'user', '2022-08-30 11:09:45'),
(705, 673, 'Ohh I Got It.. This Is Your Result..', 'bot', '2022-08-30 11:09:45'),
(706, 673, 'thanks', 'user', '2022-08-30 11:09:50'),
(707, 673, 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot', '2022-08-30 11:09:50'),
(708, 673, 'thanks', 'user', '2022-08-30 11:11:21'),
(709, 673, 'Ohh No problem Thats My Duty \r\nHappy To Serve You', 'bot', '2022-08-30 11:11:21'),
(710, 673, 'hi', 'user', '2022-08-30 11:11:27'),
(711, 673, 'Hello How Are You ?', 'bot', '2022-08-30 11:11:27'),
(712, 673, 'hi', 'user', '2022-08-30 11:12:45'),
(713, 673, 'Hello How Are You ?', 'bot', '2022-08-30 11:12:45'),
(714, 673, 'result', 'user', '2022-08-30 11:12:55'),
(715, 673, 'result', 'user', '2022-08-30 11:13:01'),
(716, 673, 'thanks', 'user', '2022-08-30 11:13:19'),
(717, 673, 'Ohh No problem Thats My Duty \r\nHappy To Serve You', 'bot', '2022-08-30 11:13:19'),
(718, 673, 'thanks', 'user', '2022-08-30 11:13:56'),
(719, 673, 'Ohh No problem Thats My Duty \r\nHappy To Serve You', 'bot', '2022-08-30 11:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `olivetalk`
--

CREATE TABLE `olivetalk` (
  `talk_id` int(11) NOT NULL,
  `que` varchar(3000) NOT NULL,
  `ans` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `olivetalk`
--

INSERT INTO `olivetalk` (`talk_id`, `que`, `ans`) VALUES
(4356, 'Hello||hi||hiii||holla||helo||hiii||hiiii', 'Hello How Are You ?'),
(4357, 'bye||gn', 'Very Good Bye....Happy To See You Again'),
(4358, 'what is your name ?||your name||tell your name', 'My Name Is Olive and I am Here To Help You'),
(4359, 'good||fine', 'OH..! Thats Great'),
(4396, 'Hello||hi||hiii||holla||helo||hiii||hiiii', 'Hi ! I am olive your personal assistance for grievance.'),
(4397, 'result||marks||score', 'result'),
(4398, 'exam||when||date||ESE||MSE', 'Your ESE Exam Is Scheduled On 15th January 2023 and MSE is on 25th December 2022 '),
(4399, 'fees||amount||fee', 'You Have To Pay 500 rupeees for rechecking Of Paper.\r\nPlease contact Ganesh Yenurkar Sir for payment\r\n9503972345'),
(4400, 'who||visit||enquiry||grievance', 'You Can Contact Gauri Dhopavkar for Exam Grievances.\r\nFirst Floor,Admin Block,YCCE\r\n9998674378'),
(4401, 'thanks||thank you||thanks a lot||lot||thank', 'Ohh No problem Thats My Duty,\r\nHappy To Serve You');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `q_id` int(11) NOT NULL,
  `u_id` int(21) NOT NULL,
  `q_que` varchar(3000) NOT NULL,
  `q_ans` varchar(3000) NOT NULL DEFAULT 'pending',
  `q_status` tinyint(1) NOT NULL DEFAULT 0,
  `q_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`q_id`, `u_id`, `q_que`, `q_ans`, `q_status`, `q_time`) VALUES
(4367, 20010903, 'I have Doubt In M4 Paper', 'good', 1, '2022-08-29 23:46:50'),
(4368, 20010903, 'I have Doubt In M4 Paper', 'hello', 1, '2022-08-29 23:46:50'),
(4372, 20010903, 'Use s or s to create actionable list group items with hover, disabled, and active states by adding .list-group-item-action. We separate these pseudo-classes to ensure list groups made of non-interactive elements (like s or s) don’t provide a click or tap affordance.', 'ok i solved your problem', 1, '2022-08-30 02:48:22'),
(4373, 20010903, 'i need help with transcript exam', 'i have solved Your Query', 1, '2022-08-30 10:25:56'),
(4374, 20010903, 'problem Add to list Share ... If you are facing something that will be difficult to handle, you have a problem on your hands. A problem is a roadblock in a', 'i have solved Your Query...', 1, '2022-08-30 10:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `u_name` varchar(50) DEFAULT NULL,
  `u_no` int(11) DEFAULT NULL,
  `reg_no` int(11) NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `section` varchar(1) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `seatnumber` int(11) DEFAULT NULL,
  `sgpa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`u_name`, `u_no`, `reg_no`, `branch`, `year`, `sem`, `section`, `gender`, `u_email`, `mobileno`, `seatnumber`, `sgpa`) VALUES
('DAHIWADE ANURAG ANILRAO', 398, 1, 'ctech', 3, 5, 'A', 'MALE', '1@1.com', '9432381495', 282820, 9),
('BARVE AKSHAY AJAY', 33, 20010033, 'ctech', 3, 5, 'A', 'MALE', 'barveakshay09@gmail.com', '9422281983', 282814, 9),
('CHAVHAN ANURAG ARUN', 38, 20010186, 'ctech', 3, 5, 'A', 'MALE', 'ANUSTAR763@GMAIL.COM', '9422381495', 282819, 9),
('BOBADE AMIT PRAMOD', 34, 20010275, 'ctech', 3, 5, 'A', 'MALE', 'bobdeamit18@gmail.com', '9422281945', 282815, 9),
('LANDE ANKIT VIJAY', 36, 20010326, 'ctech', 3, 5, 'A', 'MALE', 'ankitlande03@gmail.com', '9422281995', 282817, 9),
('JAGNE AMITABH LOKESH', 35, 20010340, 'ctech', 3, 5, 'A', 'MALE', 'amitabh192003@gmail.com', '9422281915', 282816, 8),
('THENGDI ARYAN ALOK', 40, 20010456, 'ctech', 3, 5, 'A', 'MALE', 'athengdi24@gmail.com', '9632381495', 282821, 8),
('YALLEWAR HARSHAL SURESH', 44, 20010463, 'ctech', 3, 5, 'A', 'MALE', 'harshalyallewar125@gmail.com', '9422281986', 282812, 9),
('TARONE ANUP RAMU', 37, 20010766, 'ctech', 3, 5, 'A', 'MALE', 'anuptarone22@gmail.com', '9422281495', 282818, 8),
('GUDADHE ADITYA DIWAKAR', 31, 20010807, 'ctech', 3, 5, 'A', 'MALE', 'adigudadhe@gmail.com', '7028871659', 282813, 9),
('Tushar Charde', 97, 20010903, 'Computer Technology', 3, 5, 'A', 'male', '20010903@ycce.in', '9503971867', 123456, 9),
('ADITYA ARUN GHORPADE\r\n', 32, 20010920, 'ctech', 3, 5, 'A', 'MALE', 'adighorpade29@gmail.com\r\n', '9422281985', 282814, 9),
('DAHIWADE ANURAG ANILRAO', 39, 21030098, 'ctech', 3, 5, 'A', 'MALE', 'anurag.dahiwade@gmail.com', '9432381495', 282820, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `reg_no` int(11) NOT NULL,
  `Computer Networks` int(11) NOT NULL,
  `Mathematics - 4` int(11) NOT NULL,
  `Economics` int(11) NOT NULL,
  `Web Development` int(11) NOT NULL,
  `Operating Systems` int(11) NOT NULL,
  `Data Structures` int(11) NOT NULL,
  `Lab DSA` text NOT NULL,
  `Lab OS` text NOT NULL,
  `Status` tinyint(11) NOT NULL,
  `CGPA` int(11) NOT NULL,
  `Exam_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`reg_no`, `Computer Networks`, `Mathematics - 4`, `Economics`, `Web Development`, `Operating Systems`, `Data Structures`, `Lab DSA`, `Lab OS`, `Status`, `CGPA`, `Exam_Name`) VALUES
(20010033, 90, 85, 67, 94, 78, 88, 'A', 'B', 1, 9, 'ESE (Odd)'),
(20010034, 90, 85, 67, 94, 78, 88, 'A', 'B', 1, 9, 'ESE (Odd)'),
(20010186, 80, 95, 77, 84, 98, 68, 'B', 'B', 1, 9, 'ESE (Odd)'),
(20010275, 86, 94, 73, 81, 91, 63, 'A', 'A', 1, 8, 'ESE (Odd)'),
(20010326, 87, 97, 71, 83, 92, 62, 'B', 'A', 1, 9, 'ESE (Odd)'),
(20010340, 70, 90, 79, 89, 91, 62, 'B', 'B', 1, 10, 'ESE (Odd)'),
(20010456, 83, 92, 72, 83, 91, 66, 'A', 'A', 1, 8, 'ESE (Odd)'),
(20010463, 80, 93, 91, 88, 89, 86, 'A', 'A', 1, 10, 'ESE (Odd)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `olivetalk`
--
ALTER TABLE `olivetalk`
  ADD PRIMARY KEY (`talk_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`reg_no`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `olivetalk`
--
ALTER TABLE `olivetalk`
  MODIFY `talk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4402;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4375;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
