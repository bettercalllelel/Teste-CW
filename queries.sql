--Query 1

select 
 * 
from `bdlelel.tabelalelel`
order by transaction_date;

--Query 2
select
 round(avg(transaction_amount), 2) media_t
from `bdlelel.tabelalelel`;

--Query 3
select
date_trunc(transaction_date, week) semana
, round(avg(transaction_amount), 2) media_semanal
from `bdlelel.tabelalelel`
group by 1
order by 1 asc;

--Query 4
select
 user_id
 , device_id
 , count(*) contagem_transacoes
 , sum(transaction_amount) valor_total
FROM `voltaic-nebula-374413.bdlelel.tabelalelel`
where has_cbk is true
group by 1, 2
order by 3 desc;

--Query 5
select
 user_id
 , count(*) contagem_transacoes
 , sum(transaction_amount) valor_total
FROM `voltaic-nebula-374413.bdlelel.tabelalelel`
where has_cbk is true
group by 1
order by 2 desc;

--Query 6
select
 transaction_id
 , user_id
 , date_trunc(transaction_date, day) dia
 , transaction_amount 
from `bdlelel.tabelalelel`
where user_id = 78262 and has_cbk is true
order by 3 desc;

--Query 7
select
 user_id,
 count(distinct card_number) contagem_cartoes
from `bdlelel.tabelalelel`
group by 1
order by 2 desc;

--Query 8
select
 date_trunc(transaction_date, hour) hora
 , user_id
 , count(distinct transaction_id) transacoes
from `bdlelel.tabelalelel`
group by 1, 2
order by 3 desc;
