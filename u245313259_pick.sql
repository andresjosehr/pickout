-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-11-2019 a las 09:14:43
-- Versión del servidor: 10.2.27-MariaDB
-- Versión de PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u245313259_pick`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_cars`
--

CREATE TABLE `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` tinyint(4) DEFAULT 0,
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `baggage` tinyint(4) DEFAULT 0,
  `door` tinyint(4) DEFAULT 0,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '500.00', '167.00', 1, NULL, NULL, NULL, 5, 'Auto', 9, 4, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(2, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 0, NULL, NULL, NULL, 6, 'Auto', 8, 4, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '300.00', '0.00', 0, NULL, NULL, NULL, 3, 'Auto', 7, 4, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 0, NULL, NULL, NULL, 6, 'Auto', 7, 4, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '300.00', '0.00', 0, NULL, NULL, NULL, 8, 'Auto', 3, 4, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '400.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 6, 4, 'publish', 1, 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '200.00', '0.00', 1, NULL, NULL, NULL, 9, 'Auto', 4, 4, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '600.00', '0.00', 0, NULL, NULL, NULL, 9, 'Auto', 4, 4, 'publish', 1, 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '450.00', '0.00', 0, NULL, NULL, NULL, 3, 'Auto', 10, 4, 'publish', 1, 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '199.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 9, 4, 'publish', 1, 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '250.00', '0.00', 1, NULL, NULL, NULL, 4, 'Auto', 6, 4, 'publish', 1, 4, NULL, NULL, '2019-11-26 09:29:04', NULL);
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '350.00', '0.00', 0, NULL, NULL, NULL, 9, 'Auto', 9, 4, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 153, 135, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '400.00', '0.00', 0, NULL, NULL, NULL, 7, 'Auto', 9, 4, 'publish', 1, 5, NULL, NULL, '2019-11-26 09:29:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_car_dates`
--

CREATE TABLE `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_car_term`
--

CREATE TABLE `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 61, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(2, 62, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(3, 64, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(4, 65, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(5, 66, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(6, 67, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(7, 68, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(8, 61, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(9, 63, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(10, 64, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(11, 65, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(12, 66, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(13, 67, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(14, 61, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(15, 62, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(16, 64, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(17, 65, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(18, 66, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(19, 67, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(20, 61, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(21, 63, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(22, 64, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(23, 66, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(24, 67, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(25, 68, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(26, 61, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(27, 62, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(28, 64, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(29, 65, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(30, 66, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(31, 67, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(32, 68, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(33, 61, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(34, 62, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(35, 63, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(36, 64, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(37, 65, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(38, 67, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(39, 68, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(40, 62, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(41, 63, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(42, 64, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(43, 65, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(44, 66, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(45, 67, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(46, 68, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(47, 61, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(48, 63, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(49, 64, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(50, 65, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(51, 68, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(52, 61, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(53, 62, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(54, 63, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(55, 64, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(56, 65, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(57, 67, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(58, 68, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(59, 61, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(60, 62, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(61, 65, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(62, 66, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(63, 67, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(64, 61, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(65, 64, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(66, 66, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(67, 67, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(68, 68, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(69, 61, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(70, 62, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(71, 64, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(72, 65, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(73, 66, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(74, 68, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(75, 61, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(76, 62, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(77, 63, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(78, 64, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(79, 65, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(80, 66, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(81, 67, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(82, 68, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(83, 69, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(84, 70, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(85, 71, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(86, 72, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(87, 73, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(88, 74, 1, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(89, 69, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(90, 70, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(91, 71, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(92, 72, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(93, 73, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(94, 74, 2, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(95, 69, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(96, 70, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(97, 71, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(98, 72, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(99, 73, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(100, 74, 3, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(101, 69, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(102, 70, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(103, 71, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(104, 72, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(105, 73, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(106, 74, 4, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(107, 69, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(108, 70, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(109, 71, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(110, 72, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(111, 73, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(112, 74, 5, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(113, 69, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(114, 70, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(115, 71, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(116, 72, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(117, 73, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(118, 74, 6, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(119, 69, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(120, 70, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(121, 71, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(122, 72, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(123, 73, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(124, 74, 7, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(125, 69, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(126, 70, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(127, 71, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(128, 72, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(129, 73, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(130, 74, 8, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(131, 69, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(132, 70, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(133, 71, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(134, 72, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(135, 73, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(136, 74, 9, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(137, 69, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(138, 70, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(139, 71, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(140, 72, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(141, 73, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(142, 74, 10, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(143, 69, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(144, 70, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(145, 71, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(146, 72, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(147, 73, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(148, 74, 11, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(149, 69, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(150, 70, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(151, 71, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(152, 72, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(153, 73, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(154, 74, 12, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(155, 69, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(156, 70, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(157, 71, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(158, 72, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(159, 73, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05'),
(160, 74, 13, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_car_translations`
--

CREATE TABLE `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotels`
--

CREATE TABLE `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 93, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '300.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 95, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 96, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 95, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 96, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 93, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '700.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 95, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 94, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 94, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 93, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_rooms`
--

CREATE TABLE `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` tinyint(4) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 9, 3, 127, 5, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 7, 4, 127, 8, 5, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 8, 2, 127, 6, 1, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 8, 3, 127, 10, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 6, 3, 127, 10, 3, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 10, 5, 127, 8, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 5, 2, 127, 9, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 7, 5, 127, 6, 5, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 5, 3, 127, 5, 1, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 8, 5, 127, 10, 4, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 7, 3, 127, 8, 4, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 5, 5, 127, 7, 5, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 8, 3, 127, 6, 1, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 7, 2, 127, 10, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 6, 3, 127, 6, 5, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 7, 2, 127, 8, 5, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 8, 5, 127, 6, 1, 'publish', 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 6, 3, 127, 7, 1, 'publish', 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 6, 4, 127, 8, 1, 'publish', 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 10, 5, 127, 8, 1, 'publish', 6, NULL, NULL, '2019-11-26 09:29:04', NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 10, 3, 127, 7, 3, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 10, 2, 127, 5, 2, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 6, 2, 127, 5, 2, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 8, 5, 127, 10, 5, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 4, 127, 8, 5, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 5, 2, 127, 7, 3, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 6, 3, 127, 8, 4, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 10, 3, 127, 6, 4, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 8, 2, 127, 8, 5, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 10, 4, 127, 9, 4, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 2, 127, 8, 4, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 3, 127, 7, 1, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 4, 127, 5, 3, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 9, 4, 127, 5, 3, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 5, 127, 7, 2, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 3, 127, 6, 4, 'publish', 1, NULL, NULL, '2019-11-26 09:29:04', NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 6, 5, 127, 6, 5, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 5, 127, 7, 1, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 6, 3, 127, 10, 5, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 4, 127, 6, 5, 'publish', 5, NULL, NULL, '2019-11-26 09:29:04', NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 8, 3, 127, 7, 3, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 8, 3, 127, 10, 2, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 7, 2, 127, 9, 2, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 5, 4, 127, 5, 4, 'publish', 4, NULL, NULL, '2019-11-26 09:29:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_room_bookings`
--

CREATE TABLE `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_room_dates`
--

CREATE TABLE `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_room_term`
--

CREATE TABLE `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 56, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(2, 57, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(3, 58, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(4, 59, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(5, 60, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(6, 56, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(7, 57, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(8, 58, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(9, 59, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(10, 60, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(11, 56, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(12, 57, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(13, 58, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(14, 59, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(15, 60, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(16, 56, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(17, 57, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(18, 58, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(19, 59, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(20, 60, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(21, 56, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(22, 58, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(23, 60, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(24, 56, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(25, 57, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(26, 58, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(27, 59, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(28, 60, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(29, 56, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(30, 57, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(31, 59, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(32, 60, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(33, 56, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(34, 57, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(35, 59, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(36, 60, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(37, 57, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(38, 58, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(39, 59, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(40, 60, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(41, 56, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(42, 57, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(43, 59, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(44, 60, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(45, 56, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(46, 57, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(47, 58, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(48, 59, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(49, 60, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(50, 56, 12, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(51, 57, 12, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(52, 58, 12, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(53, 59, 12, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(54, 56, 13, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(55, 60, 13, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(56, 56, 14, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(57, 57, 14, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(58, 58, 14, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(59, 59, 14, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(60, 60, 14, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(61, 56, 15, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(62, 58, 15, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(63, 59, 15, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(64, 60, 15, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(65, 56, 16, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(66, 57, 16, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(67, 58, 16, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(68, 57, 17, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(69, 59, 17, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(70, 60, 17, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(71, 57, 18, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(72, 58, 18, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(73, 59, 18, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(74, 56, 19, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(75, 58, 19, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(76, 59, 19, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(77, 60, 19, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(78, 56, 20, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(79, 57, 20, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(80, 58, 20, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(81, 60, 20, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(82, 56, 21, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(83, 57, 21, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(84, 58, 21, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(85, 59, 21, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(86, 60, 21, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(87, 57, 22, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(88, 58, 22, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(89, 60, 22, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(90, 56, 23, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(91, 57, 23, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(92, 58, 23, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(93, 59, 23, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(94, 60, 23, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(95, 57, 24, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(96, 58, 24, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(97, 60, 24, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(98, 56, 25, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(99, 57, 25, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(100, 58, 25, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(101, 59, 25, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(102, 60, 25, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(103, 56, 26, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(104, 57, 26, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(105, 58, 26, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(106, 59, 26, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(107, 60, 26, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(108, 56, 27, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(109, 58, 27, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(110, 59, 27, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(111, 60, 27, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(112, 56, 28, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(113, 57, 28, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(114, 58, 28, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(115, 59, 28, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(116, 60, 28, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(117, 56, 29, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(118, 57, 29, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(119, 58, 29, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(120, 59, 29, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(121, 60, 29, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(122, 56, 30, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(123, 57, 30, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(124, 58, 30, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(125, 59, 30, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(126, 56, 31, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(127, 57, 31, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(128, 58, 31, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(129, 59, 31, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(130, 60, 31, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(131, 56, 32, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(132, 57, 32, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(133, 58, 32, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(134, 56, 33, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(135, 57, 33, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(136, 58, 33, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(137, 59, 33, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(138, 56, 34, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(139, 57, 34, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(140, 59, 34, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(141, 56, 35, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(142, 57, 35, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(143, 58, 35, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(144, 59, 35, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(145, 60, 35, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(146, 56, 36, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(147, 57, 36, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(148, 59, 36, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(149, 56, 37, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(150, 58, 37, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(151, 60, 37, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(152, 56, 38, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(153, 57, 38, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(154, 58, 38, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(155, 59, 38, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(156, 60, 38, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(157, 56, 39, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(158, 57, 39, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(159, 58, 39, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(160, 60, 39, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(161, 56, 40, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(162, 57, 40, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(163, 58, 40, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(164, 59, 40, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(165, 60, 40, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(166, 56, 41, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(167, 57, 41, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(168, 59, 41, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(169, 60, 41, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(170, 56, 42, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(171, 57, 42, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(172, 59, 42, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(173, 60, 42, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(174, 56, 43, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(175, 57, 43, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(176, 58, 43, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(177, 59, 43, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(178, 60, 43, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(179, 56, 44, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(180, 57, 44, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(181, 58, 44, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(182, 59, 44, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(183, 60, 44, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_room_translations`
--

CREATE TABLE `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_term`
--

CREATE TABLE `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 42, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(2, 43, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(3, 44, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(4, 45, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(5, 46, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(6, 47, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(7, 48, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(8, 42, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(9, 43, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(10, 44, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(11, 45, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(12, 46, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(13, 47, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(14, 48, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(15, 42, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(16, 43, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(17, 44, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(18, 45, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(19, 46, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(20, 47, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(21, 48, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(22, 42, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(23, 43, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(24, 44, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(25, 46, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(26, 47, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(27, 42, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(28, 43, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(29, 44, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(30, 45, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(31, 47, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(32, 48, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(33, 42, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(34, 43, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(35, 44, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(36, 45, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(37, 46, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(38, 47, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(39, 48, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(40, 42, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(41, 43, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(42, 45, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(43, 46, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(44, 47, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(45, 48, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(46, 42, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(47, 43, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(48, 44, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(49, 45, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(50, 46, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(51, 47, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(52, 48, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(53, 43, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(54, 44, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(55, 45, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(56, 46, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(57, 47, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(58, 48, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(59, 42, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(60, 43, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(61, 44, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(62, 46, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(63, 47, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(64, 48, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(65, 42, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(66, 43, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(67, 44, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(68, 45, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(69, 46, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(70, 47, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(71, 48, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(72, 50, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(73, 51, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(74, 52, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(75, 53, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(76, 55, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(77, 49, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(78, 51, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(79, 52, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(80, 49, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(81, 51, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(82, 52, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(83, 53, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(84, 55, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(85, 49, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(86, 50, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(87, 53, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(88, 54, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(89, 55, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(90, 49, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(91, 50, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(92, 51, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(93, 52, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(94, 53, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(95, 49, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(96, 51, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(97, 52, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(98, 55, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(99, 52, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(100, 53, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(101, 55, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(102, 49, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(103, 50, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(104, 51, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(105, 52, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(106, 54, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(107, 55, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(108, 49, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(109, 50, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(110, 52, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(111, 55, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(112, 49, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(113, 51, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(114, 53, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(115, 49, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(116, 50, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(117, 51, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(118, 52, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(119, 53, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(120, 55, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_hotel_translations`
--

