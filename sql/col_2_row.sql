drop table col_2_row;

create table col_2_row (
    m_id varchar(80),
    j_count varchar(80),
    j_amount varchar(80),
    d_count varchar(80),
    d_amount varchar(80)
);

insert into col_2_row values ('m_1', 'j_c_1', 'j_a_1', 'd_c_1', 'd_a_1');
insert into col_2_row values ('m_2', 'j_c_2', 'j_a_2', 'd_c_2', 'd_a_2');
insert into col_2_row values ('m_3', 'j_c_3', 'j_a_3', 'd_c_3', 'd_a_3');
insert into col_2_row values ('m_4', 'j_c_4', 'j_a_4', 'd_c_4', 'd_a_4');
insert into col_2_row values ('m_5', 'j_c_5', 'j_a_5', 'd_c_5', 'd_a_5');


select tmp.m_id, tmp.m_type, tmp.count, tmp.amount from
    (select m_id, 'Jie' as m_type, j_count as count, j_amount as amount
    from col_2_row
    union
    select m_id, 'Dai' as m_type, d_count as count, d_amount as amount
    from col_2_row ) as tmp
order by tmp.m_id, tmp.m_type;
