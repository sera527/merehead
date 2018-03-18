-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.freemysqlhosting.net
-- Generation Time: Mar 16, 2018 at 01:31 PM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql11226891`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_pages` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `name`, `number_of_pages`, `description`, `image`, `owner_id`, `created_at`, `updated_at`) VALUES
(5, 'Стівен Кінг', 'Зелена миля', 432, 'Пол Еджкомб — колишній наглядач федеральної в’язниці штату Луїзіана «Холодна гора», а нині — мешканець будинку для літніх людей. Більш ніж півстоліття тому він скоїв те, чого досі не може собі вибачити. І тягар минулого знову й знову повертає його до 1932 року. Тоді до блоку Е, в якому утримували засуджених до смертної кари злочинців, прибули «новенькі». Серед тих, на кого чекала сумнозвісна Зелена миля — останній шлях, що проходить засуджений до місця страти, — був Джон Коффі. Його визнали винним у зґвалтуванні та вбивстві двох сестер-близнючок Кори й Кеті Деттерик. Поволі Пол усвідомлює, що цей незграбний велетень, який скидався на сумирну дитину, не може бути монстром-убивцею. Але як врятувати того, хто вже ступив на Зелену милю?', 'images/books/stiven-king-zelena-milya.jpg', 1, '2018-03-16 12:01:35', '2018-03-16 12:01:35'),
(6, 'Ешлі Венс', 'Ілон Маск. Tesla, SpaceX і шлях у фантастичне майбутнє', 428, 'Ілон Маск — людина-легенда, видатний інженер, винахідник, американський підприємець та інвестор. Журналісти називають його «Нікола Тесла 21 століття». Його особистість оточена таємницями і здогадками. Щоб відрізнити правду від вигадок і варто купити книгу «Ілон Маск. Tesla SpaceX і шлях у фантастичне майбутнє» (Ешлі Венс).', 'images/books/eshli-vens-ilon-mask-tesla-spacex-i-shlyakh-u-fantastichne-maybutne.png', 1, '2018-03-16 12:05:08', '2018-03-16 12:05:08'),
(7, 'Сергій Жадан', 'Ворошиловград', 320, 'Пил доріг, іржаві бензоколонки, втомлені автобуси, старі \"хрущовки\"... Місто, що залишилось десь поза часом. Дивні люди, які займаються дивними справами. Абсурд - та водночас \"справжність\" існування... Герман повертається до містечка свого дитинства у степах Донбасу, щоб знайти зниклого брата і врятувати його бізнес. Проте реальність виявляється хиткою, майбутнє - невизначеним, а минуле викликає надто гостру ностальгію... Лірична і жорстка, соціальна і метафізична, меланхолійна і реалістична історія, сповнена безмежних просторів, спогадів, сновидь, мрій, джазу та духу справжньої дружби.', 'images/books/sergiy-zhadan-voroshilovgrad.jpg', 1, '2018-03-16 12:08:14', '2018-03-16 12:08:14'),
(8, 'Ернест Хемінґвей', 'Старий і море', 104, 'Никто не завидовал жизни старого кубинского рыбака Сантьяги. В родной деревне он прослыл чудаком и люди его сторонились. Но не Манолин — соседский мальчишка, для которого Сантьяго стал настоящим другом.\r\nОднажды старый рыбак отправился в море и ему улыбнулась удача — огромная рыба попалась на крючок. Теперь ему придется испытать всю свою волю чтобы удержать её...\r\nПритча «Старий і море» расскажет читателям об истинной дружбе, вере, упорстве и о том, какая сила может скрываться за обманчивой внешностью.', 'images/books/ernest-khemingvey-stariy-i-more.jpg', 1, '2018-03-16 12:10:40', '2018-03-16 12:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_15_202102_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Serhii', 'serpos95@gmail.com', '$2y$10$0wNcF39RiVsGfXdqIZxM..VoM7gqeVqPHc4ioE16L3o4WbVJ.m.ey', 'uAiwhZt0yGfKKol4HrHhikaIDezePEqF2cX5T0f66VOfIEAHk2AQpatFlvXp', '2018-03-15 23:24:53', '2018-03-15 23:24:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
