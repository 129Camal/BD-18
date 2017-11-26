-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Agrup424
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Agrup424
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Agrup424` DEFAULT CHARACTER SET utf8 ;
USE `Agrup424` ;

-- -----------------------------------------------------
-- Table `Agrup424`.`Seccao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Seccao` (
  `Designacao` VARCHAR(45) NOT NULL,
  `Simbologia` VARCHAR(100) NULL,
  `Patrono` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Designacao`),
  UNIQUE INDEX `Designacao_UNIQUE` (`Designacao` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Equipa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Equipa` (
  `idEquipa` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Lema` VARCHAR(45) NOT NULL,
  `Grito` VARCHAR(45) NOT NULL,
  `Seccao_Designacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipa`),
  UNIQUE INDEX `idEquipa_UNIQUE` (`idEquipa` ASC),
  INDEX `fk_Equipa_Seccao1_idx` (`Seccao_Designacao` ASC),
  CONSTRAINT `fk_Equipa_Seccao1`
    FOREIGN KEY (`Seccao_Designacao`)
    REFERENCES `Agrup424`.`Seccao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Funcao` (
  `Designacao` VARCHAR(100) NOT NULL,
  `Descricao` VARCHAR(350) NOT NULL,
  PRIMARY KEY (`Designacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Elemento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Elemento` (
  `NIN` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Idade` INT NOT NULL,
  `Sexo` ENUM('M', 'F') NOT NULL,
  `DatadeNasc` DATE NOT NULL,
  `Morada` VARCHAR(45) NOT NULL,
  `Telemovel` INT NOT NULL,
  `Email` VARCHAR(45) NULL,
  `NoitesdeCampo` INT NOT NULL,
  `Equipa_idEquipa` INT NULL,
  `Funcao_Designacao` VARCHAR(100) NOT NULL,
  `Seccao_Designacao` VARCHAR(45) NULL,
  PRIMARY KEY (`NIN`, `Funcao_Designacao`),
  UNIQUE INDEX `NIN_UNIQUE` (`NIN` ASC),
  INDEX `fk_Elemento_Equipa1_idx` (`Equipa_idEquipa` ASC),
  INDEX `fk_Elemento_Funcao1_idx` (`Funcao_Designacao` ASC),
  INDEX `fk_Elemento_Seccao1_idx` (`Seccao_Designacao` ASC),
  CONSTRAINT `fk_Elemento_Equipa1`
    FOREIGN KEY (`Equipa_idEquipa`)
    REFERENCES `Agrup424`.`Equipa` (`idEquipa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Elemento_Funcao1`
    FOREIGN KEY (`Funcao_Designacao`)
    REFERENCES `Agrup424`.`Funcao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Elemento_Seccao1`
    FOREIGN KEY (`Seccao_Designacao`)
    REFERENCES `Agrup424`.`Seccao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Atividade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Atividade` (
  `idAtividade` INT NOT NULL AUTO_INCREMENT,
  `Designacao` VARCHAR(40) NOT NULL,
  `Descricao` VARCHAR(150) NOT NULL,
  `dia` DATE NOT NULL,
  `Equipa_idEquipa` INT NOT NULL,
  PRIMARY KEY (`idAtividade`),
  UNIQUE INDEX `idAtividade_UNIQUE` (`idAtividade` ASC),
  INDEX `fk_Atividade_Equipa1_idx` (`Equipa_idEquipa` ASC),
  CONSTRAINT `fk_Atividade_Equipa1`
    FOREIGN KEY (`Equipa_idEquipa`)
    REFERENCES `Agrup424`.`Equipa` (`idEquipa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
