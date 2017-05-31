CREATE TABLE IF NOT EXISTS ``posts_{{ board }}`` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `thread` int(11) DEFAULT NULL,
   `subject` varchar(100) DEFAULT NULL,
   `email` varchar(30) DEFAULT NULL,
   `name` varchar(35) DEFAULT NULL,
   `trip` varchar(15) DEFAULT NULL,
   `capcode` varchar(50) DEFAULT NULL,
   `body` longtext NOT NULL,
   `body_nomarkup` text,
   `time` int(11) NOT NULL,
   `bump` int(11) DEFAULT NULL,
   `files` text DEFAULT NULL,
   `num_files` int(11) DEFAULT 0,
   `filehash` text CHARACTER SET ascii,
   `password` varchar(20) DEFAULT NULL,
   `ip` varchar(60) CHARACTER SET ascii NOT NULL,
   `sticky` int(1) NOT NULL,
   `locked` int(1) NOT NULL,
   `cycle` int(1) NOT NULL,
   `sage` int(1) NOT NULL,
   `force_anon` BOOL DEFAULT '0',
   `embed` text,
   `edited_at` int(11) DEFAULT NULL,
   UNIQUE KEY `id` (`id`),
   KEY `thread_id` (`thread`,`id`),
   KEY `filehash` (`filehash`(40)),
   KEY `time` (`time`),
   KEY `ip` (`ip`),
   KEY `list_threads` (`thread`, `sticky`, `bump`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;
 
