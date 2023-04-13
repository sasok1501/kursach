-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2023 г., 16:00
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kursach_m`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `telephon` int NOT NULL,
  `adress` varchar(50) NOT NULL,
  `gorod` varchar(50) NOT NULL,
  `pochta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `FIO`, `telephon`, `adress`, `gorod`, `pochta`) VALUES
(1, 'Родин Степан Михайлович', 880055535, 'город Истра, пер. Ладыгина, 55', ' город Истра', 'netteittereucra-6716@yopmail.com'),
(2, 'Левина Алия Владиславовна', 892415151, 'Калужская область, 38', 'город Орехово-Зуево', 'lekahucruque-4943@yopmail.com'),
(3, 'Данилова Елизавета Григорьевна', 894512411, 'Самарская область, проезд Будапештсткая, 16', 'город Видное', 'hennoiseutoiza-1276@yopmail.com'),
(4, 'Васильев Дмитрий Александрович', 891241241, 'Белгородская область, въезд Ломоносова, 46', 'город Дорохово', 'creuraneppigou-2927@yopmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `postavshik`
--

CREATE TABLE `postavshik` (
  `id` int NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `telephon` int NOT NULL,
  `data_post` date NOT NULL,
  `nazvamie_comp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `postavshik`
--

INSERT INTO `postavshik` (`id`, `FIO`, `adress`, `telephon`, `data_post`, `nazvamie_comp`) VALUES
(1, 'Олейникова Анна Ивановна', 'город Шаховская, пер. Бухарестская, 50', 812412451, '2023-03-01', 'Одуваньчики ООО'),
(2, 'Уткина Алина Владимировна', 'Иркутская область, город Одинцово, въезд Славы, 69', 890025535, '2023-02-01', 'Тульпаны ООО'),
(3, 'Кольцова Василиса Ивановна', 'город Павловский Посад, пр. Ленина, 32', 892155530, '2023-02-01', 'Герои ООО'),
(4, 'Васильев Дмитрий Александрович', 'Омская область, город Можайск, шоссе Сталина, 85', 891412451, '2023-01-11', 'Слава ООО');

-- --------------------------------------------------------

--
-- Структура таблицы `sklad`
--

CREATE TABLE `sklad` (
  `id` int NOT NULL,
  `nazvanie` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `data_post_zak` date NOT NULL,
  `data_vipoln_zak` date NOT NULL,
  `id_upravl` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sklad`
--

INSERT INTO `sklad` (`id`, `nazvanie`, `adress`, `data_post_zak`, `data_vipoln_zak`, `id_upravl`) VALUES
(1, 'Синий', 'город Красногорск, наб. Будапештсткая, 03', '2023-04-01', '2023-04-04', 1),
(2, 'Красный', 'город Дмитров, бульвар Ленина, 29', '2023-03-16', '2023-03-22', 2),
(3, 'Зеленый', 'город Серебряные Пруды, ул. Гоголя, 55', '2023-03-31', '2023-04-03', 3),
(4, 'Желтый', 'город Одинцово, шоссе Гагарина, 31', '2023-02-09', '2023-02-17', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudnik`
--

CREATE TABLE `sotrudnik` (
  `id` int NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `data_rozh` date NOT NULL,
  `dolzhnost` varchar(50) NOT NULL,
  `otdel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sotrudnik`
--

INSERT INTO `sotrudnik` (`id`, `FIO`, `adress`, `data_rozh`, `dolzhnost`, `otdel`) VALUES
(1, 'Столярова Дарья Лукинична', ' город Чехов, въезд Бухарестская, 99', '1984-01-19', 'Менеджер по продажам', 'Менеджмент'),
(2, 'Моисеев Георгий Андреевич', 'город Павловский Посад, пр. Космонавтов, 42', '1985-04-01', 'Директор', 'Дирекция'),
(3, 'Лосев Никита Андреевич', 'город Красногорск, въезд Ломоносова, 43', '1993-02-09', 'Консультант', 'Тех. Поддержка'),
(4, 'Парфенов Олег Александрович', 'город Чехов, шоссе Балканская, 72', '1994-08-04', 'Программист', 'IT-отдела');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int NOT NULL,
  `nazvanie` varchar(50) NOT NULL,
  `kolvo` varchar(50) NOT NULL,
  `data_post` date NOT NULL,
  `cena` varchar(50) NOT NULL,
  `id_sklada` int NOT NULL,
  `id_postavki` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `nazvanie`, `kolvo`, `data_post`, `cena`, `id_sklada`, `id_postavki`) VALUES
(1, 'Шевроны', '1000 шт.', '2023-04-04', '1000000 руб.', 2, 2),
(2, 'Банкноты', '10000 шт.', '2023-03-23', '10000000 руб.', 1, 1),
(3, 'Серебро и другие ценные металлы', '10000 тон', '2023-04-01', '10000000 руб.', 4, 4),
(4, 'Картины', '100 шт.', '2023-01-21', '1000000 руб.', 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `upravl`
--

CREATE TABLE `upravl` (
  `id` int NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `telephon` int NOT NULL,
  `adress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `upravl`
--

INSERT INTO `upravl` (`id`, `FIO`, `telephon`, `adress`) VALUES
(1, 'Некрасова Стефания Степановна', 914125157, ' город Серебряные Пруды, спуск Ломоносова, 87'),
(2, 'Дмитриева Лидия Даниэльевна', 812511581, ' город Серебряные Пруды, спуск Ладыгина, 47'),
(3, 'Бондарева Софья Сергеевна', 815151572, 'город Раменское, пл. Бухарестская, 71'),
(4, 'Черная Василиса Ярославовна', 841515621, 'город Шаховская, пл. Чехова, 17');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int NOT NULL,
  `id_tovar` int NOT NULL,
  `id_client` int NOT NULL,
  `id_sotrudnik` int NOT NULL,
  `data_post` date NOT NULL,
  `data_vipoln` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `id_tovar`, `id_client`, `id_sotrudnik`, `data_post`, `data_vipoln`) VALUES
(1, 2, 2, 2, '2023-03-08', '2023-03-17'),
(2, 1, 1, 1, '2023-02-24', '2023-02-28'),
(3, 3, 3, 3, '2023-01-10', '2023-03-06'),
(4, 4, 4, 4, '2022-10-17', '2022-11-17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `postavshik`
--
ALTER TABLE `postavshik`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sklad`
--
ALTER TABLE `sklad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_upravl` (`id_upravl`);

--
-- Индексы таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postavki` (`id_postavki`),
  ADD KEY `id_sklada` (`id_sklada`);

--
-- Индексы таблицы `upravl`
--
ALTER TABLE `upravl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_sotrudnik` (`id_sotrudnik`),
  ADD KEY `id_tovar` (`id_tovar`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `postavshik`
--
ALTER TABLE `postavshik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sklad`
--
ALTER TABLE `sklad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `upravl`
--
ALTER TABLE `upravl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sklad`
--
ALTER TABLE `sklad`
  ADD CONSTRAINT `sklad_ibfk_1` FOREIGN KEY (`id_upravl`) REFERENCES `upravl` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `tovar_ibfk_1` FOREIGN KEY (`id_postavki`) REFERENCES `postavshik` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tovar_ibfk_2` FOREIGN KEY (`id_sklada`) REFERENCES `sklad` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`id_sotrudnik`) REFERENCES `sotrudnik` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `zakaz_ibfk_3` FOREIGN KEY (`id_tovar`) REFERENCES `tovar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
