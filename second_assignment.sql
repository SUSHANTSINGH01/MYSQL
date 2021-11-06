select customer.cust_name, sale.item_id from customer, sale  where sale.bill_date='2021-10-24' and customer.cust_id=sale.cust_id;

select item.price,sale.qty_sold,(item.price*sale.qty_sold) total from item, sale where item.item_id=sale.item_id;

select customer.cust_id,customer.cust_name from customer, sale, item  where item.price>200 and customer.cust_id=sale.cust_id and item.item_id=sale.item_id;

select customer.cust_id,customer.cust_name, sale.qty_sold from customer, sale where customer.cust_id=sale.cust_id;

select sale.cust_id, item.item_name from sale, item where sale.cust_id=92 and sale.item_id=item.item_id;

select item.item_id,item.item_name,item.price from item, sale where sale.bill_date between '2021-10-21' and '2021-10-25' and sale.item_id=item.item_id;