CREATE TABLE `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 106, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 7, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(2, 1, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(3, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(4, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(5, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(6, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(7, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(8, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(9, 4, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(10, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(11, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(12, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(13, 5, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(14, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(15, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(16, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(17, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(18, 7, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(19, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(20, 7, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(21, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(22, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(23, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(24, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(25, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(26, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(27, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(28, 11, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(29, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(30, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(31, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(32, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(33, 12, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(34, 12, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(35, 12, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(36, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(37, 13, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(38, 13, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(39, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(40, 14, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(41, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(42, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(43, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(44, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(45, 16, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(46, 16, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(47, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(48, 1, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(49, 1, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(50, 2, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(51, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(52, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(53, 3, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(54, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(55, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(56, 4, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(57, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(58, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(59, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(60, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 8, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(61, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(62, 6, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 7, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(63, 6, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(64, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(65, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(66, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(67, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 9, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(68, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 10, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(69, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(70, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 7, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(71, 8, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 15, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 4),
(72, 9, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(73, 9, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 13, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 5),
(74, 10, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(75, 10, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(76, 10, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 11, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(77, 10, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 16, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 1),
(78, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 12, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(79, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 14, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(80, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:03', 7, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', 6),
(81, 1, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(82, 1, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 9, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(83, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 8, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(84, 1, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(85, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(86, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(87, 3, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(88, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(89, 3, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(90, 4, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(91, 4, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 9, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(92, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(93, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(94, 6, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(95, 6, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(96, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(97, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(98, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(99, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(100, 8, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(101, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(102, 8, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(103, 8, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(104, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(105, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(106, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(107, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 8, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(108, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(109, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(110, 11, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(111, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(112, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(113, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(114, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(115, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 9, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(116, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(117, 2, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(118, 2, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(119, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 9, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(120, 3, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 8, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(121, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(122, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(123, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(124, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(125, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 8, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(126, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(127, 5, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(128, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(129, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 1),
(130, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(131, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(132, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(133, 6, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 11, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(134, 7, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 15, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(135, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(136, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 11, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(137, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(138, 9, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(139, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(140, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(141, 10, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 11, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(142, 10, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(143, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(144, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 11, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(145, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(146, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 13, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(147, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 7, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 4),
(148, 12, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(149, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 11, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(150, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 14, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(151, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(152, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 10, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 6),
(153, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 16, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(154, 13, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 12, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5),
(155, 13, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-11-26 06:29:04', 8, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(2, 1, 1, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(3, 1, 1, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(4, 1, 1, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(5, 1, 1, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(6, 2, 1, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(7, 2, 1, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(8, 2, 1, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(9, 2, 1, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(10, 2, 1, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(11, 3, 2, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(12, 3, 2, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(13, 3, 2, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(14, 3, 2, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(15, 3, 2, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(16, 4, 2, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(17, 4, 2, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(18, 4, 2, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(19, 4, 2, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(20, 4, 2, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(21, 5, 2, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(22, 5, 2, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(23, 5, 2, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(24, 5, 2, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(25, 5, 2, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(26, 6, 3, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(27, 6, 3, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(28, 6, 3, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(29, 6, 3, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(30, 6, 3, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(31, 7, 3, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(32, 7, 3, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(33, 7, 3, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(34, 7, 3, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(35, 7, 3, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(36, 8, 4, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(37, 8, 4, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(38, 8, 4, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(39, 8, 4, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(40, 8, 4, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(41, 9, 4, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(42, 9, 4, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(43, 9, 4, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(44, 9, 4, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(45, 9, 4, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(46, 10, 4, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(47, 10, 4, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(48, 10, 4, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(49, 10, 4, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(50, 10, 4, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(51, 11, 5, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(52, 11, 5, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(53, 11, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(54, 11, 5, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(55, 11, 5, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(56, 12, 5, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(57, 12, 5, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(58, 12, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(59, 12, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(60, 12, 5, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(61, 13, 5, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(62, 13, 5, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(63, 13, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(64, 13, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(65, 13, 5, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(66, 14, 5, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(67, 14, 5, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(68, 14, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(69, 14, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(70, 14, 5, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(71, 15, 6, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(72, 15, 6, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(73, 15, 6, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(74, 15, 6, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(75, 15, 6, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(76, 16, 6, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(77, 16, 6, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(78, 16, 6, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(79, 16, 6, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(80, 16, 6, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(81, 17, 7, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(82, 17, 7, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(83, 17, 7, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(84, 17, 7, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(85, 17, 7, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(86, 18, 7, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(87, 18, 7, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(88, 18, 7, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(89, 18, 7, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(90, 18, 7, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(91, 19, 7, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(92, 19, 7, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(93, 19, 7, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(94, 19, 7, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(95, 19, 7, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(96, 20, 7, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(97, 20, 7, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(98, 20, 7, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(99, 20, 7, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(100, 20, 7, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(101, 21, 8, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(102, 21, 8, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(103, 21, 8, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(104, 21, 8, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(105, 21, 8, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(106, 22, 8, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(107, 22, 8, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(108, 22, 8, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(109, 22, 8, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(110, 22, 8, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(111, 23, 9, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(112, 23, 9, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(113, 23, 9, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(114, 23, 9, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(115, 23, 9, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(116, 24, 9, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(117, 24, 9, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(118, 24, 9, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(119, 24, 9, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(120, 24, 9, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(121, 25, 10, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(122, 25, 10, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(123, 25, 10, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(124, 25, 10, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(125, 25, 10, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(126, 26, 10, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(127, 26, 10, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(128, 26, 10, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(129, 26, 10, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(130, 26, 10, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(131, 27, 10, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(132, 27, 10, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(133, 27, 10, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(134, 27, 10, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(135, 27, 10, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(136, 28, 11, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(137, 28, 11, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(138, 28, 11, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(139, 28, 11, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(140, 28, 11, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(141, 29, 11, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(142, 29, 11, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(143, 29, 11, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(144, 29, 11, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(145, 29, 11, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(146, 30, 11, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(147, 30, 11, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(148, 30, 11, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(149, 30, 11, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(150, 30, 11, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(151, 31, 12, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(152, 31, 12, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(153, 31, 12, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(154, 31, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(155, 31, 12, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(156, 32, 12, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(157, 32, 12, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(158, 32, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(159, 32, 12, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(160, 32, 12, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(161, 33, 12, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(162, 33, 12, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(163, 33, 12, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(164, 33, 12, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(165, 33, 12, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(166, 34, 12, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(167, 34, 12, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(168, 34, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(169, 34, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(170, 34, 12, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(171, 35, 12, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(172, 35, 12, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(173, 35, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(174, 35, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(175, 35, 12, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(176, 36, 13, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(177, 36, 13, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(178, 36, 13, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(179, 36, 13, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(180, 36, 13, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(181, 37, 13, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(182, 37, 13, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(183, 37, 13, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(184, 37, 13, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(185, 37, 13, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(186, 38, 13, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(187, 38, 13, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(188, 38, 13, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(189, 38, 13, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(190, 38, 13, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(191, 39, 13, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(192, 39, 13, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(193, 39, 13, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(194, 39, 13, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(195, 39, 13, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(196, 40, 14, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(197, 40, 14, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(198, 40, 14, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(199, 40, 14, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(200, 40, 14, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(201, 41, 14, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(202, 41, 14, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(203, 41, 14, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(204, 41, 14, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(205, 41, 14, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(206, 42, 15, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(207, 42, 15, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(208, 42, 15, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(209, 42, 15, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(210, 42, 15, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(211, 43, 15, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(212, 43, 15, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(213, 43, 15, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(214, 43, 15, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(215, 43, 15, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(216, 44, 15, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(217, 44, 15, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(218, 44, 15, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(219, 44, 15, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(220, 44, 15, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(221, 45, 16, 'tour', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(222, 45, 16, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(223, 45, 16, 'tour', 'Friendliness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(224, 45, 16, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(225, 45, 16, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(226, 46, 16, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(227, 46, 16, 'tour', 'Organization', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(228, 46, 16, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(229, 46, 16, 'tour', 'Area Expert', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(230, 46, 16, 'tour', 'Safety', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(231, 47, 16, 'tour', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(232, 47, 16, 'tour', 'Organization', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(233, 47, 16, 'tour', 'Friendliness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(234, 47, 16, 'tour', 'Area Expert', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(235, 47, 16, 'tour', 'Safety', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(236, 48, 1, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(237, 48, 1, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(238, 48, 1, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(239, 48, 1, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(240, 48, 1, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(241, 49, 1, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(242, 49, 1, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(243, 49, 1, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(244, 49, 1, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(245, 49, 1, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(246, 50, 2, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(247, 50, 2, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(248, 50, 2, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(249, 50, 2, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(250, 50, 2, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(251, 51, 2, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(252, 51, 2, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(253, 51, 2, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(254, 51, 2, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(255, 51, 2, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(256, 52, 2, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(257, 52, 2, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(258, 52, 2, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(259, 52, 2, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(260, 52, 2, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(261, 53, 3, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(262, 53, 3, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(263, 53, 3, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(264, 53, 3, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(265, 53, 3, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(266, 54, 3, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(267, 54, 3, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(268, 54, 3, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(269, 54, 3, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(270, 54, 3, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(271, 55, 4, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(272, 55, 4, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(273, 55, 4, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(274, 55, 4, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(275, 55, 4, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(276, 56, 4, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(277, 56, 4, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(278, 56, 4, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(279, 56, 4, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(280, 56, 4, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(281, 57, 4, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(282, 57, 4, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(283, 57, 4, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(284, 57, 4, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(285, 57, 4, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(286, 58, 5, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(287, 58, 5, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(288, 58, 5, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(289, 58, 5, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(290, 58, 5, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(291, 59, 5, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(292, 59, 5, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(293, 59, 5, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(294, 59, 5, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(295, 59, 5, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(296, 60, 5, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(297, 60, 5, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(298, 60, 5, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(299, 60, 5, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(300, 60, 5, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(301, 61, 6, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(302, 61, 6, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(303, 61, 6, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(304, 61, 6, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(305, 61, 6, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(306, 62, 6, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(307, 62, 6, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(308, 62, 6, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(309, 62, 6, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(310, 62, 6, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(311, 63, 6, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(312, 63, 6, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(313, 63, 6, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(314, 63, 6, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(315, 63, 6, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(316, 64, 7, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(317, 64, 7, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(318, 64, 7, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(319, 64, 7, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(320, 64, 7, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(321, 65, 7, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(322, 65, 7, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(323, 65, 7, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(324, 65, 7, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(325, 65, 7, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(326, 66, 7, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(327, 66, 7, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(328, 66, 7, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(329, 66, 7, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(330, 66, 7, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(331, 67, 7, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(332, 67, 7, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(333, 67, 7, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(334, 67, 7, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(335, 67, 7, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(336, 68, 8, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(337, 68, 8, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(338, 68, 8, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(339, 68, 8, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(340, 68, 8, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(341, 69, 8, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(342, 69, 8, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(343, 69, 8, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(344, 69, 8, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(345, 69, 8, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(346, 70, 8, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(347, 70, 8, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(348, 70, 8, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(349, 70, 8, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(350, 70, 8, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(351, 71, 8, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(352, 71, 8, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(353, 71, 8, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(354, 71, 8, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(355, 71, 8, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(356, 72, 9, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(357, 72, 9, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(358, 72, 9, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(359, 72, 9, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(360, 72, 9, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(361, 73, 9, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(362, 73, 9, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(363, 73, 9, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(364, 73, 9, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(365, 73, 9, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(366, 74, 10, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(367, 74, 10, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(368, 74, 10, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(369, 74, 10, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(370, 74, 10, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(371, 75, 10, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(372, 75, 10, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(373, 75, 10, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(374, 75, 10, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(375, 75, 10, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(376, 76, 10, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(377, 76, 10, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(378, 76, 10, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(379, 76, 10, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(380, 76, 10, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(381, 77, 10, 'space', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(382, 77, 10, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(383, 77, 10, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(384, 77, 10, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(385, 77, 10, 'space', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(386, 78, 11, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(387, 78, 11, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(388, 78, 11, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(389, 78, 11, 'space', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(390, 78, 11, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(391, 79, 11, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(392, 79, 11, 'space', 'Location', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(393, 79, 11, 'space', 'Service', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(394, 79, 11, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(395, 79, 11, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(396, 80, 11, 'space', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(397, 80, 11, 'space', 'Location', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(398, 80, 11, 'space', 'Service', '5', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(399, 80, 11, 'space', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(400, 80, 11, 'space', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(401, 81, 1, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(402, 81, 1, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(403, 81, 1, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(404, 81, 1, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(405, 81, 1, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(406, 82, 1, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(407, 82, 1, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(408, 82, 1, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(409, 82, 1, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(410, 82, 1, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(411, 83, 1, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(412, 83, 1, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(413, 83, 1, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(414, 83, 1, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(415, 83, 1, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(416, 84, 1, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(417, 84, 1, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(418, 84, 1, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(419, 84, 1, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(420, 84, 1, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(421, 85, 2, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(422, 85, 2, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(423, 85, 2, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(424, 85, 2, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(425, 85, 2, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(426, 86, 2, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(427, 86, 2, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(428, 86, 2, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(429, 86, 2, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(430, 86, 2, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(431, 87, 3, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(432, 87, 3, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(433, 87, 3, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(434, 87, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(435, 87, 3, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(436, 88, 3, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(437, 88, 3, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(438, 88, 3, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(439, 88, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(440, 88, 3, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(441, 89, 3, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(442, 89, 3, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(443, 89, 3, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(444, 89, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(445, 89, 3, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(446, 90, 4, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(447, 90, 4, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(448, 90, 4, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(449, 90, 4, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(450, 90, 4, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(451, 91, 4, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(452, 91, 4, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(453, 91, 4, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(454, 91, 4, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(455, 91, 4, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(456, 92, 4, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(457, 92, 4, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(458, 92, 4, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(459, 92, 4, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(460, 92, 4, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(461, 93, 5, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(462, 93, 5, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(463, 93, 5, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(464, 93, 5, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(465, 93, 5, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(466, 94, 6, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(467, 94, 6, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(468, 94, 6, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(469, 94, 6, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(470, 94, 6, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(471, 95, 6, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(472, 95, 6, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(473, 95, 6, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(474, 95, 6, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(475, 95, 6, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(476, 96, 6, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(477, 96, 6, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(478, 96, 6, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(479, 96, 6, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(480, 96, 6, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(481, 97, 7, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(482, 97, 7, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(483, 97, 7, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(484, 97, 7, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(485, 97, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(486, 98, 7, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(487, 98, 7, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(488, 98, 7, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(489, 98, 7, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(490, 98, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(491, 99, 7, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(492, 99, 7, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(493, 99, 7, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(494, 99, 7, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(495, 99, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(496, 100, 8, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(497, 100, 8, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(498, 100, 8, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(499, 100, 8, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(500, 100, 8, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(501, 101, 8, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(502, 101, 8, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(503, 101, 8, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(504, 101, 8, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(505, 101, 8, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(506, 102, 8, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(507, 102, 8, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(508, 102, 8, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(509, 102, 8, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(510, 102, 8, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(511, 103, 8, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(512, 103, 8, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(513, 103, 8, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(514, 103, 8, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(515, 103, 8, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(516, 104, 9, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(517, 104, 9, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(518, 104, 9, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(519, 104, 9, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(520, 104, 9, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(521, 105, 9, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(522, 105, 9, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(523, 105, 9, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(524, 105, 9, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(525, 105, 9, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(526, 106, 9, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(527, 106, 9, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(528, 106, 9, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(529, 106, 9, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(530, 106, 9, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(531, 107, 10, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(532, 107, 10, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(533, 107, 10, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(534, 107, 10, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(535, 107, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(536, 108, 10, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(537, 108, 10, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(538, 108, 10, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(539, 108, 10, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(540, 108, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(541, 109, 10, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(542, 109, 10, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(543, 109, 10, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(544, 109, 10, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(545, 109, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(546, 110, 11, 'hotel', 'Sleep', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(547, 110, 11, 'hotel', 'Location', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(548, 110, 11, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(549, 110, 11, 'hotel', 'Clearness', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(550, 110, 11, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(551, 111, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(552, 111, 11, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(553, 111, 11, 'hotel', 'Service', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(554, 111, 11, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(555, 111, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(556, 112, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(557, 112, 11, 'hotel', 'Location', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(558, 112, 11, 'hotel', 'Service', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(559, 112, 11, 'hotel', 'Clearness', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(560, 112, 11, 'hotel', 'Rooms', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(561, 113, 1, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(562, 113, 1, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(563, 113, 1, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(564, 113, 1, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(565, 113, 1, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(566, 114, 1, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(567, 114, 1, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(568, 114, 1, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(569, 114, 1, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(570, 114, 1, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(571, 115, 1, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(572, 115, 1, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(573, 115, 1, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(574, 115, 1, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(575, 115, 1, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(576, 116, 2, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(577, 116, 2, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(578, 116, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(579, 116, 2, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(580, 116, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(581, 117, 2, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(582, 117, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(583, 117, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(584, 117, 2, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(585, 117, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(586, 118, 2, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(587, 118, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(588, 118, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(589, 118, 2, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(590, 118, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(591, 119, 3, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(592, 119, 3, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(593, 119, 3, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(594, 119, 3, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(595, 119, 3, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(596, 120, 3, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(597, 120, 3, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(598, 120, 3, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(599, 120, 3, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(600, 120, 3, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(601, 121, 3, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(602, 121, 3, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(603, 121, 3, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(604, 121, 3, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(605, 121, 3, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(606, 122, 3, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(607, 122, 3, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(608, 122, 3, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(609, 122, 3, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(610, 122, 3, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(611, 123, 4, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(612, 123, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(613, 123, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(614, 123, 4, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(615, 123, 4, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(616, 124, 4, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(617, 124, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(618, 124, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(619, 124, 4, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(620, 124, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(621, 125, 4, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(622, 125, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(623, 125, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(624, 125, 4, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(625, 125, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(626, 126, 4, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(627, 126, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(628, 126, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(629, 126, 4, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(630, 126, 4, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(631, 127, 5, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(632, 127, 5, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(633, 127, 5, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(634, 127, 5, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(635, 127, 5, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(636, 128, 5, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(637, 128, 5, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(638, 128, 5, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(639, 128, 5, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(640, 128, 5, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(641, 129, 5, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(642, 129, 5, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(643, 129, 5, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(644, 129, 5, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(645, 129, 5, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(646, 130, 6, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(647, 130, 6, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(648, 130, 6, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(649, 130, 6, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(650, 130, 6, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(651, 131, 6, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(652, 131, 6, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(653, 131, 6, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(654, 131, 6, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(655, 131, 6, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(656, 132, 6, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(657, 132, 6, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(658, 132, 6, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(659, 132, 6, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(660, 132, 6, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(661, 133, 6, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(662, 133, 6, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(663, 133, 6, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(664, 133, 6, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(665, 133, 6, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(666, 134, 7, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(667, 134, 7, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(668, 134, 7, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(669, 134, 7, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(670, 134, 7, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(671, 135, 7, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(672, 135, 7, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(673, 135, 7, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(674, 135, 7, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(675, 135, 7, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(676, 136, 8, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(677, 136, 8, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(678, 136, 8, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(679, 136, 8, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(680, 136, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(681, 137, 8, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(682, 137, 8, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(683, 137, 8, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(684, 137, 8, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(685, 137, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(686, 138, 9, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(687, 138, 9, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(688, 138, 9, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(689, 138, 9, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(690, 138, 9, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(691, 139, 9, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(692, 139, 9, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(693, 139, 9, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(694, 139, 9, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(695, 139, 9, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(696, 140, 9, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(697, 140, 9, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(698, 140, 9, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(699, 140, 9, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(700, 140, 9, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(701, 141, 10, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(702, 141, 10, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(703, 141, 10, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(704, 141, 10, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(705, 141, 10, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(706, 142, 10, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(707, 142, 10, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(708, 142, 10, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(709, 142, 10, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(710, 142, 10, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(711, 143, 10, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(712, 143, 10, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(713, 143, 10, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(714, 143, 10, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(715, 143, 10, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(716, 144, 10, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(717, 144, 10, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(718, 144, 10, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(719, 144, 10, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(720, 144, 10, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(721, 145, 11, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(722, 145, 11, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(723, 145, 11, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(724, 145, 11, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(725, 145, 11, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(726, 146, 11, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(727, 146, 11, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(728, 146, 11, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(729, 146, 11, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(730, 146, 11, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(731, 147, 11, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(732, 147, 11, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(733, 147, 11, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(734, 147, 11, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(735, 147, 11, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(736, 148, 12, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(737, 148, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(738, 148, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(739, 148, 12, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(740, 148, 12, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(741, 149, 12, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(742, 149, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(743, 149, 12, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(744, 149, 12, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(745, 149, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(746, 150, 12, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(747, 150, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(748, 150, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(749, 150, 12, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(750, 150, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(751, 151, 12, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(752, 151, 12, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(753, 151, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(754, 151, 12, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(755, 151, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(756, 152, 12, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(757, 152, 12, 'car', 'Comfortable', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(758, 152, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(759, 152, 12, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(760, 152, 12, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(761, 153, 13, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(762, 153, 13, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(763, 153, 13, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(764, 153, 13, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(765, 153, 13, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(766, 154, 13, 'car', 'Equipment', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(767, 154, 13, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(768, 154, 13, 'car', 'Climate Control', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(769, 154, 13, 'car', 'Facility', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(770, 154, 13, 'car', 'Aftercare', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(771, 155, 13, 'car', 'Equipment', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(772, 155, 13, 'car', 'Comfortable', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(773, 155, 13, 'car', 'Climate Control', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(774, 155, 13, 'car', 'Facility', '4', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(775, 155, 13, 'car', 'Aftercare', '5', 1, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_spaces`
--

