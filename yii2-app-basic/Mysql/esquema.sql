-- MySQL Script generated by MySQL Workbench
-- Seg 15 Jun 2015 09:06:35 AMT
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema icomp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `icomp` ;
CREATE SCHEMA IF NOT EXISTS `icomp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `icomp` ;

-- -----------------------------------------------------
-- Table `icomp`.`curso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `icomp`.`curso` ;

CREATE TABLE IF NOT EXISTS `icomp`.`curso` (
  `id` INT NOT NULL,
  `sigla` CHAR(4) NULL,
  `nome` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `icomp`.`aluno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `icomp`.`aluno` ;

CREATE TABLE IF NOT EXISTS `icomp`.`aluno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `matricula` INT NULL,
  `nome` VARCHAR(200) NULL,
  `sexo` CHAR NULL,
  `id_curso` INT NULL,
  `ano_ingresso` INT NULL,
  INDEX `fk_Alunos_1` (`id_curso` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Alunos_1`
    FOREIGN KEY (`id_curso`)
    REFERENCES `icomp`.`curso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `icomp`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `icomp`.`usuario` ;

CREATE TABLE IF NOT EXISTS `icomp`.`usuario` (
  `id` INT NOT NULL,
  `login` VARCHAR(20) NULL,
  `senha` CHAR(128) NULL,
  `nome` VARCHAR(200) NULL,
  `email` VARCHAR(100) NULL,
  `pagina` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `senha` char(128) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tipo` ENUM('aluno','professor','admin') NOT NULL,
  `data_cadastro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX login_UNIQUE (login ASC),
  UNIQUE INDEX email_UNIQUE (email ASC)
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
