-- exploratory data analysis

--1) rata-rata umur customer berdasarkan marital status

---a) cek null values di kolom marital status
SELECT marital_status, count(*)
FROM kalbe_customers kc
GROUP BY marital_status
ORDER BY count(*) DESC; -- terdapat 3 null values

---b) hitung rata-rata umur tanpa null values
select marital_status, round(avg(age), 1) as avg_age_by_marital_status
from kalbe_customers kc 
where marital_status is not NULL
group by 1
order by 1; -- married = 43, single = 29.4

--2) rata-rata umur customer berdasarkan gender

---a) cek null values di kolom marital gender
SELECT gender, count(*)
FROM kalbe_customers kc
GROUP BY 1
ORDER BY count(*) DESC; -- tidak ada null values

---b) hitung rata-rata umur tanpa null values
select gender, round(avg(age), 1) as avg_age_by_gender
from kalbe_customers kc 
group by 1
order by 1; -- wanita = 40.3, single = 39.1


--3) store dengan total quantity terbanyak
select * from kalbe_transactions kt 
limit 2

select ks.store_id, sum(kt2.qty) as total_quantity
from kalbe_stores ks 
join kalbe_transactions kt2 
on ks.store_id = kt2.store_id 
group by 1
order by 2 desc 
limit 1; -- store_id = 9 dengan total quantity terbanyak 1439


--4) produk terlaris dengan total amount terbanyak

select kp.product_id, sum(kt.total_amount) as sum_total_amount
from kalbe_products kp 
join kalbe_transactions kt 
on kp.product_id = kt.product_id 
group by 1
order by 2 desc 
limit 1; -- produk terlaris adl P10 dg total amount 27,615,000

