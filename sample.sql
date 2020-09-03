# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.3.14-MariaDB)
# Database: reddit
# Generation Time: 2020-09-03 02:54:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reddit_id` varchar(10) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `flair` varchar(255) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `created_utc` int(12) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reddit_id` (`reddit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `reddit_id`, `title`, `flair`, `score`, `created_utc`, `author`, `url`)
VALUES
	(41,'iknfch','What are you doing step-______','LADDER',8884,1599006274,'surrenderyourmemes','https://www.reddit.com/r/AskOuija/comments/iknfch/what_are_you_doing_step/'),
	(42,'il5pxb','Spirits are so stupid dumb, can\'t even write words backwards.','UOYKCUF',3539,1599077992,'legendaryboomer','https://www.reddit.com/r/AskOuija/comments/il5pxb/spirits_are_so_stupid_dumb_cant_even_write_words/'),
	(43,'ikyikn','TWO GIRLS, ONE ________','NIPPLE',174,1599043045,'Shittypantsonfire','https://www.reddit.com/r/AskOuija/comments/ikyikn/two_girls_one/'),
	(44,'ikw8gw','Fellas, is ___ gay?','OUIJA',163,1599034340,'thegreatnappa','https://www.reddit.com/r/AskOuija/comments/ikw8gw/fellas_is_gay/'),
	(45,'iko4f6','F**k ______, all my homies use reddit.','REDDIT',59,1599008402,'pikachu_555-1','https://www.reddit.com/r/AskOuija/comments/iko4f6/fk_all_my_homies_use_reddit/'),
	(46,'iklwi8','I really want 2020 to ________','STOP',58,1599001448,'archerlotto','https://www.reddit.com/r/AskOuija/comments/iklwi8/i_really_want_2020_to/'),
	(47,'il3935','Today is my cakeday. I should ________ .','DIE',53,1599065593,'sycon_ball','https://www.reddit.com/r/AskOuija/comments/il3935/today_is_my_cakeday_i_should/'),
	(48,'ikv8d0','What rhymes with Penis?','COCAINIS',40,1599030759,'yesyespleasedaddy','https://www.reddit.com/r/AskOuija/comments/ikv8d0/what_rhymes_with_penis/'),
	(49,'ikyn5x','Duck Duck ______','MOO',36,1599043542,'yesyespleasedaddy','https://www.reddit.com/r/AskOuija/comments/ikyn5x/duck_duck/'),
	(50,'ikyah8','Honey, did I just see ______ leave our bedroom!?','OBAMA',36,1599042184,'billy-goats','https://www.reddit.com/r/AskOuija/comments/ikyah8/honey_did_i_just_see_leave_our_bedroom/'),
	(51,'ikqoyq','Wake me up when __________ ends','COVID19',28,1599016273,'LonesomePancake','https://www.reddit.com/r/AskOuija/comments/ikqoyq/wake_me_up_when_ends/'),
	(52,'il3rs7','Open this post for 10 years of _____','LONELINESS',28,1599068498,'pujanZz','https://www.reddit.com/r/AskOuija/comments/il3rs7/open_this_post_for_10_years_of/'),
	(53,'ikpc2r','Liking lolis isn\'t pedo, but liking ____ is pedo','PEDRO',22,1599012121,'AlmightySpy','https://www.reddit.com/r/AskOuija/comments/ikpc2r/liking_lolis_isnt_pedo_but_liking_is_pedo/'),
	(54,'iks34d','F is for friends who do stuff together U is for you and me N is for ________','NOTHING',17,1599020641,'Ricky1sHere','https://www.reddit.com/r/AskOuija/comments/iks34d/f_is_for_friends_who_do_stuff_together_u_is_for/'),
	(55,'ikreah','Instead of toilet paper or wipes, I use ___________ when I poop.','MEAT',18,1599018489,'GreebSetter','https://www.reddit.com/r/AskOuija/comments/ikreah/instead_of_toilet_paper_or_wipes_i_use_when_i_poop/'),
	(56,'ikpvjn','I don’t need a girlfriend. I have my ________','HAND',16,1599013755,'sick_duck96','https://www.reddit.com/r/AskOuija/comments/ikpvjn/i_dont_need_a_girlfriend_i_have_my/'),
	(57,'ikwsm2','Is Sucking _____ Gay?','DOGS',16,1599036462,'yesyespleasedaddy','https://www.reddit.com/r/AskOuija/comments/ikwsm2/is_sucking_gay/'),
	(58,'il0nsw','Look in the mirror and say “______” five times and you’ll see a ghost.','KKK',11,1599052037,'GreenKreature','https://www.reddit.com/r/AskOuija/comments/il0nsw/look_in_the_mirror_and_say_five_times_and_youll/'),
	(59,'il03lf','Why are you booing me? I’m ___','WARIO',12,1599049529,'0J0SE0','https://www.reddit.com/r/AskOuija/comments/il03lf/why_are_you_booing_me_im/'),
	(60,'ikz7hr','I think I have to _______ more, I need to do it more often','KILL',11,1599045790,'a_lasagna_hog','https://www.reddit.com/r/AskOuija/comments/ikz7hr/i_think_i_have_to_more_i_need_to_do_it_more_often/'),
	(61,'il1hx6','Not gonna lie, that dude looks kinda _______________.','DEAD',11,1599056008,'XxDagg3rX','https://www.reddit.com/r/AskOuija/comments/il1hx6/not_gonna_lie_that_dude_looks_kinda/'),
	(62,'iksy2e','I\'m going to take that girl\'s _____','UPVOTE',10,1599023258,'Mrintroverted','https://www.reddit.com/r/AskOuija/comments/iksy2e/im_going_to_take_that_girls/'),
	(63,'iknioj','If you just settle down and behave yourself, I\'ll give you a _________.','HUGEDONKEYKONG',10,1599006573,'Negative_Juan','https://www.reddit.com/r/AskOuija/comments/iknioj/if_you_just_settle_down_and_behave_yourself_ill/'),
	(64,'ikyjhw','Who’s the idiot who gives awards to Ads?','OP',8,1599043143,'yesyespleasedaddy','https://www.reddit.com/r/AskOuija/comments/ikyjhw/whos_the_idiot_who_gives_awards_to_ads/'),
	(65,'iky3gg','My life could use a little bit of _________.','FANTA',9,1599041425,'BlueGallery','https://www.reddit.com/r/AskOuija/comments/iky3gg/my_life_could_use_a_little_bit_of/'),
	(66,'il57wi','Today is my ____Day','COCK',8,1599075856,'mirandanielcz','https://www.reddit.com/r/AskOuija/comments/il57wi/today_is_my_day/'),
	(67,'ikyjfr','My dad left me because of __________','MEAT',8,1599043136,'Abyss_U','https://www.reddit.com/r/AskOuija/comments/ikyjfr/my_dad_left_me_because_of/'),
	(68,'ikwxk8','Lemme slay that ______','ELK',10,1599036980,'yesyespleasedaddy','https://www.reddit.com/r/AskOuija/comments/ikwxk8/lemme_slay_that/'),
	(69,'ikov2l','____ are gay.','GAYPEOPLE',7,1599010640,'Hoziak','https://www.reddit.com/r/AskOuija/comments/ikov2l/are_gay/'),
	(70,'iko5ko','Alexa, play __________','DESPACITO',6,1599008488,'LiquidFyre_','https://www.reddit.com/r/AskOuija/comments/iko5ko/alexa_play/'),
	(71,'il60ii','What is the first word in the Bible?','THE',7,1599079150,'BirdTree2','https://www.reddit.com/r/AskOuija/comments/il60ii/what_is_the_first_word_in_the_bible/'),
	(72,'il5tqz','Oh, you look pretty messed up, you should stop ___________...','FARTING',7,1599078412,'Nicominde','https://www.reddit.com/r/AskOuija/comments/il5tqz/oh_you_look_pretty_messed_up_you_should_stop/'),
	(73,'ikz6sy','Before I go to bed, I ___________.','CRY',7,1599045713,'pikachu_555-1','https://www.reddit.com/r/AskOuija/comments/ikz6sy/before_i_go_to_bed_i/'),
	(74,'ikqhgc','Stop mom, you\'re not _______ anymore!','DAD',6,1599015615,'Miziagi','https://www.reddit.com/r/AskOuija/comments/ikqhgc/stop_mom_youre_not_anymore/'),
	(75,'ikpkjt','There\'s a ______ inside me','PP',5,1599012828,'SodiumChlorideIsGood','https://www.reddit.com/r/AskOuija/comments/ikpkjt/theres_a_inside_me/'),
	(87,'ika1bi','The best mobile game is ____________','RAIDSHADOWLEGENDS',6703,1598948538,'LiquidFyre_','https://www.reddit.com/r/AskOuija/comments/ika1bi/the_best_mobile_game_is/'),
	(197,'ibss7i','Never forget to ______ at a funeral.','DIE',187,1599041425,'RowanZeFlame',''),
	(200,'ilexed','Spongebob ________pants','PANTS',69,1599107448,'YoWhatTheDuck','https://www.reddit.com/r/AskOuija/comments/ilexed/spongebob_pants/'),
	(201,'ilcara','“Why does it smell like ___________ in here?!”','SLAVES',47,1599099707,'Noble_Team_6','https://www.reddit.com/r/AskOuija/comments/ilcara/why_does_it_smell_like_in_here/'),
	(203,'il8ind','Say it with me folks, ______ is a fucking idiot!','OP',32,1599088054,'ThexLoneWolf','https://www.reddit.com/r/AskOuija/comments/il8ind/say_it_with_me_folks_is_a_fucking_idiot/'),
	(204,'ilicei','Im out of toilet paper, ill just use some _______.','SANDPAPER',31,1599118840,'Orbitz_Dann','https://www.reddit.com/r/AskOuija/comments/ilicei/im_out_of_toilet_paper_ill_just_use_some/'),
	(205,'ila7v8','This sub isn\'t dead, it\'s _______','ZZZZZZ',19,1599093364,'QvttrO','https://www.reddit.com/r/AskOuija/comments/ila7v8/this_sub_isnt_dead_its/'),
	(207,'il7xxz','The secret ingredient in my grandma\'s famous cookie recipe is','POISON',19,1599086158,'sgtbutler','https://www.reddit.com/r/AskOuija/comments/il7xxz/the_secret_ingredient_in_my_grandmas_famous/'),
	(210,'ilhflq','_________ was behind 9/11','OP',14,1599115599,'Roguemaster48','https://www.reddit.com/r/AskOuija/comments/ilhflq/was_behind_911/'),
	(215,'ildq4u','I don\'t care if she has a big ass. As long as she has a big ________ I don\'t care.','ASS',9,1599103914,'Boosucker0','https://www.reddit.com/r/AskOuija/comments/ildq4u/i_dont_care_if_she_has_a_big_ass_as_long_as_she/'),
	(216,'ilahnw','Spirits are assholes','NO',9,1599094186,'tellytubyowo17','https://www.reddit.com/r/AskOuija/comments/ilahnw/spirits_are_assholes/'),
	(217,'ilfl5l','Bruuuhhh dude, met up with this chick at her place and then we totally _____________','HELDHANDS',8,1599109458,'Magnus-Krogsoe','https://www.reddit.com/r/AskOuija/comments/ilfl5l/bruuuhhh_dude_met_up_with_this_chick_at_her_place/'),
	(218,'ili5vz','\"If she breathes, she\'s a _______!\"','HUMAN',8,1599118193,'CoolBug1532','https://www.reddit.com/r/AskOuija/comments/ili5vz/if_she_breathes_shes_a/'),
	(219,'ilffsl','Waluigi is cool, but I prefer wa___','P',5,1599108974,'DaddyCool13','https://www.reddit.com/r/AskOuija/comments/ilffsl/waluigi_is_cool_but_i_prefer_wa/'),
	(221,'ilhoeo','STONKS ONLY GO _______','UP',5,1599116489,'monalisasnipples','https://www.reddit.com/r/AskOuija/comments/ilhoeo/stonks_only_go/'),
	(222,'ilh71r','How can 2020 get worse?','GREMLINS',5,1599114769,'shadowbroker000','https://www.reddit.com/r/AskOuija/comments/ilh71r/how_can_2020_get_worse/');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
