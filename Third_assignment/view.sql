create view sushant__92 as(select sale.bill_no, sale.bill_date,customer.cust_id, item.item_id, price, qty_sold from sale,customer,item where 
customer.cust_id = sale.cust_id and  sale.item_id = item.item_id)

select *from sushant__92;

create view custom92 as (select sale.bill_date,item.item_name FROM sale, item where item.item_id=sale.item_id and sale.bill_date
between '2021-10-21' and '2021-10-27') 
select *from custom92;
