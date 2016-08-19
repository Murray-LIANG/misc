select s_id, extract(month from s_date) as s_mon, sum(s_amount) as mon_amount
from sales
group by s_id, s_mon
order by s_id, s_mon;


select s_id,
    sum(case when s_mon=1 then mon_amount else 0 end) as mon_1,
    sum(case when s_mon=2 then mon_amount else 0 end) as mon_2,
    sum(case when s_mon=3 then mon_amount else 0 end) as mon_3,
    sum(case when s_mon=4 then mon_amount else 0 end) as mon_4,
    sum(case when s_mon=5 then mon_amount else 0 end) as mon_5,
    sum(case when s_mon=6 then mon_amount else 0 end) as mon_6,
    sum(case when s_mon=7 then mon_amount else 0 end) as mon_7,
    sum(case when s_mon=8 then mon_amount else 0 end) as mon_8,
    sum(case when s_mon=9 then mon_amount else 0 end) as mon_9,
    sum(case when s_mon=10 then mon_amount else 0 end) as mon_10,
    sum(case when s_mon=11 then mon_amount else 0 end) as mon_11,
    sum(case when s_mon=12 then mon_amount else 0 end) as mon_12
from sales_1
group by s_id;