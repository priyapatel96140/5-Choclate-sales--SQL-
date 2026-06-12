## Easy Questions
## Q1) Select everything from sales table
select * from sales;
## Q2) Show SaleDate, Amount, Customers columns from sales table
select SaleDate, Amount, Customers from sales;
## Q3) Add a calculated column "Amount / boxes" 
Select SaleDate, Amount, Boxes, Amount / boxes  from sales;
## Q4) Naming "Amount/boxes" as "Amount per box"
Select SaleDate, Amount, Boxes, Amount / boxes as 'Amount per box'  from sales;
## Q5) Show data where sales amount > 10000 
select * from sales
where amount > 10000;
## Q6) Show sales data where amount is greater than 10,000 by descending order
select * from sales
where amount > 10000
order by amount desc;
## Q7) Show sales data where geography is g1 by product ID & descending order of amounts
select * from sales
where geoid='g1'
order by PID, Amount desc;
## Q8) Show data where amount is greater than 10000 & sales data >2022-01-01 
Select * from sales
where amount > 10000 and SaleDate >= '2022-01-01';
## Q9) Show the data with amount greater than 10000 & year 2022
select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;
## Q10) Show data where number of boxes are greater than 0 & less than 50
select * from sales
where boxes >0 and boxes <=50;
## Q11) show data from people table where team is either delish or jucies
select * from people
where team = 'Delish' or team = 'Jucies';
## Q12) Select the data from people table where salesperson name starts with B
select * from people
where salesperson like 'B%';







