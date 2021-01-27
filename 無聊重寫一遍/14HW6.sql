--1 1996/7 指定為郵寄 價錢小計四捨五入的訂貨明細
select o.訂單號碼,pt.類別名稱,p.產品,od.單價,od.數量,round(od.單價*od.數量*(1-od.折扣),0) as 小計,c.客戶編號,c.公司名稱,o.收貨人,o.訂單日期,e.姓名,t.貨運公司名稱 as 送貨方式,s.供應商
from 訂貨主檔 as o inner join 訂貨明細 as od on o.訂單號碼 = od.訂單號碼
inner join 產品資料 as p on p.產品編號=od.產品編號
inner join 產品類別 as pt on pt.類別編號=p.類別編號
inner join 客戶 as c on c.客戶編號=o.客戶編號
inner join 供應商 as s on s.供應商編號= p.供應商編號
inner join 貨運公司 as t on t.貨運公司編號=o.送貨方式
inner join 員工 as e on e.員工編號=o.員工編號
where o.訂單日期 between '1996/7/1' and '1996/7/31'
and t.貨運公司編號='2'

--2 ANTON歷年訂購的產品與數量
select c.客戶編號,c.連絡人,p.產品,count(*) as 數量
from 訂貨主檔 as o inner join 訂貨明細 as od on o.訂單號碼 = od.訂單號碼
inner join 產品資料 as p on p.產品編號=od.產品編號
inner join 客戶 as c on c.客戶編號=o.客戶編號
where o.客戶編號='ANTON'
group by c.客戶編號,c.連絡人,p.產品

--3 那些客戶沒下過訂單
select * from 客戶
where not exists
(select * from 訂貨主檔
 where 客戶.客戶編號=訂貨主檔.客戶編號)

--4 有哪些員工處理過訂單
select e.員工編號,e.姓名,e.職稱,e.內部分機號碼,e.附註 from 員工 as e
where e.員工編號 in
(select 員工編號 from 訂貨主檔)

--5 1998年被訂購過的所有產品

--合併查詢
select distinct p.*
from 產品資料 as p inner join 訂貨明細 as od on p.產品編號=od.產品編號
                   inner join 訂貨主檔 as o on o.訂單號碼=od.訂單號碼
where o.訂單日期 between '1998/1/1' and '1998/12/31'
order by p.產品編號

--子查詢
select * from 產品資料
where 產品編號 in
(select 產品編號 from 訂貨明細----所有被訂購過的產品
where 訂單號碼 in (select 訂單號碼 from 訂貨主檔 as o where o.訂單日期 between '1998/1/1' and '1998/12/31'))--1998年
order by 產品編號






