select 
* 
from `bdlelel.tabelalelel`
order by transaction_date;
 
select
 round(avg(transaction_amount), 2) media_t
from `bdlelel.tabelalelel`;

select
date_trunc(transaction_date, week) semana
, round(avg(transaction_amount), 2) media_semanal
from `bdlelel.tabelalelel`
group by 1
order by 1 asc;
 
SELECT
 user_id
 , device_id
 , count(*) contagem_transacoes
 , sum(transaction_amount) valor_total
FROM `voltaic-nebula-374413.bdlelel.tabelalelel`
where has_cbk is true
group by 1, 2
order by 3 desc;

SELECT
 user_id
 , count(*) contagem_transacoes
 , sum(transaction_amount) valor_total
FROM `voltaic-nebula-374413.bdlelel.tabelalelel`
where has_cbk is true
group by 1
order by 2 desc;
 
select
 transaction_id
 , user_id
 , date_trunc(transaction_date, day) dia
 , transaction_amount 
from `bdlelel.tabelalelel`
where user_id = 78262 and has_cbk is true
order by 3 desc;

select
 user_id,
 count(distinct card_number) contagem_cartoes
from `bdlelel.tabelalelel`
group by 1
order by 2 desc;
 
select
 date_trunc(transaction_date, hour) hora
 , user_id
 , count(distinct transaction_id) transacoes
from `bdlelel.tabelalelel`
group by 1, 2
order by 3 desc;
