CREATE TABLE Cliente(
	phone INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	pass VARCHAR(50) NOT NULL,
	PRIMARY KEY(phone)
);

CREATE TABLE Cajero(
	rut INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	pass VARCHAR(50) NOT NULL,
	PRIMARY KEY(rut)
);

CREATE TABLE Producto(
	id INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	precio FLOAT NOT NULL DEFAULT 0,
	cantidad INT NOT NULL DEFAULT 0,
	PRIMARY KEY(id)
);

CREATE TABLE Venta(
	fecha BIGINT NOT NULL,
	idProducto INT NOT NULL,
	idCajero INT NOT NULL,
	idCliente INT NOT NULL,
	
	FOREIGN KEY(idProducto) REFERENCES Producto(id),
	FOREIGN KEY(idCajero) REFERENCES Cajero(rut),
	FOREIGN KEY(idCliente) REFERENCES Cliente(phone),
	PRIMARY KEY(fecha)
);
