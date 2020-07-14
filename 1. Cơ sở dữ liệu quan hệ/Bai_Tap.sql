SELECT * FROM classicmodels.customers;
SELECT customerName, phone, city, country FROM customers ;
SELECT * FROM customers WHERE customerName = 'Atelier Graphique';
SELECT * FROM customers WHERE LOWER(customerName) like  lower('%a%');
SELECT * FROM customers WHERE customerName like  '%a%';
SELECT * FROM customers WHERE city IN ('Nantes',' Las Vegas',' Warszawa','NYC') 