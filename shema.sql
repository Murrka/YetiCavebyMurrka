CREATE TABLE `Categoties` 
( `id_cat` INT(10) NOT NULL AUTO_INCREMENT , 
`title` VARCHAR(50) NOT NULL , 
`alias` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`id_cat`)) 
ENGINE = InnoDB;

CREATE TABLE `bets` 
( `id_bets` INT(10) NOT NULL AUTO_INCREMENT , 
`date_bet` DATETIME NOT NULL , 
`price` INT(20) NOT NULL , 
`id_user` INT(10) NOT NULL , 
`id_lots` INT(10) NOT NULL , 
PRIMARY KEY (`id_bets`)) ENGINE = InnoDB;


CREATE TABLE `users` 
( `id_users` INT(10) NOT NULL AUTO_INCREMENT , 
`date_reg` DATETIME NOT NULL , 
`email` VARCHAR(25) NOT NULL , 
`name` VARCHAR(16) NOT NULL , 
`password` VARCHAR(16) NOT NULL , 
`avatar` VARCHAR(16) NOT NULL , 
`contacts` VARCHAR(128) NOT NULL ,  
PRIMARY KEY (`id_users`)) ENGINE = InnoDB;


CREATE TABLE `lots` 
( `id_lots` INT(10) NOT NULL AUTO_INCREMENT , 
`date_create` DATETIME NOT NULL , 
`name` VARCHAR(50) NOT NULL , 
`opisanie` VARCHAR(50) NOT NULL , 
`img_lots` VARCHAR(16) NOT NULL , 
`first_price` INT(25) NOT NULL , 
`date_end` DATETIME NOT NULL , 
`steps_lots` INT NOT NULL , 
`id_autor` INT(10) NOT NULL , 
`id_winner` INT(10) NOT NULL , 
`id_cat` INT(10) NOT NULL ,
`lot_price` INT(11) NOT NULL ,
PRIMARY KEY (`id_lots`)) ENGINE = InnoDB;


ALTER TABLE `Categoties` ADD UNIQUE (`title`);
ALTER TABLE `Categoties` ADD UNIQUE (`alias`);
ALTER TABLE `users` ADD UNIQUE (`email`);
ALTER TABLE `users` ADD UNIQUE (`name`);




ALTER TABLE `lots` ADD FOREIGN KEY (`id_autor`) REFERENCES `users`(`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `lots` ADD FOREIGN KEY (`id_winner`) REFERENCES `users`(`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `lots` ADD FOREIGN KEY (`id_cat`) REFERENCES `Categoties`(`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `bets` ADD FOREIGN KEY (`id_lots`) REFERENCES `lots`(`id_lots`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `bets` ADD FOREIGN KEY (`id_user`) REFERENCES `users`(`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;