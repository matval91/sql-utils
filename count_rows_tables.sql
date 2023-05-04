-- This query allows to store in a database the name of all the tables and their rows
DROP TABLE IF EXISTS tables_rows;
CREATE TABLE tables_rows(table_name VARCHAR(20), n_rows INT);
INSERT INTO tables_rows
SELECT table_name, table_rows
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'test_db';
DELETE FROM tables_rows WHERE table_name='tables_rows';
SELECT * FROM tables_rows;
