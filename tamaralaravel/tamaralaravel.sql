-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 10:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tamaralaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_16_215924_create_songs_table', 1),
(6, '2021_09_16_220400_add_lyrics_column', 1),
(7, '2021_09_16_220624_add_duration_column', 1),
(8, '2021_09_16_220730_add_link_genre_columns', 1),
(9, '2021_09_16_221114_create_user_songs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyrics` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `link` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `created_at`, `updated_at`, `name`, `lyrics`, `duration`, `link`, `genre`) VALUES
(1, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Payphone ft. Wiz Khalifa', 'I\'m at a payphone trying to call home\r\nAll of my change I spent on you\r\nWhere have the times gone?\r\nBaby, it\'s all wrong\r\nWhere are the plans we made for two?\r\nYeah, I, I know it\'s hard to remember\r\nThe people we used to be\r\nIt\'s even harder to picture\r\nThat you\'re not here next to me\r\nYou say it\'s too late to make it\r\nBut is it too late to try?\r\nAnd in our time that you wasted\r\nAll of our bridges burned down\r\nI\'ve wasted my nights\r\nYou turned out the lights\r\nNow I\'m paralyzed\r\nStill stuck in that time, when we called it love\r\nBut even the sun sets in paradise\r\nI\'m at a payphone, trying to call home\r\nAll of my change I spent on you\r\nWhere have the times gone?\r\nBaby, it\'s all wrong\r\nWhere are the plans we made for two?\r\nIf \"Happy Ever After\" did exist\r\nI would still be holding you like this\r\nAll those fairy tales are full of shit\r\nOne more fucking love song, I\'ll be sick\r\nOh, you turned your back on tomorrow\r\n\'Cause you forgot yesterday\r\nI gave you my love to borrow\r\nBut you just gave it away\r\nYou can\'t expect me to be fine\r\nI don\'t expect you to care\r\nI know I\'ve said it before\r\nBut all of our bridges burned down\r\nI\'ve wasted my nights\r\nYou turned out the lights\r\nNow I\'m paralyzed\r\nStill stuck in that time\r\nWhen we called it love\r\nBut even the sun sets in paradise\r\nI\'m at a payphone trying to call home\r\nAll of my change I spent on you\r\nWhere have the times gone?\r\nBaby, it\'s all wrong\r\nWhere are the plans we made for two?\r\nIf \"Happy Ever After\" did exist\r\nI would still be holding you like this\r\nAnd all those fairy tales are full of shit\r\nOne more fucking love song, I\'ll be sick\r\nNow I\'m at a payphone\r\nMan, fuck that shit\r\nI\'ll be out spending all this money\r\nWhile you sitting \'round wondering\r\nWhy it wasn\'t you who came up from nothing\r\nMade it from the bottom\r\nNow, when you see me I\'m stunning\r\nAnd all of my cars start with a push of a button\r\nTelling me had chances I blew up\r\nOr whatever you call it\r\nSwitch the number to my phone\r\nSo you never could call it\r\nDon\'t need my name on my show\r\nYou can tell that I\'m balling\r\nSwish, what a shame could have got picked\r\nHad a really good game\r\nBut you missed your last shot\r\nSo you talk about who you see at the top\r\nOr what you could have saw\r\nBut sad to say it\'s over for\r\nPhantom pulled up valet open doors\r\nWished I\'d go away\r\nGot what you was looking for\r\nNow it\'s me who they want\r\nSo you can go and take that\r\nLittle piece of shit with you\r\nI\'m at a payphone trying to call home\r\nAll of my change I spent on you\r\nWhere have the times gone?\r\nBaby, it\'s all wrong\r\nWhere are the plans we made for two?\r\nIf \"Happy Ever After\" did exist\r\nI would still be holding you like this\r\nAll these fairy tales are full of shit\r\nYeah, one more fucking love song, I\'ll be sick\r\nNow I\'m at a payphone', 143, 'https://www.youtube.com/watch?v=KRaWnd3LJfs', 'Heavy Metal'),
(2, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Sugar', 'Nicki Minaj, Maroon 5, Let\'s go\r\nYo, I got them Now & Laters, and them Jolly Ranchers too\r\nIt ain\'t a question, but I got the answers too\r\nThese shoes is Cavalli, and the pants is too\r\nWhen I see him I\'mma strip like the dancers do\r\nImma show them how to do it like the pamphlets do\r\nShow these girls how to do it off campus too\r\nYo, as long as you know he got the baddest, I\'m flattered\r\nI\'m the only one that he answers to\r\nAnd if you need it (need it) then I\'mma put it on ya\r\nAin\'t nothin\' sweeter, you want this sugar, don\'t ya?\r\nUp, down, inside, water park it, slip slide\r\nWould\'a, could\'a, should\'a got ya sugar, get ya sugar\r\nYou sugar, yes please\r\nWould you come and put it down on me?\r\nI\'m right here, \'cause I need\r\nLittle love, a little sympathy\r\nYeah you show me good loving, make it alright\r\nNeed a little sweetness in my life\r\nSugar, yes please\r\nWould you come and put it down on me?\r\nBabe, my broken pieces, you pick them up\r\nDon\'t leave me hanging\r\nHanging come give me some\r\nWhen I\'m without you, I\'m so insecure\r\nYou are the one thing, one thing I\'m living for\r\nI don\'t wanna be needing your love\r\nI just wanna be deep in your love\r\nAnd it\'s killing me when you\'re away\r\nOh baby\r\n\'Cause I really don\'t care where you are\r\nI just wanna be there where you are\r\nAnd I gotta get one little taste\r\nSugar, yes please\r\nWould you come and put it down on me?\r\nI\'m right here, \'cause I need\r\nLittle love, a little sympathy\r\nYeah you show me good loving, make it alright\r\nNeed a little sweetness in my life\r\nYour sugar (your sugar), yes please (yes please)\r\nWould you come and put it down on me?\r\nI want that red velvet\r\nI want that sugar sweet\r\nDon\'t let nobody touch it unless that somebody\'s me\r\nI gotta be a man, there ain\'t no other way\r\n\'Cause girl you\'re hotter than the Southern California Bay\r\nNever wanna play no games, you don\'t gotta be afraid\r\nDon\'t give me all that shy shit\r\nNo make-up on, that\'s my...\r\nSugar, yes please\r\nWould you come and put it down on me?\r\nI\'m right here (right here), \'cause I need (\'casue I need)\r\nLittle love, a little sympathy\r\nYeah you show me good loving, make it alright\r\nNeed a little sweetness in my life\r\nYour sugar (sugar), yes please (yes please)\r\nWould you come and put it down on me?\r\nSugar, yes please\r\nWould you come and put it down on me?\r\nI\'m right here (right here), \'cause I need (\'cause I need)\r\nLittle love, a little sympathy\r\nYeah you show me good loving, make it alright\r\nNeed a little sweetness in my life\r\nYour sugar (sugar), yes please (yes please)\r\nWould you come and put it down on me?', 67, 'https://www.youtube.com/watch?v=09R8_2nJtjg', 'Heavy Metal'),
(3, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Lost', 'Got no connection, no faith or direction, no\r\nSearching and searching for someone to save my soul, ooh\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nI was swept up in a wave, swept up in a wave\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nThen I heard you say my name\r\nYeah-yeah, yeah-yeah\r\nLost, I was lost, I was lost \'til you loved me\r\nNow I\'m found, now I\'m found, now I\'m found\r\nYeah, you took me to a place\r\nIt was safe, it was sound (sound-sound-sound)\r\nLost, I was lost, now I\'m found\r\nLost, I was lost, I was lost \'til you loved me\r\nNow I\'m found, now I\'m found, now I\'m found\r\nYeah, you took me to a place\r\nIt was safe, it was sound (sound-sound-sound)\r\nLost, I was lost, now I\'m found\r\nI was so broken, my heart was an empty space (oh, oh, oh)\r\nLife was a joke \'til the moment I saw your face\r\nSaw your face, saw your face\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nI was swept up in a wave, swept up in a wave\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nThen I heard you say my name\r\nYeah-yeah, yeah-yeah\r\nLost, I was lost, I was lost \'til you loved me\r\nNow I\'m found, now I\'m found, now I\'m found\r\nYeah, you took me to a place\r\nIt was safe, it was sound (sound-sound-sound)\r\nLost, I was lost, now I\'m found\r\nLost, I was lost, I was lost \'til you loved me\r\nNow I\'m found, now I\'m found, now I\'m found\r\nYeah, you took me to a place\r\nIt was safe, it was sound (sound-sound-sound)\r\nLost, I was lost, now I\'m found\r\nOoh-ooh-ooh, again (ah-ah)\r\nOoh-ooh-ooh, again, yeah\r\nOoh-ooh-ooh, again (ah-ah)\r\nOoh-ooh-ooh, again, yeah\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nI was swept up in a wave, swept up in a wave\r\nOoh-ooh-ooh-ooh, ooh-ooh-ooh-ooh\r\nI was stranded when you came\r\nYeah, yeah, yeah, yeah, yeah\r\nLost, I was lost, I was lost \'til you loved me (I was lost, lost)\r\nNow I\'m found, now I\'m found, now I\'m found (now I\'m found, found, found)\r\nYeah, you took me to a place, it was safe, it was sound (yeah, yeah, yeah)\r\nLost, I was lost, now I\'m found (oh yeah)\r\nLost, I was lost, I was lost \'til you loved me (I was lost, lost)\r\nNow I\'m found, now I\'m found, now I\'m found (now I\'m found, found, found)\r\nYeah, you took me to a place, it was safe, it was sound (ooh, yeah, yeah)\r\nLost, I was lost, now I\'m found', 174, 'https://www.youtube.com/watch?v=U05fwua9-D4', 'Heavy Metal'),
(4, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Girls Like You ft. Cardi B', 'Spent 24 hours, I need more hours with you\r\nYou spent the weekend getting even, ooh\r\nWe spent the late nights making things right between us\r\nBut now it\'s all good, babe\r\nRoll that back wood, babe\r\nAnd play me close\r\n\'Cause girls like you run \'round with guys like me\r\n\'Til sun down when I come through\r\nI need a girl like you, yeah yeah\r\nGirls like you love fun and, yeah, me too\r\nWhat I want when I come through\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you\r\nI spent last night on the last flight to you (ey ya)\r\nTook a whole day up trying to get way up, ooh\r\nWe spent the daylight trying to make things right between us\r\nBut now it\'s all good, babe\r\nRoll that back wood, babe\r\nAnd play me close, yeah\r\n\'Cause girls like you run \'round with guys like me\r\n\'Til sun down when I come through\r\nI need a girl like you, yeah yeah\r\nGirls like you love fun and, yeah, me too\r\nWhat I want when I come through\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you, yeah yeah\r\nI need a girl like you, yeah yeah\r\nI need a girl like you\r\nMaybe it\'s 6:45\r\nMaybe I\'m barely alive\r\nMaybe you\'ve taken my shit for the last time, yeah\r\nMaybe I know that I\'m drunk\r\nMaybe I know you\'re the one\r\nMaybe you thinking it\'s better if you drive\r\nOh, \'cause girls like you run \'round with guys like me\r\n\'Til sun down when I come through\r\nI need a girl like you, yeah\r\n\'Cause girls like you run \'round with guys like me\r\n\'Til sun down when I come through\r\nI need a girl like you, yeah yeah\r\nGirls like you love fun and, yeah, me too\r\nWhat I want when I come through\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you, yeah yeah\r\nYeah yeah yeah, yeah yeah yeah\r\nI need a girl like you', 150, 'https://www.youtube.com/watch?v=aJOTlE1K90k', 'Heavy Metal'),
(5, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Moves Like Jagger ft. Christina Aguilera', 'Oh, na\r\nOh!\r\nJust shoot for the stars\r\nIf it feels right and aim for my heart\r\nIf you feel like\r\nAnd take me away and make it okay\r\nI swear I\'ll behave\r\nYou wanted control, so we waited\r\nI put on a show, now I make it\r\nYou say I\'m a kid\r\nMy ego is big\r\nI don\'t give a shit\r\nAnd it goes like this\r\nTake me by the tongue and I\'ll know you\r\nKiss me \'til you\'re drunk and I\'ll show you\r\nYou want the moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI\'ve got the moves, like Jagger\r\nI don\'t need to try to control you\r\nLook into my eyes and I\'ll own you\r\nWith them moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI\'ve got the moves, like Jagger\r\nBaby, it\'s hard, and it feels like\r\nYou\'re broken and scarred, nothing feels right\r\nBut when you\'re with me\r\nI\'ll make you believe\r\nThat I\'ve got the key\r\nOh, so get in the car, we can ride it\r\nWherever you want, get inside it\r\nAnd you want to steer\r\nBut I\'m shifting gears\r\nI\'ll take it from here (Oh, yeah, yeah)\r\nAnd it goes like this (Uh)\r\nTake me by the tongue and I\'ll know you (Uh)\r\nKiss me \'til you\'re drunk and I\'ll show you\r\nWant the moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI don\'t need to try to control you (Oh, yeah)\r\nLook into my eyes and I\'ll own you\r\nWith them moves like Jagger\r\nI\'ve got the moves like Jagger (Yeah yeah)\r\nI\'ve got the moves like Jagger\r\nYou wanna know, how to make me smile?\r\nTake control, own me just for the night\r\nAnd if I share my secret\r\nYou\'re gonna have to keep it\r\nNobody else can see this\r\nSo watch and learn, I won\'t show you twice\r\nHead to toe, ooh baby, rub me right\r\nAnd if I share my secret\r\nYou\'re gonna have to keep it\r\nNobody else can see this (Ay, ay, ay, ay!)\r\nAnd it goes like this\r\nTake me by the tongue and I\'ll know you (Take me by the tongue)\r\nKiss me \'til you\'re drunk and I\'ll show you (Yeah yeah yeah!)\r\nYou want the moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI\'ve got the moves, like Jagger (Oh, yeah)\r\nI don\'t need to try to control you (Oh)\r\nLook into my eyes and I\'ll own you\r\nWith them moves like Jagger\r\nI\'ve got the moves like Jagger\r\nI\'ve got the moves, like Jagger', 108, 'https://www.youtube.com/watch?v=iEPTlhBmwRg', 'Heavy Metal'),
(6, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Don\'t Wanna Know', 'I don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, no\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, oh\r\nI don\'t wanna know\r\nWasted\r\nAnd the more I drink, the more I think about you\r\nOh, no-no, I can\'t take it\r\nBaby, every place I go reminds me of you\r\nDo you think of me, of what we used to be?\r\nIs it better now that I\'m not around?\r\nMy friends are actin\' strange, they don\'t bring up your name\r\nAre you happy now? Are you happy now?\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, no\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, oh\r\nI don\'t wanna know\r\nAnd every time I go out, yeah\r\nI hear it from this one, hear it from that one\r\nThat you got someone new, yeah\r\nI see, but don\'t believe it\r\nEven in my head, you\'re still in my bed\r\nMaybe I\'m just a fool\r\nDo you think of me? Of what we used to be?\r\nIs it better now that I\'m not around?\r\nMy friends are actin\' strange, they don\'t bring up your name (Yeah mm)\r\nAre you happy now? Are you happy now? (Mm)\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, no\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, oh\r\nI don\'t wanna know\r\nNo more, please stop\r\nNo more hashtag boo\'d up screenshots\r\nNo more trying to make me jealous on your birthday\r\nYou know just how I make you better on your birthday, oh\r\nDo he do you like this, do he woo you like this?\r\nDo he lay it down for you, touch you, pull you like this?\r\nMatter of fact, never mind, we gon\' let the past be\r\nMay be his right now, but your body\'s still with me, whoa\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, no\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, oh\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home\r\nAnd loving you so, so, so, so\r\nThe way I used to love you, no\r\nI don\'t wanna know, know, know, know\r\nWho\'s taking you home, home, home, home (You)\r\nAnd loving you so, so, so, so (You)\r\nThe way I used to love you, oh\r\nI don\'t wanna know', 176, 'https://www.youtube.com/watch?v=ANS9sSJA9Yc', 'Heavy Metal'),
(7, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Sad ', 'Man, it\'s been a long day\r\nStuck thinking \'bout it driving on the freeway\r\nWondering if I really tried everything I could\r\nNot knowing if I should try a little harder\r\nOh, but I\'m scared to death\r\nThat there may not be another one like this\r\nAnd I confess that I\'m only holding on by a thin thin thread\r\nAnd I\'m kicking the curb cause you never heard\r\nThe words that you needed so bad\r\nAnd I\'m kicking the dirt cause I never gave you\r\nThe place that you needed to have\r\nI\'m so sad, sad\r\nMan, it\'s been a long night\r\nJust sitting here, trying not to look back\r\nStill looking at the road we never drove on\r\nAnd wondering if the one I chose was the right one\r\nOh, but I\'m scared to death\r\nThat there may not be another one like this\r\nAnd I confess that I\'m only holding on by a thin, thin thread\r\nAnd I\'m kicking the curb cause you never heard\r\nThe words that you needed so bad\r\nAnd I\'m kicking the dirt cause I never gave you\r\nThe place that you needed to have\r\nI\'m so sad, sad\r\nI\'m so sad, so sad\r\nOh, but I\'m scared to death\r\nThat there may not be another one like this\r\nAnd I confess that I\'m only holding on by a thin thin thread\r\nI\'m kicking the curb cause you never heard\r\nThe words that you needed so bad\r\nAnd I\'m kicking the dirt \'cause I never gave you\r\nThe things that you needed to have\r\nAnd I\'m kicking the curb cause you never heard\r\nThe words that you needed so bad\r\nI\'m so sad, so sad', 129, 'https://www.youtube.com/watch?v=x9mGRTaD_00', 'Heavy Metal'),
(8, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Love Somebody', 'I know your insides are feeling so hollow\r\nAnd it\'s a hard pill for you to swallow, yeah\r\nBut if I fall for you, I\'ll never recover\r\nIf I fall for you, I\'ll never be the same\r\nI really wanna love somebody\r\nI really wanna dance the night away\r\nI know we\'re only half way there\r\nBut you can take me all the way, if you take me all the way\r\nI really wanna touch somebody\r\nI think about you every single day\r\nI know we\'re only half way there\r\nBut you can take me all the way, you can take me all the way\r\nYou\'re such a hard act for me to follow\r\nLove me today don\'t leave me tomorrow, yeah\r\nBut if I fall for you, I\'ll never recover\r\nIf I fall for you, I\'ll never be the same\r\nI really wanna love somebody\r\nI really wanna dance the night away\r\nI know we\'re only half way there\r\nBut take me all the way, if you can take me all the way\r\nI really wanna touch somebody\r\nI think about you every single day\r\nI know we\'re only half way there\r\nBut you can take me all the way, if you can take me all the way\r\nOh, oh, oh, oh oh oh\r\nOh, oh, oh, oh oh oh\r\nI don\'t know where to start, I\'m just a little lost\r\nI wanna feel like we\'re never gonna ever stop\r\nI don\'t know what to do, I\'m right in front of you\r\nAsking you to stay, you should stay, stay with me tonight, yeah\r\nI really wanna love somebody\r\nI really wanna dance the night away\r\nI know we\'re only half way there\r\nBut take me all the way, if you can take me all the way\r\nI really wanna touch somebody\r\nI think about you every single day\r\nI know we\'re only half way there\r\nBut take me all the way, if you can take me all the way\r\nOh, oh, oh, oh oh oh\r\nOh, oh, oh, oh oh oh\r\nTake me all the way, if you take me all the way yeah', 73, 'https://www.youtube.com/watch?v=MU8B4XDI3Uw', 'Heavy Metal'),
(9, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Beautiful Mistakes ft. Megan Thee Stallion', 'It\'s beautiful, it\'s bittersweet\r\nYou\'re like a broken home to me\r\nI take a shot of memories and black out like an empty street\r\nI fill my days with the way you walk and fill my nights with broken dreams\r\nI make up lies inside my head\r\nLike, \"One day, you\'ll come back to me\"\r\nNow I\'m not holding on, not holding on\r\nI\'m just depressed that you\'re gone\r\nNot holding on, not holding on\r\nBeautiful mistakes I make inside my head\r\nShe\'s naked in my bed\r\nAnd now we lie awake, making beautiful mistakes\r\nI wouldn\'t take \'em back\r\nI\'m in love with the past\r\nAnd now we lie awake, making beautiful mistakes\r\nNah-nah-nah (in my head)\r\nNah-nah-nah (in my bed)\r\nNah-nah-nah (ayy)\r\nMaking beautiful mistakes\r\nIt\'s pitiful, I can\'t believe how every day gets worse for me\r\nI take a break, I cut you off to keep myself from looking soft\r\nI fill my nights with the way you was and still wake up with broken dreams\r\nI make these lies inside my head\r\nFeel like they\'re my reality\r\nNow I\'m not holding on, not holding on\r\nI\'m just depressed that you\'re gone\r\nNot holding on, not holding on\r\nBeautiful mistakes I make inside my head\r\nShe\'s naked in my bed\r\nAnd now we lie awake, making beautiful mistakes\r\nI wouldn\'t take \'em back\r\nI\'m in love with the past\r\nAnd now we lie awake, making beautiful mistakes\r\nNah-nah-nah (in my head)\r\nNah-nah-nah (in my bed)\r\nNah-nah-nah (ayy-ayy)\r\nMaking beautiful mistakes\r\nYou did me wrong \'cause I let you\r\nUsually, I like my situations beneficial\r\nDoing something different, got me looking stupid (damn)\r\nThe only way I\'m coming back to you is if you dream it, lucid (hmm)\r\nProve it, if you made a promise then keep it (keep it)\r\nWhy you wanna lie and then get mad? I don\'t believe it (boy, bye)\r\nBut really, I was doing just fine without ya\r\nLooking fine, sipping wine, dancing on club couches (ah)\r\nBaby, why you wanna lose me like you don\'t need me? (Like you don\'t need me)\r\nLike I don\'t block you and you still try to reach me (still try to reach me)\r\nHow you figure out how to call me from the TV? (Huh?)\r\nYou running outta chances and this time I mean it (ah)\r\nYeah, bet you miss my love, all in your bed (bed)\r\nNow you\'re stressing out, pulling your hair (hair)\r\nSmelling your pillows and wishing I was there (I was there)\r\nSliding down the shower wall, looking sad (sad)\r\nI know it\'s hard to let go, I\'m the best (I\'m the best)\r\nBest you ever had and best you gon\' get (gon\' get)\r\nAnd if we break up, I don\'t wanna be friends (be friends)\r\nYou\'re toxic\r\nBeautiful mistakes I make inside my head\r\nShe\'s naked in my bed\r\nAnd now we lie awake, making beautiful mistakes\r\nI wouldn\'t take \'em back\r\nI\'m in love with the past\r\nAnd now we lie awake, making beautiful mistakes\r\nNah-nah-nah (in my head)\r\nNah-nah-nah (in my bed)\r\nNah-nah-nah (yeah, yeah, oh-oh)\r\nMaking beautiful mistakes\r\nNah-nah-nah (in my head)\r\nNah-nah-nah (in my bed)\r\nNah-nah-nah (ayy, beautiful)\r\nMaking beautiful mistakes\r\nNah-nah-nah\r\nNah-nah-nah (ooh)\r\nNah-nah-nah', 73, 'https://www.youtube.com/watch?v=BSzSn-PRdtI', 'Heavy Metal'),
(10, '2021-09-16 20:35:32', '2021-09-16 20:35:32', 'Maroon 5 - Daylight', 'Here I am waiting, I\'ll have to leave soon\r\nWhy am I holding on?\r\nWe knew this day would come, we knew it all along\r\nHow did it come so fast?\r\nThis is our last night but it\'s late\r\nAnd I\'m trying not to sleep\r\n\'Cause I know, when I wake\r\nI will have to slip away\r\nAnd when the daylight comes I\'ll have to go\r\nBut tonight I\'m gonna hold you so close\r\n\'Cause in the daylight we\'ll be on our own\r\nBut tonight I need to hold you so close\r\nOoh whoa, ooh whoa, ooh whoa\r\nOoh whoa, ooh whoa, ooh whoa\r\nHere I am staring at your perfection\r\nIn my arms, so beautiful\r\nThe sky is getting bright, the stars are burning out\r\nSomebody slow it down\r\nThis is way too hard\r\n\'Cause I know, when the sun comes up\r\nI will leave, this is my last glance\r\nThat will soon be memory\r\nAnd when the daylight comes I\'ll have to go\r\nBut tonight I\'m gonna hold you so close\r\n\'Cause in the daylight we\'ll be on our own\r\nBut tonight I need to hold you so close\r\nOoh whoa, ooh whoa, ooh whoa\r\nOoh whoa, ooh whoa, ooh whoa\r\nI never wanted to stop\r\nBecause I don\'t wanna start all over, start all over\r\nI was afraid of the dark\r\nBut now it\'s all that I want, all that I want, all that I want\r\nAnd when the daylight comes I\'ll have to go\r\nBut tonight I\'m gonna hold you so close\r\n\'Cause in the daylight we\'ll be on our own\r\nBut tonight I need to hold you so close\r\nAnd when the daylight comes I\'ll have to go\r\nBut tonight I\'m gonna hold you so close\r\n\'Cause in the daylight we\'ll be on our own\r\nBut tonight I need to hold you so close\r\nOoh whoa, ooh whoa, ooh whoa\r\nOoh whoa, ooh whoa, ooh whoa\r\nOoh whoa (yeah), ooh whoa (yeah), ooh whoa (yeah)\r\nOoh whoa (yeah), ooh whoa (yeah), ooh whoa', 97, 'https://www.youtube.com/watch?v=N17FXwRWEZs', 'Heavy Metal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tamara', 'tamara@tamara.com', '2021-09-16 20:35:27', 'tamara', 'dv7JUZuCk5', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(2, 'Bobbie Klocko', 'white.jude@example.net', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P6UPf038ev', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(3, 'Ursula Koss', 'agustina96@example.com', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aDgObRmP9k', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(4, 'Dr. Gloria Russel', 'kautzer.rosemarie@example.com', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNDsNdwII8', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(5, 'Ms. Haylie Grady', 'lon.halvorson@example.org', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sQq2VNDf9u', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(6, 'Zane Dibbert', 'bret.bruen@example.net', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '18YxLLEQ6O', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(7, 'Dedric Aufderhar', 'xfriesen@example.net', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ftX7eEGzhX', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(8, 'Nikki Bruen', 'sstiedemann@example.com', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yRbMectajo', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(9, 'Danyka Nitzsche', 'okon.samir@example.com', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zq7Em6BavK', '2021-09-16 20:35:27', '2021-09-16 20:35:27'),
(10, 'Van Gulgowski', 'gerardo72@example.org', '2021-09-16 20:35:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hUBbJAut0c', '2021-09-16 20:35:27', '2021-09-16 20:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_songs`
--

CREATE TABLE `user_songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `song_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_songs`
--

INSERT INTO `user_songs` (`id`, `user_id`, `song_id`, `created_at`, `updated_at`) VALUES
(1, 9, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(2, 5, 1, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(3, 8, 4, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(4, 2, 4, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(5, 8, 7, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(6, 1, 1, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(7, 10, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(8, 5, 10, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(9, 2, 8, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(10, 9, 6, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(11, 2, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(12, 5, 3, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(13, 3, 1, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(14, 9, 4, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(15, 4, 9, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(16, 9, 8, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(17, 9, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(18, 6, 7, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(19, 2, 1, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(20, 2, 3, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(21, 1, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(22, 8, 1, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(23, 9, 7, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(24, 3, 6, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(25, 10, 5, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(26, 7, 10, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(27, 1, 4, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(28, 4, 9, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(29, 5, 4, '2021-09-16 20:38:37', '2021-09-16 20:38:37'),
(30, 5, 9, '2021-09-16 20:38:37', '2021-09-16 20:38:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_songs`
--
ALTER TABLE `user_songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_songs`
--
ALTER TABLE `user_songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
