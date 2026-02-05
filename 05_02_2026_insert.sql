create table dmart (product_id INT,quantity INT,supplier_name VARCHAR(50),purchase_date DATE);
insert into dmart values(1,10,'swaroop','2026-01-23'),(2,10,'sindhu','2025-06-25'),(3,09,'ramya','2026-03-23'),(4,05,'rashmi','2025-05-25'),(5,03,'manoj','2027-06-01'),(6,07,'kavya','2023-01-23'),(7,08,'swaroop','2026-01-23'),(8,10,'sindhu','2026-01-23'),(9,10,'rashmi','2022-01-23'),(10,10,'laya','2023-01-23');
desc dmart;
select * from dmart;

create table vishal_mart (product_id INT,quantity INT,price DECIMAL(8,2),discount INT);
insert into vishal_mart values(01,10,5890.90,50),(02,100,10000.08,20),(03,02,11000.43,10),(04,60,45000.87,30),(05,70,8000.9,25),(06,89,70000,78),(07,40,10000,30),(08,35,67988,40),(09,100,5890.90,40);
desc vishal_mart;
select * from vishal_mart;
select * from vishal_mart where price > 1000;
select * from vishal_mart where price < 8000;
select product_id,quantity from vishal_mart;
select product_id + quantity from vishal_mart;
