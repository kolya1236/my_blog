-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 20 2018 г., 19:18
-- Версия сервера: 10.0.36-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `text` text NOT NULL,
  `img` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `text`, `img`) VALUES
(1, 'Title 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. In repellendus reprehenderit magni placeat minima architecto provident dolorem porro vitae. Earum totam pariatur error unde sint laborum id deserunt possimus labore?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit maxime obcaecati vel tenetur nam fugit ipsum, ea non similique quas veniam quaerat explicabo facere, consectetur delectus provident natus illum soluta!', 'img/post_img_1.png'),
(2, 'Title 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. In repellendus reprehenderit magni placeat minima architecto provident dolorem porro vitae. Earum totam pariatur error unde sint laborum id deserunt possimus labore?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit maxime obcaecati vel tenetur nam fugit ipsum, ea non similique quas veniam quaerat explicabo facere, consectetur delectus provident natus illum soluta!', 'img/post_img_2.png'),
(3, 'Title 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. In repellendus reprehenderit magni placeat minima architecto provident dolorem porro vitae. Earum totam pariatur error unde sint laborum id deserunt possimus labore?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit maxime obcaecati vel tenetur nam fugit ipsum, ea non similique quas veniam quaerat explicabo facere, consectetur delectus provident natus illum soluta!', 'img/post_img_3.png'),
(4, 'Title 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. In repellendus reprehenderit magni placeat minima architecto provident dolorem porro vitae. Earum totam pariatur error unde sint laborum id deserunt possimus labore?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit maxime obcaecati vel tenetur nam fugit ipsum, ea non similique quas veniam quaerat explicabo facere, consectetur delectus provident natus illum soluta!', 'img/post_img_2.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
