-- SQL STATEMENTS
-- YOU WILL CREATE SQL STATEMENTS THAT DEMONSTRATE YOUR KNOWLEDGE OF THE FOLLOWING:

-- Select All
    -- SELECT * FROM table_name;
        SELECT * FROM email_addresses;
        SELECT * FROM promotions;
        SELECT * FROM suppliers;
        SELECT * FROM toy-promotions;
        SELECT * FROM toys;

-- Select only specified columns from a table
    -- SELECT column1, column2, ... FROM table_name;
        SELECT email_address FROM email_addresses;
        SELECT type FROM promotions;
        SELECT address FROM suppliers;
        SELECT sale_price FROM toy-promotions;
        SELECT price FROM toys;

-- Select WHERE - Use Select WHERE to extract rows that fulfil a specified condition
    -- SELECT column1, column2, ... FROM table_name WHERE condition;
        SELECT * FROM promotions WHERE type = 'Summer';
        SELECT * FROM email_addresses WHERE supplier_id = '4';

-- Select All in Descending Order
    -- SELECT * FROM table_name ORDER BY column1, column2, ... DESC;
        SELECT * FROM toys ORDER BY location DESC;
        SELECT * FROM promotions ORDER BY start_date DESC;

-- Select Values Between a given range
    -- SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
        SELECT * FROM toys WHERE price BETWEEN 50.00 AND 100.00;
        SELECT * FROM email_addresses WHERE supplier_id BETWEEN 1 AND 3;

-- Insert a Row into each table (create an insert for each table)
    -- INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
        INSERT INTO toys (id, name, description, price, location, supplier_id) VALUES ('16', 'The Legend of Zelda: Breath of the Wild', 'Video Game', '59.99', '6', '5');
        INSERT INTO promotions (id, start_date, end_date, type) VALUES ('7', '2022-07-25', '2022-09-01', 'Summer');

-- Delete FROM – you can determine the condition (eg WHERE id = 1)
    -- DELETE FROM table_name WHERE condition;
        DELETE FROM toys WHERE supplier_id = '1';
        DELETE FROM suppliers WHERE name = 'Games for Everyone';

-- Join – choose two appropriate tables and any example you want for your Join
    --SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;
        SELECT toy-promotions.promotion_id, toys.name, toys.location FROM toy-promotions RIGHT JOIN toys ON toy-promotions.toy_id = toys.toy_id ORDER BY toy-promotions.promotion_id;