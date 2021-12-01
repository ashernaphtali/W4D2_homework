
--Customer Table Creation
CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(25),
	last_name VARCHAR(25),

);


-- Concessions Inventory Table Creation
CREATE TABLE concessions_inventory (
	upc_snacks SERIAL PRIMARY KEY,
	concessions_qty INTEGER
);

-- Tickets Inventory Table Creation
CREATE TABLE tickets_inventory (
	upc_tickets SERIAL PRIMARY KEY,
	tickets_quantity INTEGER
);
-- Orders Table Creation
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	total_cost NUMERIC(10,2),
	upc_snacks INTEGER NOT NULL,
    upc_tickets INTEGER NOT NULL,
	FOREIGN KEY(upc_snacks) REFERENCES concessions_inventory(upc_snacks),
    FOREIGN KEY(upc_tickets) REFERENCES tickets_inventory(upc_tickets)
);

-- Concessions Table Creation
CREATE TABLE Concessions (
	item_id_snacks SERIAL PRIMARY KEY,
	cost NUMERIC(5,2),
	prod_name VARCHAR(25),
	upc_snacks INTEGER NOT NULL,
	FOREIGN KEY(upc_snacks) REFERENCES concessions_inventory(upc_snacks)
);

-- Tickets Table Creation
CREATE TABLE Tickets (
	ticket_id SERIAL PRIMARY KEY,
	cost NUMERIC(5,2),
	movie_name VARCHAR(25),
	upc_tickets INTEGER NOT NULL,
	FOREIGN KEY(upc_tickets) REFERENCES tickets_inventory(upc_tickets)
);

-- Cart Table Creation
CREATE TABLE cart (
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(order_id) REFERENCES orders(order_id)
);