-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 01:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it210-web-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `num_code` int(3) NOT NULL DEFAULT 0,
  `alpha_2_code` varchar(2) DEFAULT NULL,
  `alpha_3_code` varchar(3) DEFAULT NULL,
  `en_short_name` varchar(52) DEFAULT NULL,
  `nationality` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`num_code`, `alpha_2_code`, `alpha_3_code`, `en_short_name`, `nationality`) VALUES
(4, 'AF', 'AFG', 'Afghanistan', 'Afghan'),
(8, 'AL', 'ALB', 'Albania', 'Albanian'),
(10, 'AQ', 'ATA', 'Antarctica', 'Antarctic'),
(12, 'DZ', 'DZA', 'Algeria', 'Algerian'),
(16, 'AS', 'ASM', 'American Samoa', 'American Samoan'),
(20, 'AD', 'AND', 'Andorra', 'Andorran'),
(24, 'AO', 'AGO', 'Angola', 'Angolan'),
(28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antiguan or Barbudan'),
(31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaijani, Azeri'),
(32, 'AR', 'ARG', 'Argentina', 'Argentine'),
(36, 'AU', 'AUS', 'Australia', 'Australian'),
(40, 'AT', 'AUT', 'Austria', 'Austrian'),
(44, 'BS', 'BHS', 'Bahamas', 'Bahamian'),
(48, 'BH', 'BHR', 'Bahrain', 'Bahraini'),
(50, 'BD', 'BGD', 'Bangladesh', 'Bangladeshi'),
(51, 'AM', 'ARM', 'Armenia', 'Armenian'),
(52, 'BB', 'BRB', 'Barbados', 'Barbadian'),
(56, 'BE', 'BEL', 'Belgium', 'Belgian'),
(60, 'BM', 'BMU', 'Bermuda', 'Bermudian, Bermudan'),
(64, 'BT', 'BTN', 'Bhutan', 'Bhutanese'),
(68, 'BO', 'BOL', 'Bolivia (Plurinational State of)', 'Bolivian'),
(70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnian or Herzegovinian'),
(72, 'BW', 'BWA', 'Botswana', 'Motswana, Botswanan'),
(74, 'BV', 'BVT', 'Bouvet Island', 'Bouvet Island'),
(76, 'BR', 'BRA', 'Brazil', 'Brazilian'),
(84, 'BZ', 'BLZ', 'Belize', 'Belizean'),
(86, 'IO', 'IOT', 'British Indian Ocean Territory', 'BIOT'),
(90, 'SB', 'SLB', 'Solomon Islands', 'Solomon Island'),
(92, 'VG', 'VGB', 'Virgin Islands (British)', 'British Virgin Island'),
(96, 'BN', 'BRN', 'Brunei Darussalam', 'Bruneian'),
(100, 'BG', 'BGR', 'Bulgaria', 'Bulgarian'),
(104, 'MM', 'MMR', 'Myanmar', 'Burmese'),
(108, 'BI', 'BDI', 'Burundi', 'Burundian'),
(112, 'BY', 'BLR', 'Belarus', 'Belarusian'),
(116, 'KH', 'KHM', 'Cambodia', 'Cambodian'),
(120, 'CM', 'CMR', 'Cameroon', 'Cameroonian'),
(124, 'CA', 'CAN', 'Canada', 'Canadian'),
(132, 'CV', 'CPV', 'Cabo Verde', 'Cabo Verdean'),
(136, 'KY', 'CYM', 'Cayman Islands', 'Caymanian'),
(140, 'CF', 'CAF', 'Central African Republic', 'Central African'),
(144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lankan'),
(148, 'TD', 'TCD', 'Chad', 'Chadian'),
(152, 'CL', 'CHL', 'Chile', 'Chilean'),
(156, 'CN', 'CHN', 'China', 'Chinese'),
(158, 'TW', 'TWN', 'Taiwan, Province of China', 'Chinese, Taiwanese'),
(162, 'CX', 'CXR', 'Christmas Island', 'Christmas Island'),
(166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Cocos Island'),
(170, 'CO', 'COL', 'Colombia', 'Colombian'),
(174, 'KM', 'COM', 'Comoros', 'Comoran, Comorian'),
(175, 'YT', 'MYT', 'Mayotte', 'Mahoran'),
(178, 'CG', 'COG', 'Congo (Republic of the)', 'Congolese'),
(180, 'CD', 'COD', 'Congo (Democratic Republic of the)', 'Congolese'),
(184, 'CK', 'COK', 'Cook Islands', 'Cook Island'),
(188, 'CR', 'CRI', 'Costa Rica', 'Costa Rican'),
(191, 'HR', 'HRV', 'Croatia', 'Croatian'),
(192, 'CU', 'CUB', 'Cuba', 'Cuban'),
(196, 'CY', 'CYP', 'Cyprus', 'Cypriot'),
(203, 'CZ', 'CZE', 'Czech Republic', 'Czech'),
(204, 'BJ', 'BEN', 'Benin', 'Beninese, Beninois'),
(208, 'DK', 'DNK', 'Denmark', 'Danish'),
(212, 'DM', 'DMA', 'Dominica', 'Dominican'),
(214, 'DO', 'DOM', 'Dominican Republic', 'Dominican'),
(218, 'EC', 'ECU', 'Ecuador', 'Ecuadorian'),
(222, 'SV', 'SLV', 'El Salvador', 'Salvadoran'),
(226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Equatorial Guinean, Equatoguinean'),
(231, 'ET', 'ETH', 'Ethiopia', 'Ethiopian'),
(232, 'ER', 'ERI', 'Eritrea', 'Eritrean'),
(233, 'EE', 'EST', 'Estonia', 'Estonian'),
(234, 'FO', 'FRO', 'Faroe Islands', 'Faroese'),
(238, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'Falkland Island'),
(239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'South Georgia or South Sandwich Islands'),
(242, 'FJ', 'FJI', 'Fiji', 'Fijian'),
(246, 'FI', 'FIN', 'Finland', 'Finnish'),
(248, 'AX', 'ALA', 'Åland Islands', 'Åland Island'),
(250, 'FR', 'FRA', 'France', 'French'),
(254, 'GF', 'GUF', 'French Guiana', 'French Guianese'),
(258, 'PF', 'PYF', 'French Polynesia', 'French Polynesian'),
(260, 'TF', 'ATF', 'French Southern Territories', 'French Southern Territories'),
(262, 'DJ', 'DJI', 'Djibouti', 'Djiboutian'),
(266, 'GA', 'GAB', 'Gabon', 'Gabonese'),
(268, 'GE', 'GEO', 'Georgia', 'Georgian'),
(270, 'GM', 'GMB', 'Gambia', 'Gambian'),
(275, 'PS', 'PSE', 'Palestine, State of', 'Palestinian'),
(276, 'DE', 'DEU', 'Germany', 'German'),
(288, 'GH', 'GHA', 'Ghana', 'Ghanaian'),
(292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar'),
(296, 'KI', 'KIR', 'Kiribati', 'I-Kiribati'),
(300, 'GR', 'GRC', 'Greece', 'Greek, Hellenic'),
(304, 'GL', 'GRL', 'Greenland', 'Greenlandic'),
(308, 'GD', 'GRD', 'Grenada', 'Grenadian'),
(312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe'),
(316, 'GU', 'GUM', 'Guam', 'Guamanian, Guambat'),
(320, 'GT', 'GTM', 'Guatemala', 'Guatemalan'),
(324, 'GN', 'GIN', 'Guinea', 'Guinean'),
(328, 'GY', 'GUY', 'Guyana', 'Guyanese'),
(332, 'HT', 'HTI', 'Haiti', 'Haitian'),
(334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Heard Island or McDonald Islands'),
(336, 'VA', 'VAT', 'Vatican City State', 'Vatican'),
(340, 'HN', 'HND', 'Honduras', 'Honduran'),
(344, 'HK', 'HKG', 'Hong Kong', 'Hong Kong, Hong Kongese'),
(348, 'HU', 'HUN', 'Hungary', 'Hungarian, Magyar'),
(352, 'IS', 'ISL', 'Iceland', 'Icelandic'),
(356, 'IN', 'IND', 'India', 'Indian'),
(360, 'ID', 'IDN', 'Indonesia', 'Indonesian'),
(364, 'IR', 'IRN', 'Iran', 'Iranian, Persian'),
(368, 'IQ', 'IRQ', 'Iraq', 'Iraqi'),
(372, 'IE', 'IRL', 'Ireland', 'Irish'),
(376, 'IL', 'ISR', 'Israel', 'Israeli'),
(380, 'IT', 'ITA', 'Italy', 'Italian'),
(384, 'CI', 'CIV', 'Côte d\'Ivoire', 'Ivorian'),
(388, 'JM', 'JAM', 'Jamaica', 'Jamaican'),
(392, 'JP', 'JPN', 'Japan', 'Japanese'),
(398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstani, Kazakh'),
(400, 'JO', 'JOR', 'Jordan', 'Jordanian'),
(404, 'KE', 'KEN', 'Kenya', 'Kenyan'),
(408, 'KP', 'PRK', 'Korea (Democratic People\'s Republic of)', 'North Korean'),
(410, 'KR', 'KOR', 'Korea (Republic of)', 'South Korean'),
(414, 'KW', 'KWT', 'Kuwait', 'Kuwaiti'),
(417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kyrgyzstani, Kyrgyz, Kirgiz, Kirghiz'),
(418, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'Lao, Laotian'),
(422, 'LB', 'LBN', 'Lebanon', 'Lebanese'),
(426, 'LS', 'LSO', 'Lesotho', 'Basotho'),
(428, 'LV', 'LVA', 'Latvia', 'Latvian'),
(430, 'LR', 'LBR', 'Liberia', 'Liberian'),
(434, 'LY', 'LBY', 'Libya', 'Libyan'),
(438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein'),
(440, 'LT', 'LTU', 'Lithuania', 'Lithuanian'),
(442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg, Luxembourgish'),
(446, 'MO', 'MAC', 'Macao', 'Macanese, Chinese'),
(450, 'MG', 'MDG', 'Madagascar', 'Malagasy'),
(454, 'MW', 'MWI', 'Malawi', 'Malawian'),
(458, 'MY', 'MYS', 'Malaysia', 'Malaysian'),
(462, 'MV', 'MDV', 'Maldives', 'Maldivian'),
(466, 'ML', 'MLI', 'Mali', 'Malian, Malinese'),
(470, 'MT', 'MLT', 'Malta', 'Maltese'),
(474, 'MQ', 'MTQ', 'Martinique', 'Martiniquais, Martinican'),
(478, 'MR', 'MRT', 'Mauritania', 'Mauritanian'),
(480, 'MU', 'MUS', 'Mauritius', 'Mauritian'),
(484, 'MX', 'MEX', 'Mexico', 'Mexican'),
(492, 'MC', 'MCO', 'Monaco', 'Monégasque, Monacan'),
(496, 'MN', 'MNG', 'Mongolia', 'Mongolian'),
(498, 'MD', 'MDA', 'Moldova (Republic of)', 'Moldovan'),
(499, 'ME', 'MNE', 'Montenegro', 'Montenegrin'),
(500, 'MS', 'MSR', 'Montserrat', 'Montserratian'),
(504, 'MA', 'MAR', 'Morocco', 'Moroccan'),
(508, 'MZ', 'MOZ', 'Mozambique', 'Mozambican'),
(512, 'OM', 'OMN', 'Oman', 'Omani'),
(516, 'NA', 'NAM', 'Namibia', 'Namibian'),
(520, 'NR', 'NRU', 'Nauru', 'Nauruan'),
(524, 'NP', 'NPL', 'Nepal', 'Nepali, Nepalese'),
(528, 'NL', 'NLD', 'Netherlands', 'Dutch, Netherlandic'),
(531, 'CW', 'CUW', 'Curaçao', 'Curaçaoan'),
(533, 'AW', 'ABW', 'Aruba', 'Aruban'),
(534, 'SX', 'SXM', 'Sint Maarten (Dutch part)', 'Sint Maarten'),
(535, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire'),
(540, 'NC', 'NCL', 'New Caledonia', 'New Caledonian'),
(548, 'VU', 'VUT', 'Vanuatu', 'Ni-Vanuatu, Vanuatuan'),
(554, 'NZ', 'NZL', 'New Zealand', 'New Zealand, NZ'),
(558, 'NI', 'NIC', 'Nicaragua', 'Nicaraguan'),
(562, 'NE', 'NER', 'Niger', 'Nigerien'),
(566, 'NG', 'NGA', 'Nigeria', 'Nigerian'),
(570, 'NU', 'NIU', 'Niue', 'Niuean'),
(574, 'NF', 'NFK', 'Norfolk Island', 'Norfolk Island'),
(578, 'NO', 'NOR', 'Norway', 'Norwegian'),
(580, 'MP', 'MNP', 'Northern Mariana Islands', 'Northern Marianan'),
(581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'American'),
(583, 'FM', 'FSM', 'Micronesia (Federated States of)', 'Micronesian'),
(584, 'MH', 'MHL', 'Marshall Islands', 'Marshallese'),
(585, 'PW', 'PLW', 'Palau', 'Palauan'),
(586, 'PK', 'PAK', 'Pakistan', 'Pakistani'),
(591, 'PA', 'PAN', 'Panama', 'Panamanian'),
(598, 'PG', 'PNG', 'Papua New Guinea', 'Papua New Guinean, Papuan'),
(600, 'PY', 'PRY', 'Paraguay', 'Paraguayan'),
(604, 'PE', 'PER', 'Peru', 'Peruvian'),
(608, 'PH', 'PHL', 'Philippines', 'Philippine, Filipino'),
(612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn Island'),
(616, 'PL', 'POL', 'Poland', 'Polish'),
(620, 'PT', 'PRT', 'Portugal', 'Portuguese'),
(624, 'GW', 'GNB', 'Guinea-Bissau', 'Bissau-Guinean'),
(626, 'TL', 'TLS', 'Timor-Leste', 'Timorese'),
(630, 'PR', 'PRI', 'Puerto Rico', 'Puerto Rican'),
(634, 'QA', 'QAT', 'Qatar', 'Qatari'),
(638, 'RE', 'REU', 'Réunion', 'Réunionese, Réunionnais'),
(642, 'RO', 'ROU', 'Romania', 'Romanian'),
(643, 'RU', 'RUS', 'Russian Federation', 'Russian'),
(646, 'RW', 'RWA', 'Rwanda', 'Rwandan'),
(652, 'BL', 'BLM', 'Saint Barthélemy', 'Barthélemois'),
(654, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helenian'),
(659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Kittitian or Nevisian'),
(660, 'AI', 'AIA', 'Anguilla', 'Anguillan'),
(662, 'LC', 'LCA', 'Saint Lucia', 'Saint Lucian'),
(663, 'MF', 'MAF', 'Saint Martin (French part)', 'Saint-Martinoise'),
(666, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'Saint-Pierrais or Miquelonnais'),
(670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincentian, Vincentian'),
(674, 'SM', 'SMR', 'San Marino', 'Sammarinese'),
(678, 'ST', 'STP', 'Sao Tome and Principe', 'São Toméan'),
(682, 'SA', 'SAU', 'Saudi Arabia', 'Saudi, Saudi Arabian'),
(686, 'SN', 'SEN', 'Senegal', 'Senegalese'),
(688, 'RS', 'SRB', 'Serbia', 'Serbian'),
(690, 'SC', 'SYC', 'Seychelles', 'Seychellois'),
(694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leonean'),
(702, 'SG', 'SGP', 'Singapore', 'Singaporean'),
(703, 'SK', 'SVK', 'Slovakia', 'Slovak'),
(704, 'VN', 'VNM', 'Vietnam', 'Vietnamese'),
(705, 'SI', 'SVN', 'Slovenia', 'Slovenian, Slovene'),
(706, 'SO', 'SOM', 'Somalia', 'Somali, Somalian'),
(710, 'ZA', 'ZAF', 'South Africa', 'South African'),
(716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwean'),
(724, 'ES', 'ESP', 'Spain', 'Spanish'),
(728, 'SS', 'SSD', 'South Sudan', 'South Sudanese'),
(729, 'SD', 'SDN', 'Sudan', 'Sudanese'),
(732, 'EH', 'ESH', 'Western Sahara', 'Sahrawi, Sahrawian, Sahraouian'),
(740, 'SR', 'SUR', 'Suriname', 'Surinamese'),
(744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard'),
(748, 'SZ', 'SWZ', 'Swaziland', 'Swazi'),
(752, 'SE', 'SWE', 'Sweden', 'Swedish'),
(756, 'CH', 'CHE', 'Switzerland', 'Swiss'),
(760, 'SY', 'SYR', 'Syrian Arab Republic', 'Syrian'),
(762, 'TJ', 'TJK', 'Tajikistan', 'Tajikistani'),
(764, 'TH', 'THA', 'Thailand', 'Thai'),
(768, 'TG', 'TGO', 'Togo', 'Togolese'),
(772, 'TK', 'TKL', 'Tokelau', 'Tokelauan'),
(776, 'TO', 'TON', 'Tonga', 'Tongan'),
(780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinidadian or Tobagonian'),
(784, 'AE', 'ARE', 'United Arab Emirates', 'Emirati, Emirian, Emiri'),
(788, 'TN', 'TUN', 'Tunisia', 'Tunisian'),
(792, 'TR', 'TUR', 'Turkey', 'Turkish'),
(795, 'TM', 'TKM', 'Turkmenistan', 'Turkmen'),
(796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks and Caicos Island'),
(798, 'TV', 'TUV', 'Tuvalu', 'Tuvaluan'),
(800, 'UG', 'UGA', 'Uganda', 'Ugandan'),
(804, 'UA', 'UKR', 'Ukraine', 'Ukrainian'),
(807, 'MK', 'MKD', 'Macedonia (the former Yugoslav Republic of)', 'Macedonian'),
(818, 'EG', 'EGY', 'Egypt', 'Egyptian'),
(826, 'GB', 'GBR', 'United Kingdom of Great Britain and Northern Ireland', 'British, UK'),
(831, 'GG', 'GGY', 'Guernsey', 'Channel Island'),
(832, 'JE', 'JEY', 'Jersey', 'Channel Island'),
(833, 'IM', 'IMN', 'Isle of Man', 'Manx'),
(834, 'TZ', 'TZA', 'Tanzania, United Republic of', 'Tanzanian'),
(840, 'US', 'USA', 'United States of America', 'American'),
(850, 'VI', 'VIR', 'Virgin Islands (U.S.)', 'U.S. Virgin Island'),
(854, 'BF', 'BFA', 'Burkina Faso', 'Burkinabé'),
(858, 'UY', 'URY', 'Uruguay', 'Uruguayan'),
(860, 'UZ', 'UZB', 'Uzbekistan', 'Uzbekistani, Uzbek'),
(862, 'VE', 'VEN', 'Venezuela (Bolivarian Republic of)', 'Venezuelan'),
(876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis and Futuna, Wallisian or Futunan'),
(882, 'WS', 'WSM', 'Samoa', 'Samoan'),
(887, 'YE', 'YEM', 'Yemen', 'Yemeni'),
(894, 'ZM', 'ZMB', 'Zambia', 'Zambian');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `team1_fk` int(11) NOT NULL,
  `team2_fk` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `team1_fk`, `team2_fk`, `date`) VALUES
(1, 1, 2, '2022-06-15'),
(2, 6, 7, '2022-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `text`, `username`) VALUES
(54, 'Onvo je onzbiljno donbro. Goonglovao sam ga', 'desk)');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `player_pic` text NOT NULL,
  `team_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `nick`, `player_pic`, `team_fk`) VALUES
(1, 'NiKo', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/niko.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 1),
(2, 'JackZ', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/jackz.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 1),
(3, 'Aleksib', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/aleksib.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 1),
(4, 'm0NESY', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/m0nesy.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 1),
(5, 'hUnter-', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/hunter.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 1),
(6, 's1mple', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/s1mple.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 2),
(7, 'electroNic', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/electronic.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 2),
(8, 'Prefecto', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/perfecto.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 2),
(9, 'b1t', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/b1t.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 2),
(10, 'Boombl4', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/boombl4.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 2),
(11, 'Xyp9x', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/xyp9x.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240\r\n', 3),
(12, 'gla1ve', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/gla1ve.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 3),
(13, 'k0nfig', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/k0nfig.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 3),
(14, 'blameF', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/blamef.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 3),
(15, 'farlig', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/farlig.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 3),
(16, 'stavn', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/stavn.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 4),
(17, 'cadiaN', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/cadian.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240\r\n', 4),
(18, 'TeSeS', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/teses.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 4),
(19, 'refrezh', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/refrezh.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 4),
(20, 'sjuush', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/sjuush.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 4),
(21, 'chopper', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/chopper.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 5),
(22, 'magixx', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/magixx.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 5),
(23, 'degster', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/degster.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 5),
(24, 'Patsi', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/patsi.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 5),
(25, 's1ren', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/s1ren.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 5),
(26, 'rain', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/rain.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 6),
(27, 'broky', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/broky.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 6),
(28, 'Twistzz', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/twistzz.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 6),
(29, 'karrigan', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/karrigan.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 6),
(30, 'ropz', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/ropz.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 6),
(31, 'EliGE', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/elige.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 7),
(32, 'NAF', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/naf.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 7),
(33, 'oSee', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/osee.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 7),
(34, 'shox', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/shox.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 7),
(35, 'nitr0', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/nitr0.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 7),
(36, 'nafany', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/nafany-1.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 8),
(37, 'sh1ro', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/sh1ro-1.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 8),
(38, 'interz', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/interz-1.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 8),
(39, 'Ax1le', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/ax1le-1.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 8),
(40, 'HObbit', 'https://prosettings.net/acd-cgi/img/v1/wp-content/uploads/hobbit-1.png?dpr=1|fit=contain|format=webp|gravity=top|height=240|quality=99|sharpen=1|width=240', 8);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `nationality`, `logo`) VALUES
(1, 'G2', 'French', 'https://th.bing.com/th/id/OIP.Okrgs7m2ZnzPcL2TIOTwpAHaEK?pid=ImgDet&rs=1'),
(2, 'NaVi', 'Ukranian', 'https://th.bing.com/th/id/R.e20c9edef9b839e19e96751017481992?rik=WkzUemrvK8evYw&pid=ImgRaw&r=0'),
(3, 'Astralis', 'Danish', 'https://www.logolynx.com/images/logolynx/c5/c52d684491c6fc398ce9f0c2f72431f1.png'),
(4, 'Heroic', 'Danish', 'https://lh6.googleusercontent.com/proxy/a78tQUcaBUypVqzB0CY2mr66SFaXWbni48zNEg62lfVMsSYpLvQfnu8e6j3I-k_yHxf4wiUClp8QgWJQVyfEMTu49EtrPVQCOndSyghjmJN2V7JUeU-1ZmWhGCZD-U95WBqL0I4SGKT2ayh9M7keO66XSceZWcjn9Tv_qZg-1gJTkz85W6cv5kww7D3jJiBT6aE1mmLU0mmkJxT39rm5=w1200-h630-p-k-no-nu'),
(5, 'Spirit', 'Russian', 'https://th.bing.com/th/id/R.d874aed2ef2f4525c2d483ca2b3090b7?rik=OiqBvlPXH8YSug&riu=http%3a%2f%2fimg13.deviantart.net%2f4b3a%2fi%2f2016%2f307%2fd%2f2%2fteam_spirit_by_freilina-dan5jpw.jpg&ehk=Zx4uHDNOtnwJCYGYi1jnIAFbs4I6G6Z04nDacr80o6E%3d&risl=&pid=ImgRaw&r=0'),
(6, 'Faze', 'American', 'https://th.bing.com/th/id/R.3055e2409d5b7c7470302c271f4c7466?rik=lcCPV5Bs4m61OQ&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f4%2fa%2f9%2f17963.jpg&ehk=oXUsMjoTdb6cf5vbKXdmSTPR8NgN7P647kV8xtV5%2bfU%3d&risl=&pid=ImgRaw&r=0'),
(7, 'Liquid', 'American', 'https://www.teamliquidpro.com/lcs/images/wallpaper/TL_3DLogo_White_on_DarkBlue_Logo_Desktop.jpg'),
(8, 'Cloud9', 'Russian', 'https://cdn.wallpapersafari.com/70/40/BlkhwV.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `admin`, `name`, `surname`, `username`, `password`) VALUES
(1, 1, 'Pera', 'Perovic', 'pera', 'd8795f0d07280328f80e59b1e8414c49'),
(2, 0, 'Deskomir', 'Jovanovic', 'desk)', '5a8f35497dd913bf922504c0ffdfb550'),
(4, 0, 'Ilija ', 'Ilic', 'ilija123', 'f26fd0c7a59e1eb51f073f8edbcb53c6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`num_code`),
  ADD UNIQUE KEY `alpha_2_code` (`alpha_2_code`),
  ADD UNIQUE KEY `alpha_3_code` (`alpha_3_code`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team1_fk` (`team1_fk`),
  ADD UNIQUE KEY `team2_fk` (`team2_fk`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_fk` (`team_fk`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`team1_fk`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`team2_fk`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_fk`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
