select m_id, c_id,
    sum(case when date '2015-02-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_01,
    sum(case when date '2015-03-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_02,
    sum(case when date '2015-04-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_03,
    sum(case when date '2015-05-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_04,
    sum(case when date '2015-06-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_05,
    sum(case when date '2015-07-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_06,
    sum(case when date '2015-08-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_07,
    sum(case when date '2015-09-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_08,
    sum(case when date '2015-10-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_09,
    sum(case when date '2015-11-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_10,
    sum(case when date '2015-12-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_11,
    sum(case when date '2016-01-01' < (s_date + interval '12 months') then 1 else 0 end) as m_2015_12
from cards
group by m_id, c_id;
