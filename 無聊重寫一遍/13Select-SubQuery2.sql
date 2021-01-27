--運用在子查詢的運算子
--exists 2個資料結果互相存在
select * from 學生

select * from 班級 where 課程編號='CS222'

----能用合併查詢就不要用子查詢
select * 
from 學生 inner join 班級 
on 學生.學號=班級.學號


----exists 學生存在於班級資料表 where就條件阿~
select * 
from 學生 where exists
(select * from 班級 
where  課程編號='CS222' and 學生.學號=班級.學號)


--in 傳入多個值
select 學生.*
from 學生
where 學號 in
(select 學號 from 班級 where 課程編號='CS222')

--221-S教室裡的所有學生??
select 學生.*
from 學生
where 學號 in
(select 學號 from 班級 where 教室='221-S')

--查詢學生周杰輪所選課的課程資料
--子查詢
--in
select * from 課程
where 課程編號 in
(select 課程編號 from 班級
where 學號 in
(select 學號 from 學生 
where 姓名='周杰輪'))

--exists
select * from 課程
where exists
(select * from 班級
where exists
(select * from 學生 
where 姓名='周杰輪' and 課程.課程編號=班級.課程編號 and 學生.學號=班級.學號))


--合併查詢 看得更清楚
select 課程.* from 課程,班級,學生
where 姓名='周杰輪' and 課程.課程編號=班級.課程編號 and 學生.學號=班級.學號

--查詢學生周杰輪沒選課的課程資料
--子查詢
--in
select * from 課程
where 課程編號 not in
(select 課程編號 from 班級
where 學號 in
(select 學號 from 學生 
where 姓名='周杰輪'))

--exists
select * from 課程
where not exists
(select * from 班級
where exists
(select * from 學生 
where 姓名='周杰輪' and 課程.課程編號=班級.課程編號 and 學生.學號=班級.學號))


--合併查詢
select 課程.* from 課程
except
select 課程.* from 課程,班級,學生
where 姓名='周杰輪' and 課程.課程編號=班級.課程編號 and 學生.學號=班級.學號


-------------------------
--all 比全部的人薪水高
select *
from 員工
where 薪水>=all
(select 薪水
from 員工
where 城市='台北')


--some或any(T-SQL) 比其中一個條件高
select *
from 員工
where 薪水>=some
(select 薪水
from 員工
where 城市='台北')


