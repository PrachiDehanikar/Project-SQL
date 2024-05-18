----------What are the client numbers, ages, and card categories of customers who have an annual fee greater than $100

select * from credit_card

select * from customer

select c.client_num,c.customer_age,cc.annual_fees,cc.card_category from credit_card as cc
inner join customer as c
on cc.client_num=c.client_num
where annual_fees>100

--------Getting  the genders and their respective average ages where the average age within each gender group is greater than the overall average age of all customers?

select gender,avg(customer_age) from customer
group by gender
HAVING AVG(customer_age) > (
    SELECT AVG(customer_age)
    FROM customer
	)
	
