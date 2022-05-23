# 8)Display customer name and gender whose names start or end with character 'A'
Select CUS_NAME,CUS_GENDER from customer where (CUS_NAME like '%A' or CUS_NAME like 'A%') ;

# 7)Display the Id and Name of the Product ordered after “2021-10-05”
select p.PRO_ID,PRO_NAME from product as p
inner join
(select PRO_ID from supplier_pricing as sp
inner join
(select PRICING_ID from orders where ORD_DATE>2021-10-05)as o
on sp.PRICING_ID=o.PRICING_ID)as sp_o
on p.PRO_ID = sp_o.PRO_ID group by PRO_ID;

# 6)Find the least expensive product from each category and print the table with category id, name, product name and price of the product.
select cat.CAT_ID, CAT_NAME, PRO_ID, PRO_NAME, min(MIN_PRICE) from category as cat
inner join
(
select prod.PRO_ID, PRO_NAME, CAT_ID, MIN_PRICE from product as prod
inner join
(select PRO_ID, min(supp_price) as MIN_PRICE from supplier_pricing 
group by PRO_ID) as sp
on prod.PRO_ID = sp.PRO_ID)
as pro_sp
on cat.CAT_ID = pro_sp.CAT_ID
group by CAT_ID order by CAT_ID;

# 5)Display the Supplier details who can supply more than one product.
select sup.SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE from supplier as sup
inner join
(select * from supplier_pricing group by SUPP_ID having count(SUPP_ID)>1) as s
on sup.SUPP_ID = s.SUPP_ID group by sup.SUPP_ID;

# 4)Display all the orders along with product name ordered by a customer having Customer_Id=2.
select CUS_NAME,PRO_NAME,p.PRO_ID,ORD_ID,ORD_DATE,ORD_AMOUNT from customer as c, product as p,
orders as o,supplier_pricing as sp
where c.CUS_ID = 2
and c.CUS_ID = o.CUS_ID 
and sp.PRO_ID = p.PRO_ID
and sp.PRICING_ID = o.PRICING_ID;

# 3)Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select count(CUS_GENDER) as TotalNoOfCustomers, CUS_GENDER 
from 
(select CUS_GENDER, CUS_NAME from customer as cus
inner join
(select ORD_ID, CUS_ID from orders where ORD_AMOUNT >= '3000')as o
on cus.CUS_ID = o.CUS_ID
group by cus.CUS_ID)as T
group by CUS_GENDER;

# 9) Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.
call new_procedure();






