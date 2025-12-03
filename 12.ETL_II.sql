CREATE SCHEMA IF NOT EXISTS italy_shop;

CREATE TABLE IF NOT EXISTS clientes(
	id_cliente INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR (25) NOT NULL,
    email VARCHAR (75) NOT NULL,
    gender ENUM ('Male', 'Female', 'Polygender','Genderqueer', 'Agender', 'Genderfluid', 'Bigender', 'Non-binary', 'Unknown') NOT NULL,
    city VARCHAR (25) NOT NULL,
    country VARCHAR (25) NOT NULL,
    address VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_cliente)
    );
CREATE TABLE IF NOT EXISTS productos(
	id_producto VARCHAR(25) NOT NULL,
	nombre_producto VARCHAR (75) NOT NULL,
	categoría VARCHAR (75) NOT NULL,
	precio FLOAT NOT NULL,
	origen VARCHAR (25) NOT NULL,
	descripcion VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_producto)
	);

CREATE TABLE IF NOT EXISTS ventas(
	id_venta INT AUTO_INCREMENT NOT NULL,
	id_cliente INT NOT NULL,
	id_producto VARCHAR(25) NOT NULL,
	fecha_Venta DATE NOT NULL,
	cantidad INT NOT NULL,
	total FLOAT NOT NULL,
    PRIMARY KEY (id_venta),
	CONSTRAINT fk_productos_ventas FOREIGN KEY (id_producto)
		REFERENCES productos(id_producto),
    CONSTRAINT fk_clientes_ventas FOREIGN KEY (id_cliente)
		REFERENCES clientes(id_cliente)
	);

INSERT INTO clientes (first_name, last_name, email, gender, city, country, address)
	VALUES ('Cheri', 'Dunsmore', 'cdunsmore0@instagram.com', 'Female', 'Palma De Mallorca',	'Spain', '076 Rockefeller Crossing');

INSERT INTO productos (id_producto, nombre_producto, categoría, precio, origen, descripcion)
	VALUES ('A1	Pizza Margherita', 'Platos Preparados',	8.99, 'Italia',	'Clásica pizza italiana con tomate mozzarella');

INSERT INTO ventas (id_cliente, id_producto, fecha_Venta, cantidad, total)
	VALUES (723, 'A1', '2023-11-22', 2,	'17.98')
		   



