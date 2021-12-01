INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address
)VALUES(
	1,
	'Asher',
	'Boucher'
);


-- concessions inventory
INSERT INTO concessions_inventory(
	upc_snacks,
	concessions_qty
)VALUES(
	200,
	50
);

-- tickets invetory
INSERT INTO tickets_inventory(
	upc_tickets,
	tickets_quantity
)VALUES(
	100,
	50
);

-- Concessions
INSERT INTO concessions(
	item_id_snacks,
	cost,
	prod_name,
	upc_snacks
)VALUES(
	20,
	7.00,
	'Popcorn',
	200
);

-- tickets
INSERT INTO tickets(
	ticket_id,
	cost,
	movie_name,
	upc_tickets
)VALUES(
	10,
	15.00,
	'Casablanca',
	100
);

-- orders
INSERT INTO orders(
	order_id,
	order_date,
	total_cost,
	upc_snacks,
	upc_tickets
)VALUES(
	1,
	27.00,
	100,
	200
);

-- cart
INSERT INTO cart(
	cart_id,
	customer_id,
	order_id
)VALUES(
	1,
	1,
	1
);