drop database if exists `order-directory`;

#create Database 'order-directory';
#use order-directory;

create Table supplier(supp_id int primary key,
					  supp_name varchar(50) not null,
                      supp_city varchar(50) not null,
                      supp_phone varchar(50) not null);
                      
create table customer(CUS_ID int primary key,
					  CUS_Name varchar(20) not null,
                      cus_phone varchar(10) not null,
                      cus_city varchar(30) not null,
                      cus_gender char);
                      
create table category(cat_id int primary key,
					  cat_name varchar(20) not null
                      );
                      
create table product(pro_id int primary key,
					pro_name varchar(20) default "Dummy",
                    pro_desc varchar(60),
                    cat_id int,
                    Foreign key(cat_id) references category(Cat_id));
                    
create table supplier_pricing( pricing_id int primary key,
						       pro_id int,
                               supp_id int,
                               supp_price int default 0,
                               foreign key(supp_id) references supplier(supp_id),
                               foreign key(pro_id) references product(pro_id));
create table ordertable (ord_id int primary key,
				   ord_amount int not null,
                   ord_date date not null,
                   cus_id int,
                   pricing_id int,
                   foreign key (cus_id) references customer(cus_id),
                   foreign key(pricing_id) references supplier_pricing(pricing_id));

create table rating(rat_id int primary key,
                    rat_ratstars int not null,
                    ord_id int,
                    foreign key (ord_id) references `order`(ord_id));

INSERT INTO `order-directory`.supplier VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO `order-directory`.supplier VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO `order-directory`.supplier VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO `order-directory`.supplier VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO `order-directory`.supplier VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');

INSERT INTO `order-directory`.customer VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO `order-directory`.customer VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO `order-directory`.customer VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO `order-directory`.customer VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO `order-directory`.customer VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');

INSERT INTO `order-directory`.category VALUES( 1,"BOOKS");
INSERT INTO `order-directory`.category VALUES(2,"GAMES");
INSERT INTO `order-directory`.category VALUES(3,"GROCERIES");
INSERT INTO `order-directory`.category VALUES (4,"ELECTRONICS");
INSERT INTO `order-directory`.category VALUES(5,"CLOTHES");

INSERT INTO `order-directory`.product VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO `order-directory`.product VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO `order-directory`.product VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO `order-directory`.product VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO `order-directory`.product VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO `order-directory`.product VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO `order-directory`.product VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO `order-directory`.supplier_pricing VALUES(12,"Train Your Brain","By Shireen Stephen",1);

INSERT INTO `order-directory`.supplier_pricing VALUES(1,1,2,1500);
INSERT INTO `order-directory`.supplier_pricing VALUES(2,3,5,30000);
INSERT INTO `order-directory`.supplier_pricing VALUES(3,5,1,3000);
INSERT INTO `order-directory`.supplier_pricing VALUES(4,2,3,2500);
INSERT INTO `order-directory`.supplier_pricing VALUES(5,4,1,1000);
INSERT INTO `order-directory`.supplier_pricing VALUES(6,12,2,780);
INSERT INTO `order-directory`.supplier_pricing VALUES(7,12,4,789);
INSERT INTO `order-directory`.supplier_pricing VALUES(8,3,1,31000);
INSERT INTO `order-directory`.supplier_pricing VALUES(9,1,5,1450);
INSERT INTO `order-directory`.supplier_pricing VALUES(10,4,2,999);
INSERT INTO `order-directory`.supplier_pricing VALUES(11,7,3,549);
INSERT INTO `order-directory`.supplier_pricing VALUES(12,7,4,529);
INSERT INTO `order-directory`.supplier_pricing VALUES(13,6,2,105);
INSERT INTO`order-directory`.supplier_pricing VALUES(14,6,1,99);
INSERT INTO `order-directory`.supplier_pricing VALUES(15,2,5,2999);
INSERT INTO `order-directory`.supplier_pricing VALUES(16,5,2,2999);

INSERT INTO `order-directory`.ordertable VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `order-directory`.ordertable VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `order-directory`.ordertable VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `order-directory`.ordertable VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `order-directory`.ordertable VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `order-directory`.ordertable VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `order-directory`.ordertable VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `order-directory`.ordertable VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `order-directory`.ordertable VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `order-directory`.ordertable VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `order-directory`.ordertable VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `order-directory`.ordertable VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `order-directory`.ordertable VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `order-directory`.ordertable VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `order-directory`.ordertable VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `order-directory`.ordertable VALUES(116,99,"2021-09-17",2,14);

