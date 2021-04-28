CREATE TABLE `images` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `slug` VARCHAR(100) UNIQUE,
    `size` int(30),
    `created_at` DATETIME,
    `updated_at` DATETIME
)ENGINE=INNODB;

CREATE TABLE `tags` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50),
    `slug` VARCHAR(100) UNIQUE,
    `created_at` DATETIME,
    `updated_at` DATETIME
)ENGINE=INNODB;

CREATE TABLE `categories` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `parent_id` INT NOT NULL,
  `slug` VARCHAR(255) NOT NULL UNIQUE,
  `seo_title` VARCHAR(60) NOT NULL,
  `seo_description` VARCHAR(150) NOT NULL,
  `image_id` INT NOT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON UPDATE CASCADE
)ENGINE=InnoDB;

CREATE TABLE `articles` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_title` VARCHAR(50) NOT NULL,
  `article_description` VARCHAR(150) NOT NULL,
  `article_content` VARCHAR(255) NOT NULL,
  `published_at` DATETIME NOT NULL,
  `category_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  `image_id` INT NOT NULL,
  `seo_title` VARCHAR(60) NOT NULL,
  `seo_description` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL UNIQUE,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

CREATE TABLE `article_tag` (
  `article_id` INT NOT NULL,
  `tag_id` INT  NOT NULL,
  FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON UPDATE CASCADE
)ENGINE=InnoDB;

CREATE TABLE `comments` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` INT  NOT NULL,
  `message` text NOT NULL,
  `author` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `approved_at` datetime NOT NULL,
  FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

CREATE TABLE `services` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(50) NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  `category_id` INT NOT NULL,
  `image_id` INT NOT NULL,
  `seo_title` VARCHAR(60) NOT NULL,
  `seo_description` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL UNIQUE,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
)ENGINE=InnoDB;

CREATE TABLE `time_choices` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `time` TIME
)ENGINE=INNODB;

CREATE TABLE `appointments` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `requester_email` VARCHAR(50) NOT NULL UNIQUE,
  `service_id` INT NOT NULL,
  `requested_at` DATETIME NULL DEFAULT NULL,
  `time_choice_id` INT NOT NULL,
  FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  FOREIGN KEY (`time_choice_id`) REFERENCES `time_choices` (`id`)
)ENGINE=InnoDB;
