-- -----------------
-- Create user table
-- -----------------
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `phone` varchar(20) NULL,
  `gender` varchar(1) NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `group` INT(10) NOT NULL,
  `profile_picture` varchar(200) NULL,
  `joined` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- -----------
-- Create table groups
-- -----------
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- ------------
-- GROUP data
-- ------------
insert into groups VALUES (1, 'Standard user', '');
insert into groups VALUES (2, 'Administrator ', '{"admin": 1}');

-- ------------
-- Create table user sessions
-- ------------
CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` INT(10),
  `hash` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;