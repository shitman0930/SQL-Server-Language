--order by會跟with ties一起用
--group by 一定是select後面除了聚合函數外的欄位
select * from 學生

order by 生日 desc--逆排 遞減排序 沒寫就預設順排 遞增排序 
--部分相依 count()

select 教授編號,課程編號, count(*) as 幾位學生選--欄位別名
from 班級
group by 教授編號,課程編號
order by 幾位學生選
--order by執行順序在select之後 所以不會報錯(所以下面那些可以用別名)


select 教授編號,課程編號, count(*) as 幾位學生選
from 班級
group by 教授編號,課程編號
order by 幾位學生選 desc
--依選課數做遞減排序

select 教授編號, 課程編號, count(*) as 幾位學生選
from 班級
group by 教授編號, 課程編號
order by 幾位學生選 desc, 教授編號
--學生選課數相同時, 會依教授編號去排序

--撰寫順序
--select
--from
--where
--group by
--having
--order by

--執行順序
--1.from
--2.where
--3.group by
--4.having
--5.select
--6.order by