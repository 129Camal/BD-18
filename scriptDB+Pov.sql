-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

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
  PRIMARY KEY (`idEquipa`, `Seccao_Designacao`),
  INDEX `fk_Equipa_Seccao_idx` (`Seccao_Designacao` ASC),
  CONSTRAINT `fk_Equipa_Seccao`
    FOREIGN KEY (`Seccao_Designacao`)
    REFERENCES `Agrup424`.`Seccao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Agrup424`.`Elemento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agrup424`.`Elemento` (
  `idElemento` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  `Idade` INT NULL,
  `Sexo` VARCHAR(1),
  `DatadeNasc` VARCHAR(45) NULL,
  `Morada` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `NoitesdeCampo` INT NULL,
  `Cargo` VARCHAR(45) NULL,
  `Seccao_Designacao` VARCHAR(45) NOT NULL,
  `Equipa_idEquipa` INT NULL,
  PRIMARY KEY (`idElemento`, `Seccao_Designacao`),
  INDEX `fk_Elemento_Seccao1_idx` (`Seccao_Designacao` ASC),
  INDEX `fk_Elemento_Equipa1_idx` (`Equipa_idEquipa` ASC),
  CONSTRAINT `fk_Elemento_Seccao1`
    FOREIGN KEY (`Seccao_Designacao`)
    REFERENCES `Agrup424`.`Seccao` (`Designacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Elemento_Equipa1`
    FOREIGN KEY (`Equipa_idEquipa`)
    REFERENCES `Agrup424`.`Equipa` (`idEquipa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Agrup424`.`Atividade` (
  `idAtividade` INT NOT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Descricao` VARCHAR(45) NULL,
  `Equipa_idEquipa` INT NULL,
  PRIMARY KEY (`idAtividade`),
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



