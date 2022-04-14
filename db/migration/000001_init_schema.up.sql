CREATE TABLE `personal` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(255),
  `middle_name` varchar(255),
  `last_name` varchar(255),
  `nick` varchar(255),
  `birth_date` date,
  `birth_place` varchar(255),
  `photo` varchar(255),
  `user_id` int,
  `id_number` varchar(255)
);

CREATE TABLE `member` (
  `id` int,
  `position_id` int,
  `start_date` date,
  `end_date` date,
  `major` varchar(255),
  `batch_name` varchar(255),
  `batch_date` date
);

CREATE TABLE `user` (
  `user_id` int PRIMARY KEY NOT NULL,
  `user_name` varchar(255),
  `password` varchar(255),
  `passive` ENUM ('0', '1'),
  `status` ENUM ('0', '1'),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `address` (
  `id` int PRIMARY KEY NOT NULL,
  `address` varchar(255),
  `phone` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `default` ENUM ('0', '1'),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `Event` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `remark` varchar(255),
  `event_date` date,
  `type` ENUM ('Internal', 'External'),
  `recur` ENUM ('0', '1'),
  `participant` varchar(255) COMMENT 'id personal'
);

CREATE TABLE `Event_detail` (
  `id` int,
  `code` varchar(255),
  `remark` varchar(255),
  `event_date` date,
  `type` ENUM ('Internal', 'External')
);

CREATE TABLE `Attendance` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `personal_id` int,
  `shift_code` varchar(255),
  `shift_start` date NOT NULL,
  `shift_end` date NOT NULL,
  `start_time` date,
  `end_time` date,
  `attend_code` varchar(255),
  `remark` varchar(255),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `Attendance_detail` (
  `id` int,
  `personal_id` int,
  `attend_code` varchar(255),
  `shift_code` varchar(255),
  `shift_start` date NOT NULL
);

CREATE TABLE `position` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `position_name` varchar(255),
  `position_flag` varchar(255),
  `parent` int,
  `parent_path` varchar(255),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `asset` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `position_id` varchar(255),
  `position_flag` varchar(255),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `recruitment` (
  `code` varchar(255) PRIMARY KEY,
  `first_name` varchar(255),
  `middle_name` varchar(255),
  `last_name` varchar(255),
  `nick` varchar(255),
  `birth_date` date,
  `birth_place` varchar(255),
  `photo` varchar(255),
  `id_number` varchar(255),
  `status` int
);

CREATE TABLE `recruitment_detail` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `position_id` varchar(255),
  `position_flag` varchar(255),
  `modified_by` int,
  `modified_date` date,
  `created_by` int,
  `created_date` date
);

CREATE TABLE `treasury` (
  `id` int PRIMARY KEY,
  `period` varchar(255),
  `start_date` date,
  `end_date` date,
  `value` varchar(255)
);

ALTER TABLE `personal` ADD FOREIGN KEY (`id`) REFERENCES `address` (`id`);

ALTER TABLE `member` ADD FOREIGN KEY (`id`) REFERENCES `personal` (`id`);

ALTER TABLE `member` ADD FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

ALTER TABLE `asset` ADD FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

ALTER TABLE `Event_detail` ADD FOREIGN KEY (`id`) REFERENCES `Event` (`id`);

ALTER TABLE `user` ADD FOREIGN KEY (`user_id`) REFERENCES `personal` (`user_id`);

ALTER TABLE `Attendance` ADD FOREIGN KEY (`personal_id`) REFERENCES `personal` (`id`);

ALTER TABLE `Attendance_detail` ADD FOREIGN KEY (`id`) REFERENCES `Attendance` (`id`);

ALTER TABLE `recruitment_detail` ADD FOREIGN KEY (`code`) REFERENCES `recruitment` (`code`);
