CREATE TABLE `categoria`(`id_categoria` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`nombre` VARCHAR(50) UNIQUE NOT NULL);
CREATE TABLE `producto`(`id_producto` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`nombre` VARCHAR(50) NOT NULL,`descripcion` VARCHAR(500) NOT NULL,`fk_id_categoria` INT(11) NOT NULL,FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria`(`id_categoria`));
CREATE TABLE `imagen` (`id_imagen` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`path` varchar(500) NOT NULL,`fk_id_producto` int(11) NOT NULL,FOREIGN KEY (`fk_id_producto`) REFERENCES `producto`(`id_producto`));
CREATE TABLE `usuario`(`id_usuario` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`email` varchar(100) UNIQUE NOT NULL,`password` varchar(555) NOT NULL,`tipo_usuario` tinyint(1) NOT NULL DEFAULT '0');
INSERT INTO categoria(nombre) VALUES ('categoria1');
INSERT INTO categoria(nombre) VALUES ('categoria2');
INSERT INTO categoria(nombre) VALUES ('categoria3');
INSERT INTO categoria(nombre) VALUES ('categoria4');
INSERT INTO categoria(nombre) VALUES ('categoria5');
INSERT INTO categoria(nombre) VALUES ('categoria6');
INSERT INTO categoria(nombre) VALUES ('categoria7');
INSERT INTO categoria(nombre) VALUES ('categoria8');
INSERT INTO categoria(nombre) VALUES ('categoria9');
INSERT INTO categoria(nombre) VALUES ('categoria10');
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto1','Descripcion producto 1', 1);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto2','Descripcion producto 2', 2);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto3','Descripcion producto 3', 3);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto4','Descripcion producto 4', 4);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto5','Descripcion producto 5', 5);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto6','Descripcion producto 6', 6);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto7','Descripcion producto 7', 7);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto8','Descripcion producto 8', 8);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto9','Descripcion producto 9', 9);
INSERT INTO producto(nombre,descripcion,fk_id_categoria) VALUES ('producto10','Descripcion producto 10', 10);
INSERT INTO usuario(email,password,tipo_usuario) VALUES ('admin@admin.com', 'admin', 1);
