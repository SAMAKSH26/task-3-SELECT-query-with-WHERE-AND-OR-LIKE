--I have two tables 
--supplier(supplier_id,companyName,contactName,city,country,phone,fax)
--product(product_id,productName,supplierId,unitPrice,package,IsDiscontinued)


SELECT * FROM supplier
SELECT * FROM dbo.product

--extract the name of products supplied by 'shelley Burke'
 SELECT productName FROM product 
  WHERE SupplierId =(SELECT supplier_id FROM supplier
                       WHERE contactName='Shelley burke' )


--sort the product data in decresing order of unitPrice of products
SELECT * FROM product
ORDER BY UnitPrice DESC


--extract the data of suppliers who supplied the 'filo mix','spegesild'

SELECT * FROM supplier
WHERE supplier_id IN (SELECT supplierId FROM product
                       WHERE productName='filo mix' OR productName='spegesild')


--extract the supplier whose city starts with 'L' 
SELECT * FROM supplier
WHERE city LIKE 'L%'



--products supplied by supplierId 8 having unitPrice grater than 20
SELECT * FROM product
WHERE supplierId =8 AND unitPrice >20