CREATE TABLE `users` (
    `id` INT,
    `first_name` VARCHAR(64),
    `last_name` VARCHAR(64),
    `username` VARCHAR(64),
    `password` VARCHAR(128),
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `id` INT,
    `name` VARCHAR(64),
    `type` ENUM('Primary','Secondary', 'higher Education'),
    `location` VARCHAR(64),
    `year` INT,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies`(
    `id` INT,
    `name` TEXT,
    `industry` TEXT,
    `location` TEXT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `people_connections`(
    `id` INT,
    `user_id` INT,
    `following_id` INT,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`following_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `school_connections`(
    `id` INT,
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `type` VARCHAR(32),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools`(`id`)
);

CREATE TABLE `company_connections`(
    `id` INT,
    `user_id` INT,
    `company_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`)
);
