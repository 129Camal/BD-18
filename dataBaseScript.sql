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
  `Simbologia` VARCHAR(200) NULL,
  `Patrono` VARCHAR(45) NULL,
  PRIMARY KEY (`Designacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Equipa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Equipa` (
  `idEquipa` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  `Lema` VARCHAR(45) NULL,
  `Grito` VARCHAR(45) NULL,
  `Seccao_Designacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipa`),
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
  `Designacao` VARCHAR(45) NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`Designacao`),
  UNIQUE INDEX `Designacao_UNIQUE` (`Designacao` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Elemento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Elemento` (
  `Nin` BIGINT(13) NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Idade` VARCHAR(45) NULL,
  `Sexo` VARCHAR(1) NULL,
  `DatadeNasc` VARCHAR(45) NULL,
  `Morada` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `NoitesdeCampo` INT NULL,
  `Funcao_Designacao` VARCHAR(45) NOT NULL,
  `Seccao_Designacao` VARCHAR(45) NULL,
  `Equipa_idEquipa` INT NULL,
  `Elemento_Nin` BIGINT(13) NOT NULL,
  PRIMARY KEY (`Nin`),
  UNIQUE INDEX `Nine_UNIQUE` (`Nin` ASC),
  INDEX `fk_Elemento_Seccao1_idx` (`Seccao_Designacao` ASC),
  INDEX `fk_Elemento_Equipa1_idx` (`Equipa_idEquipa` ASC),
  INDEX `fk_Elemento_Funcao1_idx` (`Funcao_Designacao` ASC),
  INDEX `fk_Elemento_Elemento1_idx` (`Elemento_Nin` ASC),
  CONSTRAINT `fk_Elemento_Seccao1`
    FOREIGN KEY (`Seccao_Designacao`)
    REFERENCES `Agrup424`.`Seccao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
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
  CONSTRAINT `fk_Elemento_Elemento1`
    FOREIGN KEY (`Elemento_Nin`)
    REFERENCES `Agrup424`.`Elemento` (`Nin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