CREATE TABLE `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `allow_children` tinyint(4) DEFAULT 0,
  `allow_infant` tinyint(4) DEFAULT 0,
  `max_guests` tinyint(4) DEFAULT 0,
  `bed` tinyint(4) DEFAULT 0,
  `bathroom` tinyint(4) DEFAULT 0,
  `square` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'LUXURY STUDIO', 'luxury-studio', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 63, 85, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '748.00', 1, 0, 0, 9, 7, 8, 127, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:03', NULL),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 84, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '900.00', '0.00', 0, 0, 0, 7, 5, 6, 127, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:03', NULL),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 85, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '650.00', '0.00', 0, 0, 0, 8, 6, 9, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:03', NULL),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 85, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '800.00', '0.00', 0, 0, 0, 10, 5, 2, 127, NULL, NULL, NULL, 'publish', 1, 4, NULL, NULL, '2019-11-26 09:29:03', NULL),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 85, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '220.00', '0.00', 1, 0, 0, 9, 7, 7, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:03', NULL),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 84, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '320.00', '0.00', 1, 0, 0, 9, 7, 10, 100, NULL, NULL, NULL, 'publish', 1, 5, NULL, NULL, '2019-11-26 09:29:03', NULL),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 84, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '260.00', 0, 0, 0, 9, 9, 6, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:03', NULL),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 84, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '500.00', '0.00', 1, 0, 0, 6, 6, 10, 124, NULL, NULL, NULL, 'publish', 1, 4, NULL, NULL, '2019-11-26 09:29:03', NULL),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 83, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '400.00', '350.00', 1, 0, 0, 8, 9, 1, 127, NULL, NULL, NULL, 'publish', 1, 5, NULL, NULL, '2019-11-26 09:29:03', NULL),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 85, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '250.00', '0.00', 1, 0, 0, 9, 4, 7, 127, NULL, NULL, NULL, 'publish', 1, 1, NULL, NULL, '2019-11-26 09:29:03', NULL),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '150.00', 0, 0, 0, 6, 3, 8, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_space_dates`
--

CREATE TABLE `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_space_term`
--

CREATE TABLE `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 26, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(2, 28, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(3, 29, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(4, 30, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(5, 31, 1, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(6, 26, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(7, 28, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(8, 29, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(9, 30, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(10, 31, 2, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(11, 26, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(12, 27, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(13, 31, 3, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(14, 27, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(15, 28, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(16, 29, 4, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(17, 27, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(18, 28, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(19, 29, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(20, 30, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(21, 31, 5, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(22, 26, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(23, 27, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(24, 28, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(25, 29, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(26, 31, 6, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(27, 26, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(28, 28, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(29, 29, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(30, 31, 7, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(31, 26, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(32, 27, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(33, 28, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(34, 29, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(35, 30, 8, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(36, 26, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(37, 27, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(38, 29, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(39, 30, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(40, 31, 9, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(41, 27, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(42, 28, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(43, 29, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(44, 31, 10, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(45, 26, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(46, 27, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(47, 28, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(48, 30, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04'),
(49, 31, 11, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_space_translations`
--

CREATE TABLE `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2019-11-26 09:29:04', '2019-11-26 09:29:04', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2019-11-26 09:29:05', '2019-11-26 09:29:05', NULL, 140, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '720.00', 9, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '449.00', 7, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '451.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '558.00', 7, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '611.00', 9, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '425.00', 5, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '757.00', 4, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '792.00', 3, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '420.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1248.00', 1, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1039.00', 6, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1564.00', 9, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]');
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '377.00', 9, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1779.00', 4, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '636.00', 3, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]'),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '118.00', 8, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_category`
--

CREATE TABLE `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_category_translations`
--

CREATE TABLE `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_dates`
--

CREATE TABLE `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_meta`
--

CREATE TABLE `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_term`
--

CREATE TABLE `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(2, 3, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(3, 4, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(4, 5, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(5, 6, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(6, 7, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(7, 2, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(8, 4, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(9, 5, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(10, 6, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(11, 1, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(12, 2, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(13, 3, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(14, 4, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(15, 5, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(16, 6, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(17, 7, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(18, 2, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(19, 3, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(20, 4, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(21, 6, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(22, 7, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(23, 1, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(24, 2, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(25, 3, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(26, 4, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(27, 6, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(28, 7, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(29, 1, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(30, 2, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(31, 3, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(32, 4, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(33, 6, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(34, 7, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(35, 1, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(36, 2, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(37, 3, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(38, 5, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(39, 7, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(40, 1, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(41, 2, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(42, 5, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(43, 6, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(44, 7, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(45, 1, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(46, 2, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(47, 3, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(48, 5, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(49, 6, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(50, 2, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(51, 3, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(52, 7, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(53, 1, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(54, 2, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(55, 3, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(56, 4, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(57, 5, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(58, 6, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(59, 1, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(60, 3, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(61, 4, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(62, 5, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(63, 6, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(64, 7, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(65, 1, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(66, 3, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(67, 5, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(68, 6, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(69, 7, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(70, 1, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(71, 2, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(72, 3, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(73, 4, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(74, 5, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(75, 6, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(76, 2, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(77, 3, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(78, 4, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(79, 5, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(80, 6, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(81, 1, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(82, 2, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(83, 3, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(84, 5, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(85, 6, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(86, 10, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(87, 13, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(88, 14, 1, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(89, 8, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(90, 10, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(91, 11, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(92, 13, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(93, 14, 2, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(94, 8, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(95, 9, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(96, 10, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(97, 11, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(98, 13, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(99, 14, 3, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(100, 10, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(101, 11, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(102, 12, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(103, 14, 4, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(104, 9, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(105, 10, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(106, 12, 5, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(107, 8, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(108, 9, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(109, 12, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(110, 13, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(111, 14, 6, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(112, 8, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(113, 9, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(114, 10, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(115, 11, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(116, 12, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(117, 13, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(118, 14, 7, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(119, 8, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(120, 9, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(121, 11, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(122, 13, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(123, 14, 8, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(124, 8, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(125, 9, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(126, 10, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(127, 11, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(128, 13, 9, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(129, 10, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(130, 11, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(131, 12, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(132, 13, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(133, 14, 10, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(134, 10, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(135, 11, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(136, 13, 11, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(137, 8, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(138, 10, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(139, 11, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(140, 12, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(141, 13, 12, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(142, 8, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(143, 10, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(144, 11, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(145, 12, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(146, 13, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(147, 14, 13, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(148, 8, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(149, 12, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(150, 13, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(151, 14, 14, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(152, 9, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(153, 11, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(154, 12, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(155, 13, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(156, 14, 15, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(157, 9, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(158, 10, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(159, 11, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(160, 12, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(161, 13, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(162, 14, 16, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bravo_tour_translations`
--

