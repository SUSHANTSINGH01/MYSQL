// List all the bills for the current date with the customer names and item numbers.

select customer.cust_name, sale.item_id from customer, sale  where sale.bill_date='2021-10-24' and customer.cust_id=sale.cust_id;

// List the total Bill details with the quantity sold, price of the item and the final amount.

select item.price,sale.qty_sold,(item.price*sale.qty_sold) total from item, sale where item.item_id=sale.item_id;
  
// List the details of the customer who have bought a product which has a price>200.

select customer.cust_id,customer.cust_name from customer, sale, item  where item.price>200 and customer.cust_id=sale.cust_id and item.item_id=sale.item_id;

// Give a count of how many products have been bought by each customer.

select customer.cust_id,customer.cust_name, sale.qty_sold from customer, sale where customer.cust_id=sale.cust_id;

// Give a list of products bought by a customer having cust_id as 5.

select item.item_id,item.item_name,item.price from item, sale where sale.bill_date between '2021-10-21' and '2021-10-25' and sale.item_id=item.item_id;
