-- MySQL Script generated by MySQL Workbench
-- Sun Oct 14 15:19:56 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
USE `cursos_libry` ;

-- -----------------------------------------------------
-- Table `mydb`.`socials`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`socials` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `website` MEDIUMTEXT NULL,
  `google` MEDIUMTEXT NULL,
  `twitter` MEDIUMTEXT NULL,
  `facebook` MEDIUMTEXT NULL,
  `linkedin` MEDIUMTEXT NULL,
  `youtube` MEDIUMTEXT NULL,
  `phone` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`professors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `last_name` VARCHAR(70) NOT NULL,
  `job` VARCHAR(60) NULL,
  `bio` VARCHAR(500) NULL,
  `social_id` INT NOT NULL,
  `email` VARCHAR(300) NOT NULL,
  `curriculum` MEDIUMTEXT NULL,
  `photo` MEDIUMTEXT NULL,
  `password` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`, `social_id`),
  INDEX `fk_professor_social_idx` (`social_id` ASC),
  CONSTRAINT `fk_professor_social`
    FOREIGN KEY (`social_id`)
    REFERENCES `cursos_libry`.`socials` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`courses_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`courses_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `aproved` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`courses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `subtitle` VARCHAR(100) NULL,
  `courses_category_id` INT NOT NULL,
  `knowledge_required` VARCHAR(200) NOT NULL,
  `to_who` VARCHAR(200) NOT NULL,
  `objective` VARCHAR(200) NOT NULL,
  `description` VARCHAR(200) NULL,
  `banner` MEDIUMTEXT NULL,
  `welcome_message` VARCHAR(500) NULL,
  `congrats_message` VARCHAR(500) NULL,
  `premium` TINYINT NOT NULL,
  `professors_id` INT NOT NULL,
  `professors_social_id` INT NOT NULL,
  PRIMARY KEY (`id`, `courses_category_id`, `professors_id`, `professors_social_id`),
  INDEX `fk_courses_courses_category1_idx` (`courses_category_id` ASC),
  INDEX `fk_courses_professors1_idx` (`professors_id` ASC, `professors_social_id` ASC),
  CONSTRAINT `fk_courses_courses_category1`
    FOREIGN KEY (`courses_category_id`)
    REFERENCES `cursos_libry`.`courses_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_courses_professors1`
    FOREIGN KEY (`professors_id` , `professors_social_id`)
    REFERENCES `cursos_libry`.`professors` (`id` , `social_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`section` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `objective` VARCHAR(300) NOT NULL,
  `courses_id` INT NOT NULL,
  `courses_courses_category_id` INT NOT NULL,
  `courses_professors_id` INT NOT NULL,
  `courses_professors_social_id` INT NOT NULL,
  PRIMARY KEY (`id`, `courses_id`, `courses_courses_category_id`, `courses_professors_id`, `courses_professors_social_id`),
  INDEX `fk_section_courses1_idx` (`courses_id` ASC, `courses_courses_category_id` ASC, `courses_professors_id` ASC, `courses_professors_social_id` ASC),
  CONSTRAINT `fk_section_courses1`
    FOREIGN KEY (`courses_id` , `courses_courses_category_id` , `courses_professors_id` , `courses_professors_social_id`)
    REFERENCES `cursos_libry`.`courses` (`id` , `courses_category_id` , `professors_id` , `professors_social_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`classes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `subtitle` VARCHAR(100) NULL,
  `description` VARCHAR(200) NULL,
  `content` VARCHAR(700) NULL,
  `section_id` INT NOT NULL,
  `section_courses_id` INT NOT NULL,
  `section_courses_courses_category_id` INT NOT NULL,
  `section_courses_professors_id` INT NOT NULL,
  PRIMARY KEY (`id`, `section_id`, `section_courses_id`, `section_courses_courses_category_id`, `section_courses_professors_id`),
  INDEX `fk_classes_section1_idx` (`section_id` ASC, `section_courses_id` ASC, `section_courses_courses_category_id` ASC, `section_courses_professors_id` ASC),
  CONSTRAINT `fk_classes_section1`
    FOREIGN KEY (`section_id` , `section_courses_id` , `section_courses_courses_category_id` , `section_courses_professors_id`)
    REFERENCES `cursos_libry`.`section` (`id` , `courses_id` , `courses_courses_category_id` , `courses_professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`class_files`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`class_files` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `cover` MEDIUMTEXT NOT NULL,
  `classes_id` INT NOT NULL,
  PRIMARY KEY (`id`, `classes_id`),
  INDEX `fk_class_files_classes1_idx` (`classes_id` ASC),
  CONSTRAINT `fk_class_files_classes1`
    FOREIGN KEY (`classes_id`)
    REFERENCES `cursos_libry`.`classes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`exercises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`exercises` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `problem` VARCHAR(500) NOT NULL,
  `duration` INT NOT NULL,
  `answer` VARCHAR(500) NULL,
  `file_answer` MEDIUMTEXT NULL,
  `classes_id` INT NOT NULL,
  `classes_section_id` INT NOT NULL,
  PRIMARY KEY (`id`, `classes_id`, `classes_section_id`),
  INDEX `fk_exercises_classes1_idx` (`classes_id` ASC, `classes_section_id` ASC),
  CONSTRAINT `fk_exercises_classes1`
    FOREIGN KEY (`classes_id` , `classes_section_id`)
    REFERENCES `cursos_libry`.`classes` (`id` , `section_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`support_files`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`support_files` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `cover` MEDIUMTEXT NOT NULL,
  `exercises_id` INT NOT NULL,
  PRIMARY KEY (`id`, `exercises_id`),
  INDEX `fk_support_files_exercises1_idx` (`exercises_id` ASC),
  CONSTRAINT `fk_support_files_exercises1`
    FOREIGN KEY (`exercises_id`)
    REFERENCES `cursos_libry`.`exercises` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`review` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `duration` INT NOT NULL,
  `section_id` INT NOT NULL,
  `section_courses_id` INT NOT NULL,
  `section_courses_courses_category_id` INT NOT NULL,
  `section_courses_professors_id` INT NOT NULL,
  PRIMARY KEY (`id`, `section_id`, `section_courses_id`, `section_courses_courses_category_id`, `section_courses_professors_id`),
  INDEX `fk_review_section1_idx` (`section_id` ASC, `section_courses_id` ASC, `section_courses_courses_category_id` ASC, `section_courses_professors_id` ASC),
  CONSTRAINT `fk_review_section1`
    FOREIGN KEY (`section_id` , `section_courses_id` , `section_courses_courses_category_id` , `section_courses_professors_id`)
    REFERENCES `cursos_libry`.`section` (`id` , `courses_id` , `courses_courses_category_id` , `courses_professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`review_activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_libry`.`review_activity` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(40) NOT NULL,
  `problem` VARCHAR(500) NOT NULL,
  `answer` VARCHAR(500) NULL,
  `file_answer` MEDIUMTEXT NULL,
  `review_id` INT NOT NULL,
  PRIMARY KEY (`id`, `review_id`),
  INDEX `fk_review_activity_review1_idx` (`review_id` ASC),
  CONSTRAINT `fk_review_activity_review1`
    FOREIGN KEY (`review_id`)
    REFERENCES `cursos_libry`.`review` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