CREATE TABLE `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, 1, '2019-11-26 09:36:44', NULL, '2019-11-26 09:29:01', '2019-11-26 09:36:44'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, 1, '2019-11-26 09:36:46', '2019-11-26 09:36:59', '2019-11-26 09:29:01', '2019-11-26 09:36:59'),
(3, 'es_419', 'Español', 'cl', 'publish', 1, 1, '2019-11-26 09:43:08', NULL, '2019-11-26 09:34:10', '2019-11-26 09:43:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(2, 'App\\User', 3),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(3, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 1, 114, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 1, 115, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 3, 116, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 2, 117, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 4, 118, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 2, 119, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 2, 120, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 3, 115, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(4, 'hotel', 'Home Hotel', NULL, NULL, 'publish', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(2, 'contact_manage', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(3, 'newsletter_manage', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(4, 'language_manage', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(5, 'language_translation', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(6, 'booking_view', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(7, 'booking_update', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(8, 'booking_manage_others', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(9, 'template_view', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(10, 'template_create', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(11, 'template_update', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(12, 'template_delete', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(13, 'news_view', 'web', '2019-11-26 09:28:53', '2019-11-26 09:28:53'),
(14, 'news_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(15, 'news_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(16, 'news_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(17, 'news_manage_others', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(18, 'role_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(19, 'role_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(20, 'role_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(21, 'role_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(22, 'permission_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(23, 'permission_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(24, 'permission_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(25, 'permission_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(26, 'dashboard_access', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(27, 'dashboard_vendor_access', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(28, 'setting_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(29, 'menu_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(30, 'menu_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(31, 'menu_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(32, 'menu_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(33, 'user_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(34, 'user_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(35, 'user_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(36, 'user_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(37, 'page_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(38, 'page_create', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(39, 'page_update', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(40, 'page_delete', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(41, 'page_manage_others', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(42, 'setting_view', 'web', '2019-11-26 09:28:54', '2019-11-26 09:28:54'),
(43, 'media_upload', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(44, 'media_manage', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(45, 'tour_view', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(46, 'tour_create', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(47, 'tour_update', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(48, 'tour_delete', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(49, 'tour_manage_others', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(50, 'tour_manage_attributes', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(51, 'location_view', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(52, 'location_create', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(53, 'location_update', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(54, 'location_delete', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(55, 'location_manage_others', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(56, 'review_manage_others', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(57, 'system_log_view', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(58, 'space_view', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(59, 'space_create', 'web', '2019-11-26 09:28:55', '2019-11-26 09:28:55'),
(60, 'space_update', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(61, 'space_delete', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(62, 'space_manage_others', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(63, 'space_manage_attributes', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(64, 'hotel_view', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(65, 'hotel_create', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(66, 'hotel_update', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(67, 'hotel_delete', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(68, 'hotel_manage_others', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(69, 'hotel_manage_attributes', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(70, 'car_view', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(71, 'car_create', 'web', '2019-11-26 09:28:56', '2019-11-26 09:28:56'),
(72, 'car_update', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(73, 'car_delete', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(74, 'car_manage_others', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(75, 'car_manage_attributes', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(76, 'plugin_manage', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(77, 'vendor_payout_view', 'web', '2019-11-26 09:28:57', '2019-11-26 09:28:57'),
(78, 'vendor_payout_manage', 'web', '2019-11-26 09:29:01', '2019-11-26 09:29:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2019-11-26 09:29:01', '2019-11-26 09:29:01'),
(2, 'customer', 'web', NULL, NULL, '2019-11-26 09:29:01', '2019-11-26 09:29:01'),
(3, 'administrator', 'web', NULL, NULL, '2019-11-26 09:29:01', '2019-11-26 09:29:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 1),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 1),
(43, 3),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 3),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 3),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'es_419', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(2, 'site_enable_multi_lang', 'general', '1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(3, 'menu_locations', 'general', '{\"primary\":1}', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'admin_email', 'general', 'info@pickout.cl', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(5, 'email_from_name', 'general', 'PickOut', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(6, 'email_from_address', 'general', 'info@pickout.cl', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(7, 'logo_id', 'general', '8', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(8, 'site_favicon', 'general', '10', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(9, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n    <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"mailto:info@pickout.cl\">info@pickout.cl</a>', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(10, 'footer_text_left', 'general', '<p>Copyright &copy; 2019 by PickOut</p>', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(11, 'footer_text_right', 'general', '<p>PickOut</p>', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(12, 'list_widget_footer', 'general', '[{\"title\":\"NEED HELP?\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Call Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(13, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(15, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(16, 'page_contact_desc', 'general', '<h3>PickOut</h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tell. + 00 222 444 33</p>\r\n<p>Email. hello@yoursite.com</p>\r\n<p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p>', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(17, 'page_contact_image', 'general', '9', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(18, 'home_page_id', 'general', '1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(19, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>PickOut</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'extra_currency', 'payment', '[{\"currency_main\":\"eur\",\"currency_format\":\"left\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"},{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"0\",\"rate\":\"0.00917113\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'date_format', 'general', 'm/d/Y', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(36, 'site_title', 'general', 'PickOut', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(37, 'site_timezone', 'general', 'UTC', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:47:07'),
(38, 'site_title', 'general', 'PickOut', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'email_header', 'general', '<h1 class=\"site-title\" style=\"text-align: center\">PickOut</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_footer', 'general', '<p class=\"\" style=\"text-align: center\">&copy; 2019 PickOut. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\r\n						<h3>Hello [first_name] [last_name]</h3>\r\n						<p>Thank you for signing up with PickOut! We hope you enjoy your time with us.</p>\r\n						<p>Regards,</p>\r\n						<p>PickOut</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n						<p>We have new registration</p>\r\n						<p>Full name: [first_name] [last_name]</p>\r\n						<p>Email: [email]</p>\r\n						<p>Regards,</p>\r\n						<p>PickOut</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n						<p>You are receiving this email because we received a password reset request for your account.</p>\r\n						<p style=\"text-align: center\">[button_reset_password]</p>\r\n						<p>This password reset link expire in 60 minutes.</p>\r\n						<p>If you did not request a password reset, no further action is required.\r\n						</p>\r\n						<p>Regards,</p>\r\n						<p>PickOut</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'site_desc', 'general', '', NULL, 1, NULL, NULL, '2019-11-26 09:47:07', '2019-11-26 09:47:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', '2019-11-26 09:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"Hi There!\",\"sub_title\":\"Where would you like to go?\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Special Offers\",\"desc\":\"Find Your Perfect Hotels Get the best<br>\\nprices on 20,000+ properties<br>\\nthe best prices on\",\"background_image\":17,\"link_title\":\"See Deals\",\"link_more\":\"#\",\"featured_text\":\"HOLIDAY SALE\"},{\"_active\":true,\"title\":\"Newsletters\",\"desc\":\"Join for free and get our <br>\\ntailored newsletters full of <br>\\nhot travel deals.\",\"background_image\":18,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"Travel Tips\",\"desc\":\"Tips from our travel experts to <br>\\nmake your next trip even<br>\\nbetter.\",\"background_image\":19,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Our best promotion tours\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"Most popular destinations\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(2, 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":5},{\"_active\":false,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":4},{\"_active\":false,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tours\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"Top Destinations\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Local Experiences You’ll Love\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(3, 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"Find your next rental\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Recommended Homes\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"Homes highly rated for thoughtful design\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"desc\":\"It is a long established fact that a reader\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"Top Destinations\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"It is a long established fact that a reader\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\" Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(4, 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"Find Your Perfect Hotels\",\"sub_title\":\"Get the best prices on 20,000+ properties\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000+ properties\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"Trust & Safety\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"Best Price Guarantee\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Last Minute Deals\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">Why be a Local Expert</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">Varius massa maecenas et id dictumst mattis</span></div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"Open your network\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"Practice your language\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL),
(6, 'Home Car', '[{\"type\":\"form_search_car\",\"name\":\"Car: Form Search\",\"model\":{\"title\":\"Search Rental Car Deals\",\"sub_title\":\"Book better cars from local hosts across the US and around the world.\",\"bg_image\":122},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Free Cancellation\",\"sub_title\":\"Morbi semper fames lobortis ac\",\"icon_image\":103,\"order\":null},{\"_active\":true,\"title\":\"No Hidden Costs\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"24/7 Customer Care\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"car_term_featured_box\",\"name\":\"Car: Term Featured Box\",\"model\":{\"title\":\"Browse by categories\",\"desc\":\"Book incredible things to do around the world.\",\"term_car\":[\"68\",\"67\",\"66\",\"65\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending used cars\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"how_it_works\",\"name\":\"How It Works\",\"model\":{\"title\":\"How does it work?\",\"list_item\":[{\"_active\":false,\"title\":\"Find The Car\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":132,\"order\":null},{\"_active\":false,\"title\":\"Book It\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":133,\"order\":null},{\"_active\":false,\"title\":\"Grab And Go\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":134,\"order\":null}],\"background_image\":131},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top destinations\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-11-26 09:29:03', NULL),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-11-26 09:29:03', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-11-26 09:29:03', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-11-26 09:29:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `core_translations`
--

INSERT INTO `core_translations` (`id`, `locale`, `string`, `parent_id`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'raw', '-- Select --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(2, 'raw', ':num mins', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(3, 'raw', ':num min', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(4, 'raw', ':num hours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(5, 'raw', ':num hour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(6, 'raw', ':num days', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(7, 'raw', ':num day', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(8, 'raw', ':num weeks', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(9, 'raw', ':num week', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(10, 'raw', ':num months', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(11, 'raw', ':num month', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(12, 'raw', ':num years', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(13, 'raw', ':num year', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(14, 'raw', 'sqft', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(15, 'raw', 'Login', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(16, 'raw', 'Can not authorize', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(17, 'raw', 'Your account has been blocked', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(18, 'raw', 'User blocked', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(19, 'raw', 'Sign Up', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(20, 'raw', 'Publish', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(21, 'raw', 'Blocked', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(22, 'raw', 'Checkout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(23, 'raw', 'Service not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(24, 'raw', 'Please verify the captcha', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(25, 'raw', 'Payment gateway not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(26, 'raw', 'Payment gateway is not available', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(27, 'raw', 'Service type not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(28, 'raw', 'Service is not bookable', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(29, 'raw', 'Booking Details', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(30, 'raw', '[:site_name] New booking has been made', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(31, 'raw', '[:site_name] Your service got new booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(32, 'raw', 'Thank you for booking with us', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(33, 'raw', '[:site_name] The booking status has been updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(34, 'raw', 'Your booking status has been updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(35, 'raw', 'Enable Offline Payment?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(36, 'raw', 'Custom Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(37, 'raw', 'Offline Payment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(38, 'raw', 'Custom Logo', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(39, 'raw', 'Custom HTML Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(40, 'raw', 'Enable Stripe Standard?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(41, 'raw', 'Stripe', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(42, 'raw', 'Secret Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(43, 'raw', 'Publishable Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(44, 'raw', 'Enable Sandbox Mode', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(45, 'raw', 'Test Secret Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(46, 'raw', 'Test Publishable Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(47, 'raw', 'Booking status does need to be paid', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(48, 'raw', 'Booking total is zero. Can not process payment gateway!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(49, 'raw', 'Card Name is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(50, 'raw', 'Stripe invalid!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(51, 'raw', 'Booking Core', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(52, 'raw', 'Revenue', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(53, 'raw', 'Total revenue', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(54, 'raw', 'Earning', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(55, 'raw', 'Total Earning', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(56, 'raw', 'Bookings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(57, 'raw', 'Total bookings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(58, 'raw', 'Services', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(59, 'raw', 'Total bookable services', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(60, 'raw', 'Total Revenue', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(61, 'raw', 'Pending', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(62, 'raw', 'Total pending', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(63, 'raw', 'Earnings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(64, 'raw', 'Total earnings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(65, 'raw', 'Total Pending', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(66, 'raw', 'Total Fees', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(67, 'raw', 'Total Commission', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(68, 'raw', 'Total Booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(69, 'raw', 'Booking Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(70, 'raw', 'Payment Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(71, 'raw', 'Checkout Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(72, 'raw', 'Change your checkout page options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(73, 'raw', 'Enable reCapcha Booking Form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(74, 'raw', 'On ReCapcha', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(75, 'raw', 'Turn on the mode for booking form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(76, 'raw', 'Terms & Conditions page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(77, 'raw', 'Booking Email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(78, 'raw', 'Change booking email header and footer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(79, 'raw', 'Header', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(80, 'raw', 'Footer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(81, 'raw', 'Currency', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(82, 'raw', 'Currency Format', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(83, 'raw', 'Main Currency', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(84, 'raw', 'Format', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(85, 'raw', 'Thousand Separator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(86, 'raw', 'Decimal Separator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(87, 'raw', 'No. of Decimals', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(88, 'raw', 'Payment Gateways', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(89, 'raw', 'You can enable and disable your payment gateways here', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(90, 'raw', 'Hello Administrator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(91, 'raw', 'New booking has been made', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(92, 'raw', 'Hello :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(93, 'raw', 'Your service has new booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(94, 'raw', 'Thank you for booking with us. Here are your booking information:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(95, 'raw', 'Customer information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(96, 'raw', 'First name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(97, 'raw', 'Last name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(98, 'raw', 'Email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(99, 'raw', 'Phone', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(100, 'raw', 'Address line 1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(101, 'raw', 'Address line 2', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(102, 'raw', 'City', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(103, 'raw', 'State/Province/Region', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(104, 'raw', 'ZIP code/Postal code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(105, 'raw', 'Country', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(106, 'raw', 'Special Requirements', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(107, 'raw', 'The booking status has been updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(108, 'raw', 'Your Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(109, 'raw', 'Coupon Code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(110, 'raw', 'Apply', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(111, 'raw', 'First Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(112, 'raw', 'Last Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(113, 'raw', 'email@domain.com', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(114, 'raw', 'Your Phone', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(115, 'raw', 'Your City', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(116, 'raw', 'I have read and accept the', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(117, 'raw', 'terms and conditions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(118, 'raw', 'Submit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(119, 'raw', 'Select Payment Method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(120, 'raw', 'Booking Submission', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(121, 'raw', 'your order was submitted successfully!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(122, 'raw', 'Booking details has been sent to:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(123, 'raw', 'Booking Number', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(124, 'raw', 'Booking Date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(125, 'raw', 'Payment Method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(126, 'raw', 'Booking History', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(127, 'raw', 'Name on the Card', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(128, 'raw', 'Card Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(129, 'raw', 'Card Number', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(130, 'raw', 'Expiration', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(131, 'raw', 'CVC', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(132, 'raw', 'Contact Submissions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(133, 'raw', 'All', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(134, 'raw', 'Please select at least 1 item!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(135, 'raw', 'No Action is selected!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(136, 'raw', 'Update success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(137, 'raw', 'Contact Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(138, 'raw', 'Thank you for contacting us! We will get back to you soon', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(139, 'raw', '[:site_name] New message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(140, 'raw', 'All Contact Submissions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(141, 'raw', ' Bulk Actions ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(142, 'raw', ' Delete ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(143, 'raw', 'Do you want to delete?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(144, 'raw', 'Search...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(145, 'raw', 'Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(146, 'raw', 'Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(147, 'raw', 'Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(148, 'raw', 'Date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(149, 'raw', 'No data', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(150, 'raw', 'Here are new contact information:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(151, 'raw', 'Message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(152, 'raw', 'SEND MESSAGE', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(153, 'raw', 'Primary', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(154, 'raw', 'Menus', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(155, 'raw', 'Create new menu', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(156, 'raw', 'Edit: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(157, 'raw', 'Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(158, 'raw', 'Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(159, 'raw', 'Tour Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(160, 'raw', 'Location', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(161, 'raw', 'News', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(162, 'raw', 'News Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(163, 'raw', 'Menu not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(164, 'raw', 'Your menu has been saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(165, 'raw', 'Settings Saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(166, 'raw', 'Please enter license key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(167, 'raw', 'Can not connect to update server. Please check again', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(168, 'raw', 'You are using latest version of PickOut', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(169, 'raw', 'Can not get update file from server', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(170, 'raw', 'Can not download update file to folder storage', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(171, 'raw', 'Update Success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(172, 'raw', 'Can not un-zip the package', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(173, 'raw', 'License information has been saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(174, 'raw', 'You can not send message to yourself', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(175, 'raw', 'Conversation does not exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(176, 'raw', 'Custom', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(177, 'raw', 'General Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(178, 'raw', 'Style Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(179, 'raw', 'Advance Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(180, 'raw', 'Edit Menu:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(181, 'raw', 'Menu name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(182, 'raw', 'No items found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(183, 'raw', 'Add to Menu', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(184, 'raw', 'Custom Url', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(185, 'raw', 'URL', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(186, 'raw', 'Link Text', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(187, 'raw', 'Menu items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(188, 'raw', 'Label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(189, 'raw', 'Class', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(190, 'raw', 'Target', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(191, 'raw', 'Normal', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(192, 'raw', 'Open new tab', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(193, 'raw', 'Delete', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(194, 'raw', 'Origin: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(195, 'raw', 'Menu Configs', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(196, 'raw', 'Save Menu', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(197, 'raw', 'Menu Management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(198, 'raw', 'Add new', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(199, 'raw', 'All Menus', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(200, 'raw', 'Title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(201, 'raw', 'Use for', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(202, 'raw', 'Seo Manager', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(203, 'raw', 'Allow search engines to show this service in search results?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(204, 'raw', 'Yes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(205, 'raw', 'No', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(206, 'raw', 'General Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(207, 'raw', 'Share Facebook', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(208, 'raw', 'Share Twitter', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(209, 'raw', 'Seo Title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(210, 'raw', 'Leave blank to use service title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(211, 'raw', 'Seo Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(212, 'raw', 'Enter description...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(213, 'raw', 'Featured Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(214, 'raw', 'Facebook Title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(215, 'raw', 'Enter title...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(216, 'raw', 'Facebook Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(217, 'raw', 'Facebook Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(218, 'raw', 'Twitter Title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(219, 'raw', 'Twitter Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(220, 'raw', 'Twitter Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(221, 'raw', 'Square Size Unit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(222, 'raw', 'Size Unit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(223, 'raw', 'Square feet', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(224, 'raw', 'Map Provider', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(225, 'raw', 'Change map provider of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(226, 'raw', 'OpenStreetMap.org', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(227, 'raw', 'Google Map', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(228, 'raw', 'Gmap API Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(229, 'raw', 'Learn how to get an api key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(230, 'raw', 'Social Login', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(231, 'raw', 'Change social login information for your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(232, 'raw', 'Facebook', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(233, 'raw', 'Enable Facebook Login?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(234, 'raw', 'Facebook Client Id', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(235, 'raw', 'Facebook Client Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(236, 'raw', 'Google', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(237, 'raw', 'Enable Google Login?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(238, 'raw', 'Google Client Id', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(239, 'raw', 'Google Client Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(240, 'raw', 'Twitter', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(241, 'raw', 'Enable Twitter Login?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(242, 'raw', 'Twitter Client Id', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(243, 'raw', 'Twitter Client Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(244, 'raw', 'Captcha', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(245, 'raw', 'ReCaptcha Config', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(246, 'raw', 'Enable ReCaptcha', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(247, 'raw', 'Api Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(248, 'raw', 'Api Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(249, 'raw', 'Custom Scripts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(250, 'raw', 'Add custom HTML script before and after the content, like tracking code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(251, 'raw', 'Body Script', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(252, 'raw', 'scripts after open of body tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(253, 'raw', 'Footer Script', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(254, 'raw', 'Custom Scripts for :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(255, 'raw', 'Site Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(256, 'raw', 'Information of your website for customer and goole', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(257, 'raw', 'Site title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(258, 'raw', 'Site Desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(259, 'raw', 'Favicon', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(260, 'raw', 'Date format', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(261, 'raw', 'Timezone', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(262, 'raw', '-- Default --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(263, 'raw', 'Language', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(264, 'raw', 'Change language of your websites', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(265, 'raw', 'Select default language', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(266, 'raw', 'Manage languages here', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(267, 'raw', 'Enable Multi Languages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:52', '2019-11-26 09:34:52'),
(268, 'raw', 'Enable', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(269, 'raw', 'Contact Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(270, 'raw', 'How your customer can contact to you', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(271, 'raw', 'Admin Email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(272, 'raw', 'Email Form Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(273, 'raw', 'Email Form Address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(274, 'raw', 'Homepage', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(275, 'raw', 'Change your homepage content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(276, 'raw', 'Page for Homepage', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(277, 'raw', 'Header & Footer Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(278, 'raw', 'Change your options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(279, 'raw', 'Logo', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(280, 'raw', 'Topbar Left Text', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(281, 'raw', 'Footer List Widget', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(282, 'raw', 'Size', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(283, 'raw', 'Add item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(284, 'raw', 'Footer Text Left', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(285, 'raw', 'Page contact settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(286, 'raw', 'Settings for contact page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(287, 'raw', 'Contact title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(288, 'raw', 'Contact sub title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(289, 'raw', 'Contact Desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(290, 'raw', 'Contact Featured Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(291, 'raw', 'General Style', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(292, 'raw', 'Change main color, typo ...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(293, 'raw', 'Main color', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(294, 'raw', 'Typography', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(295, 'raw', 'Font Family', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(296, 'raw', 'Color', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(297, 'raw', 'Font Size', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(298, 'raw', 'Line Height', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(299, 'raw', 'Font Weight', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(300, 'raw', 'bold or 400', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(301, 'raw', 'Custom CSS', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(302, 'raw', 'Write your own custom css code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(303, 'raw', 'Custom CSS for :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(304, 'raw', 'Settings Groups', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(305, 'raw', 'Save settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(306, 'raw', 'Tools', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(307, 'raw', 'Languages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(308, 'raw', 'Manage languages of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(309, 'raw', 'Translations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(310, 'raw', 'Translation manager of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(311, 'raw', 'System Log Viewer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(312, 'raw', 'Views and manage system log of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(313, 'raw', 'Updater', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(314, 'raw', 'Updater PickOut', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(315, 'raw', 'Welcome :name!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(316, 'raw', 'Earning statistics', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(317, 'raw', 'Recent Bookings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(318, 'raw', 'More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(319, 'raw', 'Item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(320, 'raw', 'Total', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(321, 'raw', 'Status', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(322, 'raw', 'Created At', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(323, 'raw', '[Deleted]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(324, 'raw', 'Timeline', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(325, 'raw', 'Currency: :currency_main', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(326, 'raw', 'Today', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(327, 'raw', 'Yesterday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(328, 'raw', 'Last 7 Days', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(329, 'raw', 'Last 30 Days', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(330, 'raw', 'This Month', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(331, 'raw', 'Last Month', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(332, 'raw', 'This Year', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(333, 'raw', 'This Week', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(334, 'raw', 'Email Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(335, 'raw', 'Config Email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(336, 'raw', 'Change your config email site', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(337, 'raw', 'Email Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(338, 'raw', 'Email Host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(339, 'raw', 'Email Port', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(340, 'raw', 'Email Encryption', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(341, 'raw', 'Email Username', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(342, 'raw', 'Email Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(343, 'raw', 'You can edit on main lang.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(344, 'raw', 'Config Email Service', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(345, 'raw', 'Mailgun Domain', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(346, 'raw', 'Mailgun Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(347, 'raw', 'Mailgun Endpoint', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(348, 'raw', 'Postmark Token', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(349, 'raw', 'Ses Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(350, 'raw', 'Ses Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(351, 'raw', 'Ses Region', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(352, 'raw', 'Sparkpost Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(353, 'raw', 'Email Testing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(354, 'raw', 'Send Email Test', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(355, 'raw', 'Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(356, 'raw', 'Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(357, 'raw', 'Attributes not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(358, 'raw', 'Attribute: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(359, 'raw', 'Attribute saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(360, 'raw', 'Select at least 1 item!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(361, 'raw', 'Select an Action!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(362, 'raw', 'Updated success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(363, 'raw', 'Term not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(364, 'raw', 'Term: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(365, 'raw', 'Term saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(366, 'raw', 'Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(367, 'raw', 'Add Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(368, 'raw', 'Add new Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(369, 'raw', 'Edit Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(370, 'raw', 'Hotel updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(371, 'raw', 'Hotel created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(372, 'raw', 'No items selected!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(373, 'raw', 'Please select an action!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(374, 'raw', 'Deleted success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(375, 'raw', 'Clone success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(376, 'raw', 'Room Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(377, 'raw', 'Hotel: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(378, 'raw', 'Room Management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(379, 'raw', 'All Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(380, 'raw', 'Edit room: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(381, 'raw', 'Room updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(382, 'raw', 'Room created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(383, 'raw', 'Sub Title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(384, 'raw', 'Background Image Uploader', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(385, 'raw', 'Hotel: Form Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(386, 'raw', 'Desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(387, 'raw', 'Number Item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(388, 'raw', 'Style', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(389, 'raw', 'Slider Carousel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(390, 'raw', 'Filter by Location', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(391, 'raw', 'Order', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(392, 'raw', 'Date Create', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(393, 'raw', 'Order By', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(394, 'raw', 'ASC', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(395, 'raw', 'DESC', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(396, 'raw', 'Hotel: List Items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(397, 'raw', 'Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(398, 'raw', 'Room Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(399, 'raw', 'Hotel not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(400, 'raw', 'room not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(401, 'raw', 'Full Book', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(402, 'raw', 'Room not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(403, 'raw', 'Dates are not valid', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(404, 'raw', 'Maximum day for booking is 30', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(405, 'raw', 'Manage Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(406, 'raw', 'Create', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(407, 'raw', 'Create Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(408, 'raw', 'Space not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(409, 'raw', 'Edit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(410, 'raw', 'Edit Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(411, 'raw', 'Delete hotel success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(412, 'raw', 'No item!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(413, 'raw', 'Not Found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(414, 'raw', 'Manage Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(415, 'raw', 'Booking Report', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(416, 'raw', 'Update success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(417, 'raw', 'Booking not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(418, 'raw', 'Update fail!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(419, 'raw', 'Create Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(420, 'raw', 'Delete room success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(421, 'raw', 'Search for Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(422, 'raw', 'Can not check availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(423, 'raw', 'Please select at lease one room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(424, 'raw', 'Your selected dates are not valid', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(425, 'raw', 'There is no room available at your selected dates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(426, 'raw', 'Your selected room is not available. Please search again', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(427, 'raw', 'Please select', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(428, 'raw', 'day', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(429, 'raw', 'hour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(430, 'raw', 'guest', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(431, 'raw', 'Not rated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(432, 'raw', ':number Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(433, 'raw', ':number Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(434, 'raw', ':count nights', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(435, 'raw', ':count night', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(436, 'raw', 'Hotel Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(437, 'raw', 'All Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(438, 'raw', 'Hotel Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(439, 'raw', 'Add new attribute', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(440, 'raw', 'Attribute Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(441, 'raw', 'Save Change', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(442, 'raw', 'Attribute name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(443, 'raw', 'Hotel Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(444, 'raw', 'Add Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(445, 'raw', ' Bulk Action ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(446, 'raw', 'Search by name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(447, 'raw', 'All Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(448, 'raw', 'Actions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(449, 'raw', 'Manage Terms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(450, 'raw', 'Add new hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(451, 'raw', 'Permalink', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(452, 'raw', 'Manage Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(453, 'raw', 'View Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(454, 'raw', 'Draft', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(455, 'raw', 'Save Changes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(456, 'raw', 'Author Setting', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(457, 'raw', '-- Select User --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(458, 'raw', 'Hotel Featured', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(459, 'raw', 'Enable featured', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(460, 'raw', 'Feature Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(461, 'raw', 'Hotel Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(462, 'raw', 'Name of the hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(463, 'raw', 'Youtube Video', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(464, 'raw', 'Youtube link video', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(465, 'raw', 'Banner Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(466, 'raw', 'Gallery', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(467, 'raw', 'Hotel Policy', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(468, 'raw', 'Hotel rating standard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(469, 'raw', 'Eg: 5', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(470, 'raw', 'Policy', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(471, 'raw', 'Eg: What kind of foowear is most suitable ?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(472, 'raw', 'Locations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(473, 'raw', '-- Please Select --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(474, 'raw', 'Real address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(475, 'raw', 'Map Engine', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(476, 'raw', 'Search by name...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(477, 'raw', 'Map Lat', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(478, 'raw', 'Map Lng', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53');
INSERT INTO `core_translations` (`id`, `locale`, `string`, `parent_id`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(479, 'raw', 'Map Zoom', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(480, 'raw', 'Check in/out time', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(481, 'raw', 'Allowed full day booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(482, 'raw', 'Enable full day booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(483, 'raw', 'You can book room with full day', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(484, 'raw', 'Eg: booking from 22-23, then all days 22 and 23 are full, other people cannot book', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(485, 'raw', 'Time for check in', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(486, 'raw', 'Eg: 12:00AM', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(487, 'raw', 'Time for check out', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(488, 'raw', 'Eg: 11:00AM', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(489, 'raw', 'Pricing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(490, 'raw', 'Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(491, 'raw', 'Hotel Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(492, 'raw', 'Sale Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(493, 'raw', 'Hotel Sale Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(494, 'raw', 'If the regular price is less than the discount , it will show the regular price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(495, 'raw', ' Publish ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(496, 'raw', ' Move to Draft ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(497, 'raw', 'Move to Pending', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(498, 'raw', ' Clone ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(499, 'raw', '-- Vendor --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(500, 'raw', 'Found :total items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(501, 'raw', 'Author', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(502, 'raw', 'Reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(503, 'raw', '[Author Deleted]', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(504, 'raw', 'Action', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(505, 'raw', 'Edit hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(506, 'raw', 'Manage Rooms Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(507, 'raw', 'No hotel found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(508, 'raw', 'Room Availability Calendar', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(509, 'raw', 'Showing :from - :to of :total rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(510, 'raw', 'No rooms found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(511, 'raw', 'Date Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(512, 'raw', 'Date Ranges', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(513, 'raw', 'Available for booking?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(514, 'raw', 'Number of room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(515, 'raw', 'Instant Booking?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(516, 'raw', 'Enable instant booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(517, 'raw', 'Close', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(518, 'raw', 'Save changes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(519, 'raw', 'Add new Hotel Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(520, 'raw', 'Room information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(521, 'raw', 'Room Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(522, 'raw', 'Room name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(523, 'raw', 'Room Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(524, 'raw', 'Number', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(525, 'raw', 'Number of beds', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(526, 'raw', 'Room Size', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(527, 'raw', 'Room size', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(528, 'raw', 'Max Adults', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(529, 'raw', 'Max Children', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(530, 'raw', 'Back to hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(531, 'raw', 'Add Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(532, 'raw', 'No room found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(533, 'raw', 'Page Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(534, 'raw', 'Config page search of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(535, 'raw', 'Title Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(536, 'raw', 'Banner Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(537, 'raw', 'Layout Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(538, 'raw', 'Normal Layout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(539, 'raw', 'Map Layout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(540, 'raw', 'Layout Item Hotel In Page Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(541, 'raw', 'List Item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(542, 'raw', 'Grid Item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(543, 'raw', 'Which attribute show in listing page?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(544, 'raw', 'Location Search Style', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(545, 'raw', 'Autocomplete from locations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(546, 'raw', 'SEO Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(547, 'raw', 'Review Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(548, 'raw', 'Config review for hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(549, 'raw', 'Enable review system for Hotel?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(550, 'raw', 'Yes, please enable it', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(551, 'raw', 'Turn on the mode for reviewing hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(552, 'raw', 'Customer must book a hotel before writing a review?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(553, 'raw', 'Yes please', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(554, 'raw', 'ON: Only post a review after booking - Off: Post review without booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(555, 'raw', 'Review must be approval by admin', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(556, 'raw', 'ON: Review must be approved by admin - OFF: Review is automatically approved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(557, 'raw', 'Review number per page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(558, 'raw', 'Break comments into pages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(559, 'raw', 'Review criteria', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(560, 'raw', 'Eg: Service', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(561, 'raw', 'Booking Buyer Fees Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(562, 'raw', 'Config buyer fees for hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(563, 'raw', 'Buyer Fees', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(564, 'raw', 'Type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(565, 'raw', 'Fee name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(566, 'raw', 'Fee desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(567, 'raw', 'One-time', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(568, 'raw', 'Price per person', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(569, 'raw', 'Vendor Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(570, 'raw', 'Vendor config for hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(571, 'raw', 'Hotel created by vendor must be approved by admin', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(572, 'raw', 'ON: When vendor posts a service, it needs to be approved by administrator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(573, 'raw', 'Allow vendor can change their booking status', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(574, 'raw', 'ON: Vendor can change their booking status', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(575, 'raw', 'Add new term', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(576, 'raw', 'Term Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(577, 'raw', 'Term name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(578, 'raw', 'Icon', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(579, 'raw', 'Icon code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(580, 'raw', 'Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(581, 'raw', 'Description', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(582, 'raw', 'Add Term', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(583, 'raw', 'All Terms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(584, 'raw', 'Hotel information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(585, 'raw', 'Booking Status', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(586, 'raw', 'Payment method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(587, 'raw', 'Hotel name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(588, 'raw', 'Address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(589, 'raw', 'Start date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(590, 'raw', 'End date:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(591, 'raw', 'Nights:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(592, 'raw', 'Adults', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(593, 'raw', 'Children', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(594, 'raw', 'Extra Prices:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(595, 'raw', 'Manage Bookings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(596, 'raw', 'Booking ID', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(597, 'raw', 'Booking Detail', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(598, 'raw', 'Your Booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(599, 'raw', 'Start date:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(600, 'raw', 'Adults:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(601, 'raw', 'Children:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(602, 'raw', 'Total:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(603, 'raw', 'End date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(604, 'raw', 'Duration', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(605, 'raw', 'Details', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(606, 'raw', 'Please select Start and End date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(607, 'raw', 'Please select at least one guest', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(608, 'raw', 'Hotel Video', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(609, 'raw', 'from :number reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(610, 'raw', ':number% of guests recommend', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(611, 'raw', 'Rules', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(612, 'raw', 'Check In', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(613, 'raw', 'Check Out', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(614, 'raw', 'Hotel Policies', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(615, 'raw', 'Show All', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(616, 'raw', 'from', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(617, 'raw', ':number Reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(618, 'raw', ':number Review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(619, 'raw', 'Book Now', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(620, 'raw', '/night', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(621, 'raw', 'Select Dates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(622, 'raw', 'Ages 12+', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(623, 'raw', 'Ages 2–12', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(624, 'raw', 'Extra prices:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(625, 'raw', ':count Guest in maximum', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(626, 'raw', ':count Guests in maximum', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(627, 'raw', 'BOOK NOW', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(628, 'raw', 'Related Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(629, 'raw', 'You might also like', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(630, 'raw', 'Based on', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(631, 'raw', ':number reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(632, 'raw', ':number review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(633, 'raw', 'Showing :from - :to of :total total', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(634, 'raw', 'No Review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(635, 'raw', 'Write a review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(636, 'raw', 'Review title is required', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(637, 'raw', 'Review content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(638, 'raw', 'Review content has at least 10 character', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(639, 'raw', 'Review rate', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(640, 'raw', 'Leave a Review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(641, 'raw', 'You must <a href=\'#login\' data-toggle=\'modal\' data-target=\'#login\'>log in</a> to write review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(642, 'raw', 'Available Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(643, 'raw', 'Check In - Out', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(644, 'raw', 'Guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(645, 'raw', 'Adult', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(646, 'raw', 'Child', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(647, 'raw', 'Check Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(648, 'raw', 'Room Footage', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(649, 'raw', 'No. Beds', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(650, 'raw', 'No. Adults', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(651, 'raw', 'No. Children', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(652, 'raw', 'Total Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(653, 'raw', 'Total Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(654, 'raw', 'No room available with your selected date. Please change your search critical', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(655, 'raw', 'FILTER BY', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(656, 'raw', 'Filter Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(657, 'raw', 'APPLY', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(658, 'raw', 'Hotel Star', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(659, 'raw', 'Where are you going?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(660, 'raw', 'Loading...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(661, 'raw', '1 Adult', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(662, 'raw', ':count Adults', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(663, 'raw', ':count Child', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(664, 'raw', ':count Children', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(665, 'raw', 'Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(666, 'raw', ':count hotels found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(667, 'raw', ':count hotel found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(668, 'raw', 'Showing :from - :to of :total Hotels', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(669, 'raw', 'Featured', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(670, 'raw', 'Space by :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(671, 'raw', 'Availability Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(672, 'raw', 'All Booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(673, 'raw', 'Order Date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(674, 'raw', 'Execution Time', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(675, 'raw', 'Cost', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(676, 'raw', 'No Booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(677, 'raw', 'Check in', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(678, 'raw', 'Check out', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(679, 'raw', 'Mark as: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(680, 'raw', '1. Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(681, 'raw', '2. Locations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(682, 'raw', '3. Pricing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(683, 'raw', '4. Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(684, 'raw', 'No Hotel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(685, 'raw', 'Last Updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(686, 'raw', 'View', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(687, 'raw', 'Del', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(688, 'raw', 'Make hide', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(689, 'raw', 'Make publish', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(690, 'raw', 'Add new room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(691, 'raw', '1. Room Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(692, 'raw', '2. Pricing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(693, 'raw', '3. Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(694, 'raw', 'Showing :from - :to of :total Rooms', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(695, 'raw', 'No Room', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(696, 'raw', 'Language created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(697, 'raw', 'Language Management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(698, 'raw', 'Language updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(699, 'raw', 'Edit: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(700, 'raw', 'Translation Manager', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(701, 'raw', 'Translate for: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(702, 'raw', 'Translation saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(703, 'raw', 'Folder: resources/lang is not write-able. Please contact your hosting provider', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(704, 'raw', 'File: :file_name is not write-able. Please contact your hosting provider', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(705, 'raw', 'Re-build language file for: :name success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(706, 'raw', 'Default language source does not exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(707, 'raw', 'Default language source empty', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(708, 'raw', 'Default language source do not have any strings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(709, 'raw', 'Loaded :count strings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(710, 'raw', 'Generate Default JSON Language', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(711, 'raw', 'File language source does not exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(712, 'raw', 'File language source empty', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(713, 'raw', 'File language source do not have any strings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(714, 'raw', 'Load language from json success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(715, 'raw', 'Add new location', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(716, 'raw', 'Language Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(717, 'raw', 'Locale', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(718, 'raw', '-- Please select --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(719, 'raw', 'Flag Icon', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(720, 'raw', 'Eg: gb', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(721, 'raw', 'Please input flag code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(722, 'raw', 'Display Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(723, 'raw', 'Please input language name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(724, 'raw', 'Add Language', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(725, 'raw', 'All Languages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(726, 'raw', 'Translate Manager for: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(727, 'raw', 'All text', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(728, 'raw', 'Not translated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(729, 'raw', 'Translated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(730, 'raw', 'Search by key ...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(731, 'raw', 'Filter', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(732, 'raw', 'Found :total texts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(733, 'raw', 'Translate', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(734, 'raw', 'Origin', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(735, 'raw', 'Find Translations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(736, 'raw', 'After translation. You must re-build language file to apply the change', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(737, 'raw', 'Percent', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(738, 'raw', 'Last build at', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(739, 'raw', 'Build', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(740, 'raw', 'Load Translate Default', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(741, 'raw', 'Warning', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(742, 'raw', 'Success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(743, 'raw', 'Confirm', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(744, 'raw', 'Cancel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(745, 'raw', 'Please check the form below for errors', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(746, 'raw', 'Dashboard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(747, 'raw', 'Home', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(748, 'raw', 'Edit Profile', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(749, 'raw', 'Change Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(750, 'raw', 'Logout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(751, 'raw', 'Menu', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(752, 'raw', 'Templates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(753, 'raw', 'Setting', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(754, 'raw', 'System Logs', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(755, 'raw', 'Reports', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(756, 'raw', 'Booking Reports', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(757, 'raw', 'Booking Statistic', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(758, 'raw', 'Email address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(759, 'raw', 'Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(760, 'raw', 'Remember me', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(761, 'raw', 'Forgot Password?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(762, 'raw', 'or continue with', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(763, 'raw', 'Do not have an account?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(764, 'raw', 'Reset Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(765, 'raw', 'E-Mail Address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(766, 'raw', 'Send Password Reset Link', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(767, 'raw', 'Confirm Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(768, 'raw', 'I have read and accept the <a href=\':link\' target=\'_blank\'>Terms and Privacy Policy</a>', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(769, 'raw', ' Already have an account?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(770, 'raw', 'Log In', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(771, 'raw', 'Register', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(772, 'raw', 'Verify Your Email Address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(773, 'raw', 'A fresh verification link has been sent to your email address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(774, 'raw', 'Before proceeding, please check your email for a verification link.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(775, 'raw', 'If you did not receive the email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(776, 'raw', 'click here to request another', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(777, 'raw', 'Messages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(778, 'raw', 'Chat with: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(779, 'raw', 'Minimum window', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(780, 'raw', 'You: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(781, 'raw', 'Load more', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(782, 'raw', 'Get Updates & More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(783, 'raw', 'Thoughtful thoughts to your inbox', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(784, 'raw', 'Your Email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(785, 'raw', 'Subscribe', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(786, 'raw', 'Hi, :Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(787, 'raw', 'Vendor Dashboard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(788, 'raw', 'My profile', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(789, 'raw', 'Change password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(790, 'raw', 'Admin Dashboard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(791, 'raw', 'Location updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(792, 'raw', 'Location created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(793, 'raw', 'Service Type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(794, 'raw', 'Style 1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(795, 'raw', 'Style 2', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(796, 'raw', 'Style 3', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(797, 'raw', 'Style 4', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(798, 'raw', 'List Locations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(799, 'raw', 'Location not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(800, 'raw', 'Location Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(801, 'raw', 'Trip Ideas', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(802, 'raw', 'Title/Link', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(803, 'raw', 'Title:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(804, 'raw', 'Link:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(805, 'raw', 'Location name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(806, 'raw', 'Parent', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(807, 'raw', 'Add Location', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(808, 'raw', 'Location Map', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(809, 'raw', 'Click onto map to place Location address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(810, 'raw', 'Slug', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(811, 'raw', 'Explore the City', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(812, 'raw', 'View More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(813, 'raw', 'The City Maps', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(814, 'raw', 'FEATURED ARTICLE', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(815, 'raw', 'Read More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(816, 'raw', 'Please select file', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(817, 'raw', 'Can not store the file', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(818, 'raw', 'File type are not allowed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(819, 'raw', 'Maximum upload file size is :max_size B', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(820, 'raw', 'You don\'t have permission delete the file!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(821, 'raw', 'Delete the file success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(822, 'raw', 'File not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(823, 'raw', 'Upload image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(824, 'raw', 'Select images', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(825, 'raw', 'Search file name....', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(826, 'raw', 'files', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(827, 'raw', 'Upload', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(828, 'raw', 'No file found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(829, 'raw', 'Previous', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(830, 'raw', 'Next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(831, 'raw', 'Delete file', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(832, 'raw', 'file selected', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(833, 'raw', 'unselect', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(834, 'raw', 'Use file', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(835, 'raw', 'Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(836, 'raw', 'Category updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(837, 'raw', 'Category created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(838, 'raw', 'Please select an Action!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(839, 'raw', 'Add News', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(840, 'raw', 'News updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(841, 'raw', 'News created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(842, 'raw', 'News does not exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(843, 'raw', 'Language does not exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(844, 'raw', 'Tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(845, 'raw', 'Tag updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(846, 'raw', 'Tag Created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(847, 'raw', 'Search results : \":s\"', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(848, 'raw', 'News Tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(849, 'raw', 'New Tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(850, 'raw', 'All News', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(851, 'raw', 'Categories', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(852, 'raw', 'Tags', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(853, 'raw', 'News Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(854, 'raw', 'Add new category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(855, 'raw', 'Permalink:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(856, 'raw', 'Category Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(857, 'raw', 'News Categories', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(858, 'raw', 'Add Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(859, 'raw', 'Search Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(860, 'raw', 'Edit post: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(861, 'raw', 'Add new Post', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(862, 'raw', 'View Post', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(863, 'raw', 'News content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(864, 'raw', 'Enter tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(865, 'raw', 'All news', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(866, 'raw', '--All Category --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(867, 'raw', 'Search News', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(868, 'raw', 'Page List', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(869, 'raw', 'Config page list news of your website', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(870, 'raw', 'Sidebar Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(871, 'raw', 'Config sidebar for news', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(872, 'raw', 'Title: About Us', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(873, 'raw', 'Search Form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(874, 'raw', 'Recent News', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(875, 'raw', 'Content Text', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(876, 'raw', 'Tag Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(877, 'raw', 'Tag name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(878, 'raw', 'Tag Slug', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(879, 'raw', 'News Tags', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(880, 'raw', 'Add Tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(881, 'raw', 'Search keyword ...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(882, 'raw', 'Search Tag', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(883, 'raw', 'Showing :from - :to of :total posts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(884, 'raw', 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(885, 'raw', 'BY ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(886, 'raw', 'DATE ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(887, 'raw', 'Tags:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(888, 'raw', 'Share', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(889, 'raw', 'Search ...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(890, 'raw', 'Pages', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(891, 'raw', 'Add Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(892, 'raw', 'Edit Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(893, 'raw', 'Page updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(894, 'raw', 'Page created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(895, 'raw', 'Add new page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(896, 'raw', 'Permalink: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(897, 'raw', 'View page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(898, 'raw', 'Page Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(899, 'raw', 'Template Setting', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(900, 'raw', 'All Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(901, 'raw', 'Search Page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(902, 'raw', 'All Bookings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(903, 'raw', 'No items selected', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(904, 'raw', 'Please select action', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(905, 'raw', '-- Bulk Actions --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(906, 'raw', 'DELETE booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(907, 'raw', 'Service', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(908, 'raw', 'Customer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(909, 'raw', 'by', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(910, 'raw', 'Name:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(911, 'raw', 'Email:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(912, 'raw', 'Phone:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(913, 'raw', 'Address:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(914, 'raw', 'Custom Requirement:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(915, 'raw', 'Detail', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(916, 'raw', 'Email Preview', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(917, 'raw', 'Bookings Statistic', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(918, 'raw', 'Filter:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(919, 'raw', '-- User Type --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(920, 'raw', 'Customer User', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(921, 'raw', 'Vendor User', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(922, 'raw', 'Detail statistics', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(923, 'raw', 'Review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(924, 'raw', 'Review not enable', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(925, 'raw', 'You need booking before write a review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(926, 'raw', 'You cannot review your service', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(927, 'raw', 'Review Title is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(928, 'raw', 'Review Content is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(929, 'raw', 'Review Content has at least 10 character', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(930, 'raw', 'Review success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(931, 'raw', 'Review success! Please wait for admin approved!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(932, 'raw', 'Review error!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(933, 'raw', 'Excellent', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(934, 'raw', 'Very Good', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(935, 'raw', 'Average', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(936, 'raw', 'Poor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(937, 'raw', 'Terrible', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(938, 'raw', 'All Reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(939, 'raw', ' Approved ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(940, 'raw', ' Pending ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(941, 'raw', ' Spam ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(942, 'raw', ' Move to Trash ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(943, 'raw', 'Search by title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(944, 'raw', 'Approved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(945, 'raw', 'Spam', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(946, 'raw', 'Trash', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(947, 'raw', 'Review Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(948, 'raw', 'In Response To', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(949, 'raw', 'Submitted On', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(950, 'raw', 'More info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(951, 'raw', 'View :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(952, 'raw', 'Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53');
INSERT INTO `core_translations` (`id`, `locale`, `string`, `parent_id`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(953, 'raw', 'Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(954, 'raw', 'Add Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(955, 'raw', 'Add new Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(956, 'raw', 'Edit Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(957, 'raw', 'Space updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(958, 'raw', 'Space created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(959, 'raw', 'Space: Form Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(960, 'raw', 'Space: List Items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(961, 'raw', 'Select term space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(962, 'raw', 'Space: Term Featured Box', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(963, 'raw', 'Spaces Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(964, 'raw', 'Space not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(965, 'raw', 'Manage Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(966, 'raw', 'Create Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(967, 'raw', 'Edit Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(968, 'raw', 'Delete space success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(969, 'raw', 'Manage Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(970, 'raw', 'Maximum guests is :count', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(971, 'raw', 'This space is not available at selected dates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(972, 'raw', ':number Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(973, 'raw', ':number Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(974, 'raw', 'All Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(975, 'raw', 'Space Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(976, 'raw', 'Space Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(977, 'raw', 'Spaces Availability Calendar', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(978, 'raw', 'Showing :from - :to of :total spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(979, 'raw', 'No spaces found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(980, 'raw', 'Add new space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(981, 'raw', 'View Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(982, 'raw', 'Space Featured', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(983, 'raw', 'Is Instant Booking?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(984, 'raw', 'Default State', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(985, 'raw', 'Always available', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(986, 'raw', 'Only available on specific dates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(987, 'raw', 'No space found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(988, 'raw', 'Config review for space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(989, 'raw', 'Enable review system for Space?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(990, 'raw', 'Turn on the mode for reviewing space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(991, 'raw', 'Customer must book a space before writing a review?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(992, 'raw', 'Config buyer fees for space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(993, 'raw', 'Vendor config for space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(994, 'raw', 'Space created by vendor must be approved by admin', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(995, 'raw', 'Space Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(996, 'raw', 'Name of the space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(997, 'raw', 'FAQs', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(998, 'raw', 'Eg: When and where does the tour end?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(999, 'raw', 'Eg: Can I bring my pet?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1000, 'raw', 'Extra Info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1001, 'raw', 'No. Bed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1002, 'raw', 'Example: 3', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1003, 'raw', 'No. Bathroom', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1004, 'raw', 'Example: 5', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1005, 'raw', 'Square', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1006, 'raw', 'Example: 100', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1007, 'raw', 'Space Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1008, 'raw', 'Space Sale Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1009, 'raw', 'Max Guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1010, 'raw', 'Enable extra price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1011, 'raw', 'Extra Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1012, 'raw', 'Extra price name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1013, 'raw', 'Per hour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1014, 'raw', 'Per day', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1015, 'raw', 'Discount by number of people', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1016, 'raw', 'No of people', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1017, 'raw', 'Discount', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1018, 'raw', 'From', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1019, 'raw', 'To', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1020, 'raw', 'Fixed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1021, 'raw', 'Space information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1022, 'raw', 'Space name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1023, 'raw', 'Space Video', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1024, 'raw', 'From - To', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1025, 'raw', ':count spaces found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1026, 'raw', ':count space found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1027, 'raw', 'Showing :from - :to of :total Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1028, 'raw', 'No. People', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1029, 'raw', 'No Space', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1030, 'raw', 'Availability Spaces', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1031, 'raw', 'Template Management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1032, 'raw', 'Create new template', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1033, 'raw', 'Create new Template', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1034, 'raw', 'Edit Template: :title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1035, 'raw', 'Your template has been saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1036, 'raw', 'Column', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1037, 'raw', 'Question', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1038, 'raw', 'Answer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1039, 'raw', 'FAQ List', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1040, 'raw', 'Form Search All Service', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1041, 'raw', 'Section', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1042, 'raw', 'Editor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1043, 'raw', 'Image Uploader', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1044, 'raw', 'Text', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1045, 'raw', 'Youtube link', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1046, 'raw', 'Video Player', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1047, 'raw', 'Template', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1048, 'raw', 'Edit Template:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1049, 'raw', 'Template Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1050, 'raw', 'All Blocks', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1051, 'raw', 'Template Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1052, 'raw', 'Save Template', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1053, 'raw', 'Are you want to delete?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1054, 'raw', 'Add New', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1055, 'raw', 'Add new Template', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1056, 'raw', 'All templates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1057, 'raw', 'Attributes: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1058, 'raw', 'Term not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1059, 'raw', 'Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1060, 'raw', 'Booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1061, 'raw', 'Tour Booking History', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1062, 'raw', 'Category saved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1063, 'raw', 'Add Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1064, 'raw', 'Edit Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1065, 'raw', 'Tour updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1066, 'raw', 'Tour created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1067, 'raw', 'Title Link More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1068, 'raw', 'Link More', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1069, 'raw', 'Call To Action', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1070, 'raw', 'Tour: Form Search', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1071, 'raw', 'List Featured Item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1072, 'raw', 'Box Shadow', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1073, 'raw', 'Filter by Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1074, 'raw', 'Tour: List Items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1075, 'raw', 'Number star', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1076, 'raw', 'Avatar Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1077, 'raw', 'List Testimonial', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1078, 'raw', 'Tours Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1079, 'raw', 'Tour not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1080, 'raw', 'Manage Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1081, 'raw', 'Create Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1082, 'raw', 'Tour not found!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1083, 'raw', 'Edit Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1084, 'raw', 'Delete tour success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1085, 'raw', 'Search for Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1086, 'raw', 'Start date is not a valid date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1087, 'raw', 'There are \" . $maxGuests . \" guests available for your selected date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1088, 'raw', 'This tour is not open on your selected day', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1089, 'raw', 'There are \" . $numberGuestsCanBook . \" guests available for your selected date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1090, 'raw', 'Not Rated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1091, 'raw', ':number Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1092, 'raw', ':number Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1093, 'raw', 'All Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1094, 'raw', 'Booking Calendar', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1095, 'raw', 'Manage Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1096, 'raw', 'Tour Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1097, 'raw', 'Tour Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1098, 'raw', 'Tours Availability Calendar', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1099, 'raw', 'No tours found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1100, 'raw', 'Max Guest', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1101, 'raw', 'Min', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1102, 'raw', 'Max', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1103, 'raw', 'Category name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1104, 'raw', 'Tour Categories', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1105, 'raw', 'Add new tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1106, 'raw', 'View Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1107, 'raw', 'Tour Featured', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1108, 'raw', 'All Tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1109, 'raw', 'Config review for tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1110, 'raw', 'Enable review system for Tour?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1111, 'raw', 'Turn on the mode for reviewing tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1112, 'raw', 'Customer must book a tour before writing a review?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1113, 'raw', 'Does the review need approved by admin?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1114, 'raw', 'Config buyer fees for tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1115, 'raw', 'Vendor config for tour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1116, 'raw', 'Tour create by vendor must be approved by admin?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1117, 'raw', 'Open Hours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1118, 'raw', 'Enable Open Hours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1119, 'raw', 'Enable?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1120, 'raw', 'Day of Week', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1121, 'raw', 'Open', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1122, 'raw', 'Monday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1123, 'raw', 'Tuesday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1124, 'raw', 'Wednesday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1125, 'raw', 'Thursday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1126, 'raw', 'Friday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1127, 'raw', 'Saturday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1128, 'raw', 'Sunday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1129, 'raw', 'Include', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1130, 'raw', 'Eg: Specialized bilingual guide', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1131, 'raw', 'Exclude', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1132, 'raw', 'Eg: Additional Services', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1133, 'raw', 'Itinerary', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1134, 'raw', 'Title - Desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1135, 'raw', 'Title: Day 1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1136, 'raw', 'Desc: TP. HCM City', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1137, 'raw', 'Tour Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1138, 'raw', 'Tour Sale Price', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1139, 'raw', 'Person Types', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1140, 'raw', 'Enable Person Types', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1141, 'raw', 'Person Type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1142, 'raw', 'Eg: Adults', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1143, 'raw', 'Minimum per booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1144, 'raw', 'Maximum per booking', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1145, 'raw', 'per 1 item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1146, 'raw', 'Tour Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1147, 'raw', 'Tour title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1148, 'raw', 'Tour Min People', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1149, 'raw', 'Tour Max People', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1150, 'raw', 'Tour Locations', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1151, 'raw', 'Real tour address', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1152, 'raw', 'Tour information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1153, 'raw', 'Tour name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1154, 'raw', 'Duration:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1155, 'raw', 'Discounts:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1156, 'raw', 'from :from guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1157, 'raw', ':from - :to guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1158, 'raw', 'Book now', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1159, 'raw', ':number hours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1160, 'raw', ':number hour', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1161, 'raw', 'hours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1162, 'raw', 'Please select Start date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1163, 'raw', 'Tour Video', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1164, 'raw', 'Tour Type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1165, 'raw', 'Group Size', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1166, 'raw', ':number persons', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1167, 'raw', ':number person', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1168, 'raw', 'Overview', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1169, 'raw', 'Tour Location', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1170, 'raw', 'Start Date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1171, 'raw', 'per person', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1172, 'raw', 'Included', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1173, 'raw', 'Excluded', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1174, 'raw', 'Included/Excluded', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1175, 'raw', 'Member Since :time', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1176, 'raw', 'Message host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1177, 'raw', ':count tours found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1178, 'raw', ':count tour found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1179, 'raw', 'Showing :from - :to of :total Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1180, 'raw', 'Apply Filters', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1181, 'raw', 'All Category', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1182, 'raw', 'Price filter', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1183, 'raw', 'More filters', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1184, 'raw', 'We couldn\'t find any tours.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1185, 'raw', 'Try changing your filter criteria', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1186, 'raw', 'Clear Filters', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1187, 'raw', 'Commission', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1188, 'raw', 'Amount', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1189, 'raw', '4. Availability', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1190, 'raw', '5. Attributes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1191, 'raw', 'No Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1192, 'raw', 'Tour by :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1193, 'raw', 'Availability Tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1194, 'raw', 'Showing :from - :to of :total tours', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1195, 'raw', 'Permission created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1196, 'raw', 'Permission updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1197, 'raw', 'Role created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1198, 'raw', 'Role updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1199, 'raw', 'Permission Matrix updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1200, 'raw', 'User', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1201, 'raw', 'Subscribers', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1202, 'raw', 'Edit: :email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1203, 'raw', 'Email exists', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1204, 'raw', 'Subscriber updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1205, 'raw', 'Updated successfully!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1206, 'raw', 'Your New password does not matches. Please type again!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1207, 'raw', 'Your current password does not matches with the password you provided. Please try again.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1208, 'raw', 'Password updated!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1209, 'raw', 'User updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1210, 'raw', 'User created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1211, 'raw', 'Select at leas 1 item!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1212, 'raw', ':name - reviews from guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1213, 'raw', ':name - :type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1214, 'raw', 'Update successfully', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1215, 'raw', 'Profile', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1216, 'raw', 'New Password cannot be same as your current password. Please choose a different password.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1217, 'raw', 'Password changed successfully !', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1218, 'raw', 'Email is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1219, 'raw', 'Email invalidate', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1220, 'raw', 'Password is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1221, 'raw', 'Username or password incorrect', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1222, 'raw', 'The first name is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1223, 'raw', 'The last name is required field', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1224, 'raw', 'The terms and conditions field is required', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1225, 'raw', 'Thank you for subscribing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1226, 'raw', 'You are already subscribed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1227, 'raw', 'Wishlist', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1228, 'raw', 'Delete success!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1229, 'raw', 'Delete fail!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1230, 'raw', 'Vendor Registration Approved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1231, 'raw', 'New Vendor Registration', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1232, 'raw', 'Users', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1233, 'raw', 'All Users', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1234, 'raw', 'Role Manager', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1235, 'raw', 'User Upgrade Request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1236, 'raw', 'User Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1237, 'raw', 'User Info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1238, 'raw', 'Business name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1239, 'raw', 'Birthday', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1240, 'raw', 'Address Line 1', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1241, 'raw', 'Address Line 2', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1242, 'raw', 'Address 2', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1243, 'raw', 'Biographical', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1244, 'raw', 'Role', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1245, 'raw', 'Vendor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1246, 'raw', 'Vendor Commission Type', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1247, 'raw', 'Default', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1248, 'raw', 'Vendor commission value', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1249, 'raw', 'Avatar', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1250, 'raw', 'Add new user', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1251, 'raw', 'Search User', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1252, 'raw', 'Old Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1253, 'raw', 'New password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1254, 'raw', 'Re-Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1255, 'raw', 'Permission Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1256, 'raw', 'Add new permission', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1257, 'raw', 'All Permission', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1258, 'raw', 'Role Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1259, 'raw', 'Role Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1260, 'raw', 'Permission Matrix', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1261, 'raw', 'Add new role', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1262, 'raw', 'All Roles', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1263, 'raw', 'Inbox System', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1264, 'raw', 'Config inbox option', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1265, 'raw', 'Allow customer can send message to the vendor on detail page', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1266, 'raw', 'Google reCapcha Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1267, 'raw', 'Config google recapcha for system', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1268, 'raw', 'Enable reCapcha Login Form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1269, 'raw', 'On', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1270, 'raw', 'Turn on the mode for login form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1271, 'raw', 'Enable reCapcha Register Form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1272, 'raw', 'Turn on the mode for register form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1273, 'raw', 'Content Email User Registered', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1274, 'raw', 'Content email send to Customer or Administrator when user registered.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1275, 'raw', 'Enable send email to customer when customer registered ?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1276, 'raw', 'You must enable on main lang.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1277, 'raw', 'Email to customer content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1278, 'raw', 'Enable send email to Administrator when customer registered ?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1279, 'raw', 'Email to Administrator content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1280, 'raw', 'Content Email User Forgot Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1281, 'raw', 'Vendor Requests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1282, 'raw', 'Role request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1283, 'raw', 'Date request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1284, 'raw', 'Date approved', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1285, 'raw', 'Approved By', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1286, 'raw', 'Approve', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1287, 'raw', 'You are receiving this email because we approved your vendor registration request.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1288, 'raw', 'You can check your dashboard here:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1289, 'raw', 'View dashboard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1290, 'raw', 'Regards', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1291, 'raw', 'An user has been registered as Vendor. Please check the information bellow:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1292, 'raw', 'First name: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1293, 'raw', 'Last name: :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1294, 'raw', 'Email: :email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1295, 'raw', 'Registration date: :date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1296, 'raw', 'You can approved the request here:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1297, 'raw', 'View request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1298, 'raw', 'No Booking History', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1299, 'raw', 'Current Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1300, 'raw', 'New Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1301, 'raw', 'New Password Again', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1302, 'raw', 'My Profile', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1303, 'raw', 'Log Out', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1304, 'raw', 'Back to Homepage', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1305, 'raw', 'Reviews from guests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1306, 'raw', 'Hi, I\'m :name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1307, 'raw', ':count review', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1308, 'raw', ':count reviews', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1309, 'raw', 'Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1310, 'raw', 'Personal Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1311, 'raw', 'E-mail', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1312, 'raw', 'Phone Number', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1313, 'raw', 'About Yourself', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1314, 'raw', 'Browse', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1315, 'raw', 'Error upload...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1316, 'raw', 'No Image', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1317, 'raw', 'Location Information', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1318, 'raw', 'Address2', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1319, 'raw', 'State', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1320, 'raw', 'Zip Code', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1321, 'raw', 'WishList', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1322, 'raw', 'Showing :from - :to of :total', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1323, 'raw', 'No Items', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1324, 'raw', 'Remove', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1325, 'raw', 'Add new subscriber', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1326, 'raw', 'Subscriber Info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1327, 'raw', 'Add Subscriber', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1328, 'raw', 'Export to excel', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1329, 'raw', 'Export', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1330, 'raw', 'Search by name or email', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1331, 'raw', 'Payout Management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1332, 'raw', 'Vendor Plans', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1333, 'raw', 'Plan created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1334, 'raw', 'Add Plan', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1335, 'raw', 'Vendor plan updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1336, 'raw', 'Vendor Register Form', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1337, 'raw', 'Vendor dashboard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1338, 'raw', 'Payouts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1339, 'raw', 'Sorry! No method available at the moment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1340, 'raw', 'You does not select payout method or you need to enter account info for that method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1341, 'raw', 'You don not have enough :amount for payout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1342, 'raw', 'Minimum amount to pay is :amount', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1343, 'raw', 'Payout request has been created', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1344, 'raw', 'Can not create vendor message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1345, 'raw', 'Can not register', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1346, 'raw', 'Register success. Please wait for admin approval', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1347, 'raw', 'A payout request has been updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1348, 'raw', 'Your payout request has been updated', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1349, 'raw', 'A vendor has been submitted a payout request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1350, 'raw', 'Your payout request has been submitted', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1351, 'raw', 'A payout request has been deleted', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1352, 'raw', 'Your payout request has been deleted', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1353, 'raw', 'A payout request has been rejected', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1354, 'raw', 'Your payout request has been rejected', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1355, 'raw', 'Vendor Plan Meta', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1356, 'raw', 'User upgrade request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1357, 'raw', 'Payouts :count', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1358, 'raw', 'Vendor Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1359, 'raw', 'Payout request management', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1360, 'raw', 'With selected:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1361, 'raw', 'Bulk action', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1362, 'raw', 'Search by payout id', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1363, 'raw', 'ID', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1364, 'raw', 'Note', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1365, 'raw', 'Payout Method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1366, 'raw', 'To admin:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1367, 'raw', 'To vendor:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1368, 'raw', ':name to :info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1369, 'raw', 'Payout request bulk action', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1370, 'raw', 'Pay date', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1371, 'raw', 'YYYY/MM/DD', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1372, 'raw', 'Note to vendor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1373, 'raw', 'Please select at lease one item', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1374, 'raw', 'Do you want to delete those items?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1375, 'raw', 'Status is empty', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1376, 'raw', 'Add new plan', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1377, 'raw', 'Plan Content', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1378, 'raw', 'All Plans', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1379, 'raw', 'Services ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1380, 'raw', 'Post', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1381, 'raw', 'Maximum create', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1382, 'raw', 'Auto publish', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1383, 'raw', 'Config Vendor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1384, 'raw', 'Change your config vendor system', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1385, 'raw', 'Vendor Enable?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1386, 'raw', 'Example: 10% commssion. Vendor get 90%, Admin get 10%', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1387, 'raw', 'Vendor Register', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1388, 'raw', 'Vendor Auto Approved?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1389, 'raw', 'Vendor Role', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1390, 'raw', 'Vendor Profile', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1391, 'raw', 'Show vendor email in profile?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1392, 'raw', 'Show vendor phone in profile?', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1393, 'raw', 'Payout Options', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1394, 'raw', 'Booking Status Conditions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1395, 'raw', 'Processing', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1396, 'raw', 'Confirmed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1397, 'raw', 'Completed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1398, 'raw', 'Paid', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1399, 'raw', 'Select booking status will be use for calculate payout of vendor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1400, 'raw', 'Payout Methods', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1401, 'raw', 'Eg: bank_transfer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1402, 'raw', 'Minimum to pay', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1403, 'raw', 'Your payout request has been submitted:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1404, 'raw', 'Your payout request has been updated:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1405, 'raw', 'Your payout request has been rejected:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1406, 'raw', 'Status:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1407, 'raw', 'Pay date:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1408, 'raw', 'Note to vendor:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1409, 'raw', 'Payout information:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1410, 'raw', 'Payout ID:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1411, 'raw', 'Amount: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1412, 'raw', 'Payout method: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1413, 'raw', 'Note to admin: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1414, 'raw', 'Created at: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53');
INSERT INTO `core_translations` (`id`, `locale`, `string`, `parent_id`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1415, 'raw', 'You can check your payout request here:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1416, 'raw', 'View payouts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1417, 'raw', 'Hello administrator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1418, 'raw', 'A vendor has been submitted a payout request:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1419, 'raw', 'A payout request has been updated:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1420, 'raw', 'A payout request has been rejected:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1421, 'raw', 'Vendor: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1422, 'raw', 'You can check all payout request here:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1423, 'raw', 'Manage payouts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1424, 'raw', 'Vendor Payouts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1425, 'raw', 'No payout methods available. Please contact administrator', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1426, 'raw', 'Payout history', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1427, 'raw', '#', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1428, 'raw', 'Date Request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1429, 'raw', 'Notes', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1430, 'raw', 'Date Processed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1431, 'raw', 'Create request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1432, 'raw', 'Balance: ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1433, 'raw', 'Your balance is zero', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1434, 'raw', 'Create payout request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1435, 'raw', 'Available for payout', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1436, 'raw', 'Method', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1437, 'raw', 'Minimum: :amount', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1438, 'raw', 'Note to admin', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1439, 'raw', 'Send request', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1440, 'raw', 'Setup your payment accounts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1441, 'raw', 'Setup accounts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1442, 'raw', 'To create payout request, please setup your payment account first', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1443, 'raw', 'Setup payout accounts', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1444, 'raw', 'Your account', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1445, 'raw', 'Your account info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1446, 'raw', 'These credentials do not match our records.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1447, 'raw', 'Too many login attempts. Please try again in :seconds seconds.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1448, 'raw', 'Laravel Installer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1449, 'raw', 'Next Step', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1450, 'raw', 'Install', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1451, 'raw', 'The Following errors occurred:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1452, 'raw', 'Welcome', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1453, 'raw', 'Easy Installation and Setup Wizard.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1454, 'raw', 'Check Requirements', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1455, 'raw', 'Step 1 | Server Requirements', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1456, 'raw', 'Server Requirements', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1457, 'raw', 'Check Permissions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1458, 'raw', 'Step 2 | Permissions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1459, 'raw', 'Permissions', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1460, 'raw', 'Configure Environment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1461, 'raw', 'Step 3 | Environment Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1462, 'raw', 'Environment Settings', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1463, 'raw', 'Please select how you want to configure the apps <code>.env</code> file.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1464, 'raw', 'Form Wizard Setup', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1465, 'raw', 'Classic Text Editor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1466, 'raw', 'Step 3 | Environment Settings | Guided Wizard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:53', '2019-11-26 09:34:53'),
(1467, 'raw', 'Guided <code>.env</code> Wizard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1468, 'raw', 'Environment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1469, 'raw', 'Database', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1470, 'raw', 'Application', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1471, 'raw', 'An environment name is required.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1472, 'raw', 'App Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1473, 'raw', 'App Environment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1474, 'raw', 'Local', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1475, 'raw', 'Development', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1476, 'raw', 'Qa', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1477, 'raw', 'Production', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1478, 'raw', 'Other', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1479, 'raw', 'Enter your environment...', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1480, 'raw', 'App Debug', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1481, 'raw', 'True', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1482, 'raw', 'False', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1483, 'raw', 'App Log Level', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1484, 'raw', 'debug', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1485, 'raw', 'info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1486, 'raw', 'notice', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1487, 'raw', 'warning', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1488, 'raw', 'error', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1489, 'raw', 'critical', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1490, 'raw', 'alert', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1491, 'raw', 'emergency', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1492, 'raw', 'App Url', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1493, 'raw', 'Database Connection', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1494, 'raw', 'mysql', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1495, 'raw', 'sqlite', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1496, 'raw', 'pgsql', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1497, 'raw', 'sqlsrv', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1498, 'raw', 'Database Host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1499, 'raw', 'Database Port', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1500, 'raw', 'Database Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1501, 'raw', 'Database User Name', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1502, 'raw', 'Database Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1503, 'raw', 'More Info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1504, 'raw', 'Broadcasting, Caching, Session, &amp; Queue', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1505, 'raw', 'Broadcast Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1506, 'raw', 'Cache Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1507, 'raw', 'Session Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1508, 'raw', 'Queue Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1509, 'raw', 'Redis Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1510, 'raw', 'Redis Host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1511, 'raw', 'Redis Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1512, 'raw', 'Redis Port', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1513, 'raw', 'Mail', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1514, 'raw', 'Mail Driver', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1515, 'raw', 'Mail Host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1516, 'raw', 'Mail Port', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1517, 'raw', 'Mail Username', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1518, 'raw', 'Mail Password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1519, 'raw', 'Mail Encryption', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1520, 'raw', 'Pusher', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1521, 'raw', 'Pusher App Id', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1522, 'raw', 'Pusher App Key', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1523, 'raw', 'Pusher App Secret', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1524, 'raw', 'Setup Database', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1525, 'raw', 'Setup Application', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1526, 'raw', 'Step 3 | Environment Settings | Classic Editor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1527, 'raw', 'Classic Environment Editor', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1528, 'raw', 'Save .env', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1529, 'raw', 'Use Form Wizard', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1530, 'raw', 'Save and Install', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1531, 'raw', 'Your .env file settings have been saved.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1532, 'raw', 'Unable to save the .env file, Please create it manually.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1533, 'raw', 'Laravel Installer successfully INSTALLED on ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1534, 'raw', 'Installation Finished', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1535, 'raw', 'Application has been successfully installed.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1536, 'raw', 'Migration &amp; Seed Console Output:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1537, 'raw', 'Application Console Output:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1538, 'raw', 'Installation Log Entry:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1539, 'raw', 'Final .env File:', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1540, 'raw', 'Click here to exit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1541, 'raw', 'Laravel Updater', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1542, 'raw', 'Welcome To The Updater', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1543, 'raw', 'Welcome to the update wizard.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1544, 'raw', 'There is 1 update.|There are :number updates.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1545, 'raw', 'Finished', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1546, 'raw', 'Application\\\'s database has been successfully updated.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1547, 'raw', 'Laravel Installer successfully UPDATED on ', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1548, 'raw', '&laquo; Previous', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1549, 'raw', 'Next &raquo;', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1550, 'raw', 'Passwords must be at least eight characters and match the confirmation.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1551, 'raw', 'Your password has been reset!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1552, 'raw', 'We have e-mailed your password reset link!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1553, 'raw', 'This password reset token is invalid.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1554, 'raw', 'We can\'t find a user with that e-mail address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1555, 'raw', 'The :attribute must be accepted.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1556, 'raw', 'The :attribute is not a valid URL.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1557, 'raw', 'The :attribute must be a date after :date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1558, 'raw', 'The :attribute must be a date after or equal to :date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1559, 'raw', 'The :attribute may only contain letters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1560, 'raw', 'The :attribute may only contain letters, numbers, dashes and underscores.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1561, 'raw', 'The :attribute may only contain letters and numbers.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1562, 'raw', 'The :attribute must be an array.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1563, 'raw', 'The :attribute must be a date before :date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1564, 'raw', 'The :attribute must be a date before or equal to :date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1565, 'raw', 'The :attribute must be between :min and :max.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1566, 'raw', 'The :attribute must be between :min and :max kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1567, 'raw', 'The :attribute must be between :min and :max characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1568, 'raw', 'The :attribute must have between :min and :max items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1569, 'raw', 'The :attribute field must be true or false.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1570, 'raw', 'The :attribute confirmation does not match.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1571, 'raw', 'The :attribute is not a valid date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1572, 'raw', 'The :attribute must be a date equal to :date.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1573, 'raw', 'The :attribute does not match the format :format.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1574, 'raw', 'The :attribute and :other must be different.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1575, 'raw', 'The :attribute must be :digits digits.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1576, 'raw', 'The :attribute must be between :min and :max digits.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1577, 'raw', 'The :attribute has invalid image dimensions.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1578, 'raw', 'The :attribute field has a duplicate value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1579, 'raw', 'The :attribute must be a valid email address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1580, 'raw', 'The selected :attribute is invalid.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1581, 'raw', 'The :attribute must be a file.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1582, 'raw', 'The :attribute field must have a value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1583, 'raw', 'The :attribute must be greater than :value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1584, 'raw', 'The :attribute must be greater than :value kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1585, 'raw', 'The :attribute must be greater than :value characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1586, 'raw', 'The :attribute must have more than :value items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1587, 'raw', 'The :attribute must be greater than or equal :value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1588, 'raw', 'The :attribute must be greater than or equal :value kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1589, 'raw', 'The :attribute must be greater than or equal :value characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1590, 'raw', 'The :attribute must have :value items or more.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1591, 'raw', 'The :attribute must be an image.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1592, 'raw', 'The :attribute field does not exist in :other.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1593, 'raw', 'The :attribute must be an integer.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1594, 'raw', 'The :attribute must be a valid IP address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1595, 'raw', 'The :attribute must be a valid IPv4 address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1596, 'raw', 'The :attribute must be a valid IPv6 address.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1597, 'raw', 'The :attribute must be a valid JSON string.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1598, 'raw', 'The :attribute must be less than :value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1599, 'raw', 'The :attribute must be less than :value kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1600, 'raw', 'The :attribute must be less than :value characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1601, 'raw', 'The :attribute must have less than :value items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1602, 'raw', 'The :attribute must be less than or equal :value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1603, 'raw', 'The :attribute must be less than or equal :value kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1604, 'raw', 'The :attribute must be less than or equal :value characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1605, 'raw', 'The :attribute must not have more than :value items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1606, 'raw', 'The :attribute may not be greater than :max.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1607, 'raw', 'The :attribute may not be greater than :max kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1608, 'raw', 'The :attribute may not be greater than :max characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1609, 'raw', 'The :attribute may not have more than :max items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1610, 'raw', 'The :attribute must be a file of type: :values.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1611, 'raw', 'The :attribute must be at least :min.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1612, 'raw', 'The :attribute must be at least :min kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1613, 'raw', 'The :attribute must be at least :min characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1614, 'raw', 'The :attribute must have at least :min items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1615, 'raw', 'The :attribute format is invalid.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1616, 'raw', 'The :attribute must be a number.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1617, 'raw', 'The :attribute field must be present.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1618, 'raw', 'The :attribute field is required.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1619, 'raw', 'The :attribute field is required when :other is :value.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1620, 'raw', 'The :attribute field is required unless :other is in :values.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1621, 'raw', 'The :attribute field is required when :values is present.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1622, 'raw', 'The :attribute field is required when :values are present.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1623, 'raw', 'The :attribute field is required when :values is not present.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1624, 'raw', 'The :attribute field is required when none of :values are present.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1625, 'raw', 'The :attribute and :other must match.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1626, 'raw', 'The :attribute must be :size.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1627, 'raw', 'The :attribute must be :size kilobytes.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1628, 'raw', 'The :attribute must be :size characters.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1629, 'raw', 'The :attribute must contain :size items.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1630, 'raw', 'The :attribute must start with one of the following: :values', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1631, 'raw', 'The :attribute must be a string.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1632, 'raw', 'The :attribute must be a valid zone.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1633, 'raw', 'The :attribute has already been taken.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1634, 'raw', 'The :attribute failed to upload.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1635, 'raw', 'The :attribute must be a valid UUID.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1636, 'raw', 'custom-message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1637, 'raw', 'Unauthorized', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1638, 'raw', 'Forbidden', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1639, 'raw', 'Page not found', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1640, 'raw', 'Sorry, we couldn\'t find the page you\'re looking for.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1641, 'raw', 'Page Expired', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1642, 'raw', 'Too Many Requests', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1643, 'raw', 'Server Error', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1644, 'raw', 'Service Unavailable', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1645, 'raw', 'Oh no', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1646, 'raw', 'Go Home', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1647, 'raw', 'installer_messages.environment.classic.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1648, 'raw', 'installer_messages.environment.classic.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1649, 'raw', 'installer_messages.environment.classic.save', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1650, 'raw', 'installer_messages.environment.classic.back', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1651, 'raw', 'installer_messages.environment.classic.install', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1652, 'raw', 'installer_messages.environment.wizard.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1653, 'raw', 'installer_messages.environment.wizard.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1654, 'raw', 'installer_messages.environment.wizard.tabs.environment', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1655, 'raw', 'installer_messages.environment.wizard.tabs.database', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1656, 'raw', 'installer_messages.environment.wizard.tabs.application', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1657, 'raw', 'installer_messages.environment.wizard.form.app_name_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1658, 'raw', 'installer_messages.environment.wizard.form.app_name_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1659, 'raw', 'installer_messages.environment.wizard.form.app_environment_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1660, 'raw', 'installer_messages.environment.wizard.form.app_environment_label_local', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1661, 'raw', 'installer_messages.environment.wizard.form.app_environment_label_developement', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1662, 'raw', 'installer_messages.environment.wizard.form.app_environment_label_qa', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1663, 'raw', 'installer_messages.environment.wizard.form.app_environment_label_production', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1664, 'raw', 'installer_messages.environment.wizard.form.app_environment_label_other', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1665, 'raw', 'installer_messages.environment.wizard.form.app_environment_placeholder_other', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1666, 'raw', 'installer_messages.environment.wizard.form.app_debug_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1667, 'raw', 'installer_messages.environment.wizard.form.app_debug_label_true', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1668, 'raw', 'installer_messages.environment.wizard.form.app_debug_label_false', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1669, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1670, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_debug', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1671, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1672, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_notice', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1673, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_warning', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1674, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_error', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1675, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_critical', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1676, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_alert', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1677, 'raw', 'installer_messages.environment.wizard.form.app_log_level_label_emergency', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1678, 'raw', 'installer_messages.environment.wizard.form.app_url_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1679, 'raw', 'installer_messages.environment.wizard.form.app_url_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1680, 'raw', 'installer_messages.environment.wizard.form.buttons.setup_database', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1681, 'raw', 'installer_messages.environment.wizard.form.db_connection_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1682, 'raw', 'installer_messages.environment.wizard.form.db_connection_label_mysql', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1683, 'raw', 'installer_messages.environment.wizard.form.db_connection_label_sqlite', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1684, 'raw', 'installer_messages.environment.wizard.form.db_connection_label_pgsql', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1685, 'raw', 'installer_messages.environment.wizard.form.db_connection_label_sqlsrv', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1686, 'raw', 'installer_messages.environment.wizard.form.db_host_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1687, 'raw', 'installer_messages.environment.wizard.form.db_host_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1688, 'raw', 'installer_messages.environment.wizard.form.db_port_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1689, 'raw', 'installer_messages.environment.wizard.form.db_port_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1690, 'raw', 'installer_messages.environment.wizard.form.db_name_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1691, 'raw', 'installer_messages.environment.wizard.form.db_name_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1692, 'raw', 'installer_messages.environment.wizard.form.db_username_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1693, 'raw', 'installer_messages.environment.wizard.form.db_username_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1694, 'raw', 'installer_messages.environment.wizard.form.db_password_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1695, 'raw', 'installer_messages.environment.wizard.form.db_password_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1696, 'raw', 'Test DB', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1697, 'raw', 'installer_messages.environment.wizard.form.buttons.setup_application', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1698, 'raw', 'installer_messages.environment.wizard.form.app_tabs.broadcasting_title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1699, 'raw', 'installer_messages.environment.wizard.form.app_tabs.broadcasting_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1700, 'raw', 'installer_messages.environment.wizard.form.app_tabs.more_info', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1701, 'raw', 'installer_messages.environment.wizard.form.app_tabs.broadcasting_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1702, 'raw', 'installer_messages.environment.wizard.form.app_tabs.cache_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1703, 'raw', 'installer_messages.environment.wizard.form.app_tabs.cache_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1704, 'raw', 'installer_messages.environment.wizard.form.app_tabs.session_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1705, 'raw', 'installer_messages.environment.wizard.form.app_tabs.session_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1706, 'raw', 'installer_messages.environment.wizard.form.app_tabs.queue_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1707, 'raw', 'installer_messages.environment.wizard.form.app_tabs.queue_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1708, 'raw', 'installer_messages.environment.wizard.form.app_tabs.redis_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1709, 'raw', 'installer_messages.environment.wizard.form.app_tabs.redis_host', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1710, 'raw', 'installer_messages.environment.wizard.form.app_tabs.redis_password', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1711, 'raw', 'installer_messages.environment.wizard.form.app_tabs.redis_port', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1712, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1713, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_driver_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1714, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_driver_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1715, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_host_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1716, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_host_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1717, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_port_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1718, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_port_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1719, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_username_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1720, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_username_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1721, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_password_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1722, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_password_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1723, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_encryption_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1724, 'raw', 'installer_messages.environment.wizard.form.app_tabs.mail_encryption_placeholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1725, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1726, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_id_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1727, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_id_palceholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1728, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_key_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1729, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_key_palceholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1730, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_secret_label', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1731, 'raw', 'installer_messages.environment.wizard.form.app_tabs.pusher_app_secret_palceholder', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1732, 'raw', 'installer_messages.environment.wizard.form.buttons.install', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1733, 'raw', 'installer_messages.environment.menu.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1734, 'raw', 'installer_messages.environment.menu.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1735, 'raw', 'installer_messages.environment.menu.desc', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1736, 'raw', 'installer_messages.environment.menu.wizard-button', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1737, 'raw', 'installer_messages.environment.menu.classic-button', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1738, 'raw', 'installer_messages.final.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1739, 'raw', 'installer_messages.final.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1740, 'raw', 'installer_messages.final.migration', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1741, 'raw', 'installer_messages.final.console', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1742, 'raw', 'installer_messages.final.log', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1743, 'raw', 'installer_messages.final.env', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1744, 'raw', 'installer_messages.final.exit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1745, 'raw', 'installer_messages.updater.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1746, 'raw', 'installer_messages.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1747, 'raw', 'installer_messages.forms.errorTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1748, 'raw', 'installer_messages.permissions.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1749, 'raw', 'installer_messages.permissions.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1750, 'raw', 'installer_messages.permissions.next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1751, 'raw', 'installer_messages.requirements.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1752, 'raw', 'installer_messages.requirements.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1753, 'raw', 'installer_messages.requirements.next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1754, 'raw', 'installer_messages.updater.final.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1755, 'raw', 'installer_messages.updater.final.exit', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1756, 'raw', 'installer_messages.updater.welcome.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1757, 'raw', 'installer_messages.updater.overview.message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1758, 'raw', 'installer_messages.updater.overview.install_updates', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1759, 'raw', 'installer_messages.updater.welcome.message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1760, 'raw', 'installer_messages.next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1761, 'raw', 'installer_messages.welcome.templateTitle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1762, 'raw', 'PickOut :version Installer', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1763, 'raw', 'installer_messages.welcome.message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1764, 'raw', 'installer_messages.welcome.next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1765, 'raw', 'Log file >50M, please download it.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1766, 'raw', 'Level', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1767, 'raw', 'Context', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1768, 'raw', 'Line number', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1769, 'raw', 'auth.failed', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1770, 'raw', 'auth.throttle', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1771, 'raw', 'All rights reserved.', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1772, 'raw', 'Whoops!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1773, 'raw', 'Hello!', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1774, 'raw', 'pagination.previous', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1775, 'raw', 'pagination.next', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1776, 'raw', 'There was an error on row :row. :message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1777, 'raw', 'installer_messages.environment.wizard.form.name_required', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1778, 'raw', 'installer_messages.final.finished', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1779, 'raw', 'installer_messages.environment.success', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1780, 'raw', 'installer_messages.environment.errors', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1781, 'raw', 'installer_messages.installed.success_log_message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1782, 'raw', 'installer_messages.updater.log.success_message', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1783, 'raw', 'installer_messages.welcome.title', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:34:54', '2019-11-26 09:34:54'),
(1784, 'es_419', 'Tienes una Cuenta?', 769, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1785, 'es_419', NULL, 939, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1786, 'es_419', NULL, 445, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1787, 'es_419', NULL, 141, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1788, 'es_419', NULL, 498, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1789, 'es_419', NULL, 142, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1790, 'es_419', NULL, 496, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1791, 'es_419', NULL, 942, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1792, 'es_419', NULL, 940, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1793, 'es_419', NULL, 495, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1794, 'es_419', NULL, 941, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1795, 'es_419', NULL, 905, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1796, 'es_419', NULL, 262, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1797, 'es_419', NULL, 473, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1798, 'es_419', NULL, 718, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1799, 'es_419', NULL, 1, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1800, 'es_419', NULL, 457, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1801, 'es_419', NULL, 919, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1802, 'es_419', NULL, 499, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1803, 'es_419', NULL, 866, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1804, 'es_419', NULL, 662, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1805, 'es_419', NULL, 663, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1806, 'es_419', NULL, 664, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1807, 'es_419', NULL, 625, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1808, 'es_419', NULL, 626, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1809, 'es_419', NULL, 667, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1810, 'es_419', NULL, 666, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1811, 'es_419', NULL, 435, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1812, 'es_419', NULL, 434, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12');
INSERT INTO `core_translations` (`id`, `locale`, `string`, `parent_id`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1813, 'es_419', NULL, 1307, 1, NULL, NULL, NULL, '2019-11-26 09:36:12', '2019-11-26 09:36:12'),
(1814, 'raw', '-- Select --', NULL, 1, NULL, NULL, NULL, '2019-11-26 09:36:33', '2019-11-26 09:36:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_13_174533_create_permission_tables', 1),
(4, '2019_03_17_114820_create_table_core_pages', 1),
(5, '2019_03_17_140539_create_media_files_table', 1),
(6, '2019_03_20_072502_create_bravo_tours', 1),
(7, '2019_03_20_081256_create_core_news_category_table', 1),
(8, '2019_03_27_081940_create_core_setting_table', 1),
(9, '2019_03_28_101009_create_bravo_booking_table', 1),
(10, '2019_03_28_165911_create_booking_meta_table', 1),
(11, '2019_03_29_093236_update_bookings_table', 1),
(12, '2019_04_01_045229_create_user_meta_table', 1),
(13, '2019_04_01_150630_create_menu_table', 1),
(14, '2019_04_02_150630_create_core_news_table', 1),
(15, '2019_04_03_073553_bravo_tour_category', 1),
(16, '2019_04_03_080159_bravo_location', 1),
(17, '2019_04_05_143248_create_core_templates_table', 1),
(18, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(19, '2019_05_07_085430_create_core_languages_table', 1),
(20, '2019_05_07_085442_create_core_translations_table', 1),
(21, '2019_05_17_074008_create_bravo_review', 1),
(22, '2019_05_17_074048_create_bravo_review_meta', 1),
(23, '2019_05_17_113042_create_tour_attrs_table', 1),
(24, '2019_05_21_084235_create_bravo_contact_table', 1),
(25, '2019_05_28_152845_create_core_subscribers_table', 1),
(26, '2019_06_17_142338_bravo_seo', 1),
(27, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(28, '2019_07_08_075436_create_core_vendor_plans', 1),
(29, '2019_07_08_083733_create_vendors_plan_payments', 1),
(30, '2019_07_11_083501_update_from_110_to_120', 1),
(31, '2019_07_30_072809_create_space_table', 1),
(32, '2019_07_30_072809_create_tour_dates_table', 1),
(33, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(34, '2019_08_09_163909_create_inbox_table', 1),
(35, '2019_08_16_094354_update_from_120_to_130', 1),
(36, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(37, '2019_09_13_070650_update_from_130_to_140', 1),
(38, '2019_09_20_072809_create_hotel_table', 1),
(39, '2019_10_22_151319_create_car_table', 1),
(40, '2019_11_05_092516_update_from_140_to_150', 1),
(41, '2020_04_02_150631_create_core_tags_table', 1),
(42, '2021_04_02_150632_create_core_tag_new_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_name`, `verify_submit_status`, `is_verified`) VALUES
(1, 'System Admin', 'System', 'Admin', 'admin@dev.com', NULL, '$2y$10$HdpLccJafuC1T72PADz0K.iKPVx2u4LrNLI4j1UCJF1EpkwLj8ZW.', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, 'a4oZUKCCc8Tt96l2UzRZ3ztxfRqXvgIlohgrS8mMXo5dIKfsulOFp6zHn7QA', '2019-11-26 09:29:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'Vendor', '01', 'vendor1@dev.com', NULL, '$2y$10$oG/vHM4BNamuIDuw/xzjXeVWVxfysjA4oip3Zk2voSizsmqYG.SYe', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'Customer', '01', 'customer1@dev.com', NULL, '$2y$10$dnMjWd0LLbboOoaYjrklle4ocofDg3JbWjOFflAs.4Jx1.UAufKL2', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'Elise', 'Aarohi', 'Aarohi@dev.com', NULL, '$2y$10$Ch2lU7dPqsmnGuQz9mA3b.0i.TgJPYTnnpTNmTPE4DRcTx1TTZlVa', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'Kaytlyn', 'Alvapriya', 'Alvapriya@dev.com', NULL, '$2y$10$X9edE0L/DyHZUbhMgTwXo.QWwO96LkDRyjVi4ebLN8ZI3ofBroab.', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Lynne', 'Victoria', 'Victoria@dev.com', NULL, '$2y$10$LHa3yV99T1u9M2C4uiBOwORTsuN/J8Oo46DHqmKH4zXuN9Ei71PKu', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'William', 'Diana', 'Diana@dev.com', NULL, '$2y$10$vG5LORqaz9NILWjAE/I.WernKEfUlB1.frUo/UsvoeKvfN5KDvfjC', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'Sarah', 'Violet', 'Violet@dev.com', NULL, '$2y$10$Y0XEqjOgoBnAR/YcDkDHOO66hSaue8ROccPwTN93hbONk2WVAiJ6q', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Paul', 'Amora', 'Amora@dev.com', NULL, '$2y$10$mDL/nc9zGng1KKOoZMIB.u8tq0q3fBJ3sxQavlN56jzY7e5FV/uwS', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Richard', 'Davina', 'Davina@dev.com', NULL, '$2y$10$MKotFnCK0IMKj2LfbsfQouvoASP0m7hG2A.eOpN51PrwL.fS2pDcO', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Shushi', 'Yashashree', 'Yashashree@dev.com', NULL, '$2y$10$EEVvkWX1kqZq6EdI.2RCFuFlaGoZhqpA2N0zTJLNANNzDSg6frFGW', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Anne', 'Nami', 'Nami@dev.com', NULL, '$2y$10$dnqT8pTDN.FmvDNQAKr5subS8hVDGHyAADvtjU4eephgzvr60HZ.2', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Bush', 'Elise', 'Elise@dev.com', NULL, '$2y$10$PMTkRfZ7SXLrZWqohX70PuSR7SPsJ.w/qZOmurEQBUaqNjXhXzqcq', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Elizabeth', 'Norah', 'Norah@dev.com', NULL, '$2y$10$eixs.chmto4PH0Cqhm5taud8dnc/DLdBx3NdYYXLEjU2907VdxRsm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'James', 'Alia', 'Alia@dev.com', NULL, '$2y$10$GCJUX61xSF9fZFfWKQG9/.2EsE1fyl56riRksu2Mp/6JQYst/i.Ty', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'John', 'Dakshi', 'Dakshi@dev.com', NULL, '$2y$10$iYRJZizMg7454kswMl2eFecFkSylDx1eUgAJYho5tVzR6Cu73RUSu', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-26 09:29:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indices de la tabla `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_cars`
--
ALTER TABLE `bravo_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_cars_slug_index` (`slug`);

--
-- Indices de la tabla `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_car_translations_locale_index` (`locale`);

--
-- Indices de la tabla `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indices de la tabla `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_room_translations_locale_index` (`locale`);

--
-- Indices de la tabla `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indices de la tabla `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indices de la tabla `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indices de la tabla `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_spaces_slug_index` (`slug`);

--
-- Indices de la tabla `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_space_translations_locale_index` (`locale`);

--
-- Indices de la tabla `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indices de la tabla `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indices de la tabla `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indices de la tabla `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indices de la tabla `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `bravo_tour_translations_slug_index` (`slug`);

--
-- Indices de la tabla `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indices de la tabla `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indices de la tabla `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indices de la tabla `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_cars`
--
ALTER TABLE `bravo_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT de la tabla `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1815;

--
-- AUTO_INCREMENT de la tabla `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
