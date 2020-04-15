SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `taller_vuelo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `taller_vuelo` ;

CREATE TABLE IF NOT EXISTS `taller_vuelo`.`vuelo` (
  `idVuelo` INT NOT NULL AUTO_INCREMENT,
  `pasajeros` INT NOT NULL,
  `ciudad` VARCHAR(20) NOT NULL,
  `fecha_salida` VARCHAR(10) NULL DEFAULT NULL,
  `fecha_llegada` VARCHAR(10) NULL DEFAULT NULL,
  `id_vuelo` INT NOT NULL,
  `aerolinea` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`idVuelo`))
ENGINE = InnoDB
AUTO_INCREMENT = 0
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS `taller_vuelo`.`persona` (
  `id_persona` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `direccion` VARCHAR(30) NOT NULL,
  `edad` INT NOT NULL,
  `numero_asiento` INT NOT NULL,
  `vuelo_id_vuelo` INT NOT NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `fk_persona_vuelo_idx` (`vuelo_id_vuelo` ASC) VISIBLE,
  CONSTRAINT `fk_persona_vuelo`
    FOREIGN KEY (`vuelo_id_vuelo`)
    REFERENCES `taller_vuelo`.`vuelo` (`idVuelo`))
ENGINE = InnoDB
AUTO_INCREMENT = 0
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
