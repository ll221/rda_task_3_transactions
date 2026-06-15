-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION; 
INSERT INTO Orders (CustomerID, Date)
VALUES (1, '2023-01-01');

INSERT INTO OrderItems (OrderID, ProductID)
VALUES (LAST_INSERT_ID(), 1);


-- And some data should be created inside the transaction 

COMMIT; 