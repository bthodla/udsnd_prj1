-- SQL queries to generate insights

-- Touches and Sales by Customer
select cu.customer_name, count(t.txn_id) as touches, round(sum(tx.txn_amount),2) as sales
from demo.customer cu inner join demo.contact c on cu.customer_id = c.customer_id
    inner join demo.touch t on c.contact_id = t.contact_id
    inner join demo.txn tx on c.contact_id = tx.contact_id and tx.txn_type = 'SALES'
group by 1
having sum(tx.txn_amount) > 1000000
;

select cu.customer_name, count(t.txn_id) as touches, abs(round(sum(tx.txn_amount),2)) as redemptions
from demo.customer cu inner join demo.contact c on cu.customer_id = c.customer_id
                      inner join demo.touch t on c.contact_id = t.contact_id
                      inner join demo.txn tx on c.contact_id = tx.contact_id and tx.txn_type = 'REDEMPTIONS'
group by 1
having abs(sum(tx.txn_amount)) > 1000000
order by 2 desc
;