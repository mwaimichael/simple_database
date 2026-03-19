-- creating the inventory table
CREATE TABLE IF NOT EXISTS inventory (
    inventory_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    quantity_on_stock INT NOT NULL DEFAULT 0,
    minimum_stock INT DEFAULT 10,
    last_restock_date DATE,
);    

-- inserting values into inventory table
INSERT INTO inventory (product_id, quantity_on_hand, reorder_level, last_restock_date)
VALUES 
(1, 45, 10, '2024-01-10'), 
(2, 500, 100, '2024-01-15'),
(3, 15, 5, '2024-01-05'),
(4, 120, 20, '2024-01-12'),
(5, 85, 15, '2024-01-18');