INSERT INTO `order-directory`.rating VALUES(1,4,101);
INSERT INTO `order-directory`.rating VALUES(2,3,102);
INSERT INTO `order-directory`.rating VALUES(3,1,103);
INSERT INTO `order-directory`.rating VALUES(4,2,104);
INSERT INTO `order-directory`.rating VALUES(5,4,105);
INSERT INTO `order-directory`.rating VALUES(6,3,106);
INSERT INTO `order-directory`.rating VALUES(7,4,107);
INSERT INTO `order-directory`.rating VALUES(8,4,108);
INSERT INTO `order-directory`.rating VALUES(9,3,109);
INSERT INTO `order-directory`.rating VALUES(10,5,110);
INSERT INTO `order-directory`.rating VALUES(11,3,111);
INSERT INTO `order-directory`.rating VALUES(12,4,112);
INSERT INTO `order-directory`.rating VALUES(13,2,113);
INSERT INTO `order-directory`.rating VALUES(14,1,114);
INSERT INTO `order-directory`.rating VALUES(15,1,115);
INSERT INTO `order-directory`.rating VALUES(16,0,116);
    
#    Display the total number of customers based on gender 
#    who have placed orders of worth at least Rs.3000.

select CUS_GENDER,count(*) from `order-directory`.customer as customer inner join `order-directory`.ordertable as ordertable where customer.CUS_ID = ordertable.CUS_ID and ordertable.ORD_AMOUNT = 3000 group by customer.CUS_GENDER;


#  Display all the orders along with product name ordered by a customer having Customer_Id=2

select ordertable.ORD_ID,ordertable.CUS_ID,product.PRO_NAME from `order-directory`.ordertable as ordertable 
join `order-directory`.product as product where ordertable.CUS_ID = 2 ;



# Display the Supplier details who can supply more than one product.

select supplier_pricing.SUPP_ID,supplier_pricing.SUPP_PRICE from `order-directory`.supplier_pricing  HAVING count(PRO_ID) > 1;

# Q6 Find the least expensive product from each category 
#    and print the table with category id, name, product name and price of the product

Select c.CAT_ID, c.CAT_NAME , Q.PRO_NAME, MIN(Q.supp_price) as Price_of_Product from `order-directory`.category c inner join
(select s.PRO_ID,CAT_id,supp_price,p.PRO_NAME from `order-directory`.supplier_pricing S,`order-directory`.product P 
where s.PRO_ID=p.PRO_ID)as Q  on c.CAT_ID=Q.CAT_ID group by CAT_ID;

# Display the Id and Name of the Product ordered after “2021-10-05”.

select product.PRO_ID,product.PRO_NAME,ordertable.ORD_DATE  from `order-directory`.product as product join `order-directory`.ordertable as ordertable where ordertable.ORD_DATE >= '2021-10-05';

# Display customer name and gender whose names start or end with character 'A'.

select customer.CUS_NAME,customer.CUS_GENDER FROM `order-directory`.customer as customer WHERE customer.CUS_NAME LIKE 'A%' or customer.CUS_NAME LIKE '%A';

# 	Create a stored procedure to display supplier id, name, rating and Type_of_Service.
#       For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”,
#       If rating >2 print “Average Service” else print “Poor Service”.

delimiter &&
CREATE DEFINER=`root`@`localhost` PROCEDURE Display_Supplier_Value_test()
BEGIN
select s.supp_id as Supplier_Id,s.supp_name as Supplier_Name, avg(a.rat_ratstars) as Rating, 
Case
	when avg(a.rat_ratstars)=5 then "Excellent Service"
    when avg(a.rat_ratstars)>4 then "Good Service"
    when avg(a.rat_ratstars)>2 then "Avg Service"
    else "Poor Service" end
    as Type_of_service from `order-directory`.Supplier s inner join  
(select q.ord_id,q.pricing_id,s.Supp_id, q.rat_ratstars from `order-directory`.supplier_pricing s inner join
(select o.pricing_id,r.rat_ratstars,r.ord_id from `order-directory`.rating r,`order-directory`.ordertable o where r.ord_id=o.ord_id) 
as Q on q.pricing_id=s.pricing_id order by ord_id) as A on a.supp_id=s.supp_id group by Supplier_Id;
END &&
call Display_Supplier_Value_test();