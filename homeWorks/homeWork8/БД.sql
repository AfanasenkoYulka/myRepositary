CREATE TABLE `visits` (
  `visit_id` int PRIMARY KEY AUTO_INCREMENT,
  `date` timestamp DEFAULT (now()) COMMENT 'Дата визита',
  `doctor_id` int NOT NULL COMMENT 'id врача',
  `patient_id` int NOT NULL COMMENT 'id пациента',
  `type` ENUM ('Home', 'Clinic') DEFAULT 0 COMMENT 'тип визита',
  `symptoms` text COMMENT 'симптомы',
  `diagnosis_id` int COMMENT 'id диагноза',
  `instructions` text COMMENT 'предписания'
);

CREATE TABLE `prescribed` (
  `prescribed_id` int PRIMARY KEY AUTO_INCREMENT,
  `visit_id` int NOT NULL COMMENT 'id посещения',
  `medicament_id` int NOT NULL COMMENT 'id медикамента',
  `side_effects` text COMMENT 'побочные эффекты',
  `method_use` text COMMENT 'способ применения',
  `effect` text COMMENT 'действие медикамента'
);

CREATE TABLE `doctors` (
  `doctor_id` int PRIMARY KEY AUTO_INCREMENT,
  `fio` varchar(255) COMMENT 'фио врача',
  `post` varchar(255) COMMENT 'специальность'
);

CREATE TABLE `patients` (
  `patient_id` int PRIMARY KEY AUTO_INCREMENT,
  `fio` varchar(255) COMMENT 'фио пациента',
  `birthDate` date COMMENT 'дата рождения',
  `sex` ENUM ('Man', 'Woman') DEFAULT 0 COMMENT 'пол',
  `address` varchar(255) COMMENT 'домашний адрес'
);

CREATE TABLE `diagnoses` (
  `diagnosis_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) COMMENT 'название диагноза'
);

CREATE TABLE `medicaments` (
  `medicament_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) COMMENT 'название медикамента',
  `method_use` text COMMENT 'способ применения',
  `side_effects` text COMMENT 'побочные эффекты'
);

ALTER TABLE `prescribed` ADD FOREIGN KEY (`visit_id`) REFERENCES `visits` (`visit_id`);

ALTER TABLE `doctors` ADD FOREIGN KEY (`doctor_id`) REFERENCES `visits` (`doctor_id`);

ALTER TABLE `patients` ADD FOREIGN KEY (`patient_id`) REFERENCES `visits` (`patient_id`);

ALTER TABLE `diagnoses` ADD FOREIGN KEY (`diagnosis_id`) REFERENCES `visits` (`diagnosis_id`);

ALTER TABLE `prescribed` ADD FOREIGN KEY (`medicament_id`) REFERENCES `medicaments` (`medicament_id`);
