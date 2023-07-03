CREATE DATABASE pfg;

Use pfg;

CREATE TABLE `enfermeros` (
 `uid` BIGINT NOT NULL,
 `name` VARCHAR(255) NOT NULL,
 `uname` VARCHAR(255) NOT NULL,
 `colegio` VARCHAR(255) NOT NULL,
 PRIMARY KEY (`uid`)
 );
 
 CREATE TABLE `ninios` (
 `enfermero` BIGINT NOT NULL,
 `nombre` VARCHAR(255) NOT NULL,
 `ratio` FLOAT NOT NULL,
 PRIMARY KEY (`nombre`, `enfermero`),
 KEY `enfermero` (`enfermero`),
 CONSTRAINT `ninios_ibfk_1` FOREIGN KEY (`enfermero`) REFERENCES `enfermeros` (`uid`)
 )