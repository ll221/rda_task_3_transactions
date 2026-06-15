-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)
INSERT INTO Products (ID, Name, Description, Price, WarehouseAmount)
VALUES (1, 'AwersomeProduct', 'A great product', 100, 50);

INSERT INTO Customers (ID, FirstName, LastName, Email, Address)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '123 Main St');

-- Start the transaction 
START TRANSACTION; 
INSERT INTO Orders (CustomerID, Date)
VALUES (1, '2023-01-01');

INSERT INTO OrderItems (OrderID, ProductID)
VALUES (LAST_INSERT_ID(), 1);


-- And some data should be created inside the transaction 

COMMIT; 