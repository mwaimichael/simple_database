-- create products table
CREATE TABLE IF NOT EXISTS products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    unit_price NUMERIC(10, 2)
);


-- insert products into the products table
INSERT INTO products (product_name, description, category, unit_price)
VALUES 
('Rhino Wheelbarrow', 'Heavy-duty steel wheelbarrow with reinforced frame.', 'Equipment', 5500.00),
('Bamburi Cement', '50kg bag of General Purpose Cement.', 'Building Materials', 750.00),
('Roto Water Tank', '2000L cylindrical plastic water storage tank.', 'Storage', 18500.00),
('Crown Solo Paint', '4L tin of premium brilliant white interior emulsion paint.', 'Finishing', 2400.00),
('Newmatic Kitchen Faucet', 'Chrome-plated brass swivel neck mixer tap.', 'Plumbing', 3800.00);