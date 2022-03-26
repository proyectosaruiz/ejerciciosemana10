CREATE TABLE datos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
dni VARCHAR(10) UNIQUE NOT NULL,
telefono INT,
email VARCHAR(25),
nombre VARCHAR(20),
apellido VARCHAR(30),
direccion VARCHAR(50),
pais VARCHAR(20),
cp INT
);

ALTER TABLE datos
DROP COLUMN direccion;

CREATE TABLE datos (
id_direccion INT UNSIGNED,
direccion VARCHAR(50),
FOREIGN KEY (id_direccion) REFERENCES datos (id)
);


INSERT INTO datos (dni, telefono, email, nombre, apellido, direccion, pais, cp) VALUES ('279948941-9','993870144','ilethem0@google.com','Ivin','Lethem','Loftsgordon','Indonesia','83297');
INSERT INTO datos (dni, telefono, email, nombre, apellido, direccion, pais, cp) VALUES ('748551874-7','497494899','kmungan1@howstuffworks.com','Kiely','Mungan','74641 Dwight Avenue,Bilar','Philippines','44455');
INSERT INTO datos (dni, telefono, email, nombre, apellido, direccion, pais, cp) VALUES ('215649413-4','776631050','ydibbert2@businesswire.com','Yul','Dibbert','9510 Milwaukee Street,Sumberejo','Indonesia','62965');
INSERT INTO datos (dni, telefono, email, nombre, apellido, direccion, pais, cp) VALUES ('617064473-7','921948685','tmcgorley3@studiopress.com','Tamra','Mc Gorley','8902 Doe Crossing Alley,Steinkjer','Norway','54756');
INSERT INTO datos (dni, telefono, email, nombre, apellido, direccion, pais, cp) VALUES ('178988896-4','304168000','Imbrey,eimbrey4@cpanel.net','Elmira','Imbrey','8616 Stephen Hill,Charleston','United States','51471');

select * from datos;
select nombre from datos
order by nombre asc; 
