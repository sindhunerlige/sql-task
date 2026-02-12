CREATE TABLE store_a (item_id INT,quantity INT,product_name VARCHAR(100),category VARCHAR(50),price DECIMAL(10,2),store_location VARCHAR(100),manager_name VARCHAR(50),entry_date DATE);
insert into store_a values(1,20,'Rice','Groceries',2000.0,'Banglore','sindhu','2026-07-23');
insert into store_a values(2,30,'Wheat Flour','Groceries',3000.0,'Mysore','swaroop','2025-07-23');
insert into store_a values(3,40,'Shampoo','Packaged',4000.0,'Mysore','Rashmi','2026-05-23');
insert into store_a values(4,50,'Chips','Snacks',40,'Mysore','Ramya','2026-05-23');
insert into store_a values(5,50,'Chocolate','Snacks',50,'Davangere','Sindhu','2024-05-23');
insert into store_a values(6,50,'Salt','Groceries',80,'Chitradurga','Kavya','2023-05-23');
insert into store_a values(7,70,'Floor Cleaner','Groceries',800,'Mandya','Kavya','2023-05-23');
select * from store_a;

CREATE TABLE store_b (item_id INT,quantity INT,product_name VARCHAR(100),brand VARCHAR(50),price DECIMAL(10,2),gst_percentage INT,updated_date DATE);
insert into store_b values(1,10,'Rice','Basumati',6000.0,50,'2023-05-23');
insert into store_b values(2,20,'Cooking Oil','Gold Winner',200.7,20,'2023-07-11');
insert into store_b values(3,20,'Wheat Flour','Ashirvad',200.7,20,'2022-07-11');
insert into store_b values(4,30,'Sugar','Ashirvad',200.7,25,'2025-07-11');
insert into store_b values(5,40,'Coffee Powder','Malgudi',500.7,25,'2025-07-11');
insert into store_b values(6,50,'Floor Cleaner','Lysol',500.7,25,'2024-07-11');

CREATE TABLE warehouse (item_id INT,quantity INT,product_name VARCHAR(100),supplier_name VARCHAR(100),stock_status VARCHAR(30),manufacturing_date DATE,expiry_date DATE,
    warehouse_location VARCHAR(100));
    
insert into warehouse values(1, 150, 'Rice', 'ABC Traders', 'In Stock', '2026-01-05', '2026-12-31', 'Bangalore');
insert into warehouse values(2, 80, 'Sugar', 'Fresh Foods Ltd', 'In Stock', '2026-01-10', '2027-01-09', 'Mysore');
insert into warehouse values(3, 60, 'Tea Powder', 'Tata Consumer', 'Low Stock', '2026-01-15', '2027-01-14', 'Davangere');
insert into warehouse values(4, 40, 'Soap', 'Hindustan Unilever', 'In Stock', '2026-01-20', '2028-01-19', 'chitradurga');
insert into warehouse values(5, 25, 'Shampoo', 'Procter & Gamble', 'Low Stock', '2026-01-25', '2028-01-24', 'Mangalore');
insert into warehouse values(6, 100, 'Detergent Powder', 'Nirma Ltd', 'In Stock', '2026-02-01', '2027-02-01', 'Belgaum');
insert into warehouse values(7, 30, 'Biscuits', 'Britannia', 'Out of Stock', '2026-01-12', '2026-07-12', 'Davanagere');
select * from warehouse;
select * from warehouse w inner join store_b s where w.product_name=s .product_name;
select *from warehouse  w inner Join store_b s on w.product_name = s.product_name inner join store_a a on w.product_name = a.product_name;
select * from warehouse cross join store_b,store_a;
select * from store_a s left join store_b store_b on s.product_name=store_b.product_name;
select * from store_a s Right join store_b store_b on s.product_name=store_b.product_name;


