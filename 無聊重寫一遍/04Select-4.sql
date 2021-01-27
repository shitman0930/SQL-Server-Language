--聚合函數(Aggregate Function)
--count
select count(學號) as 學生人數
from 學生

select count(*) as 學生人數
from 學生
----計算學生資料表有幾個學號 *可以連null那格也算進去比較不會出錯

--------------------
--sum 加總
select sum(薪水) as 薪水總額
from 員工

--avg
select avg(薪水) as 平均薪水
from 員工

--max
select max(薪水) as 最高薪水
from 員工

--min
select min(薪水) as 最低薪水
from 員工

--上面的合在一起~
select sum(薪水) as 薪水總額, avg(薪水) as 平均薪水, 
max(薪水) as 最高薪水,min(薪水) as 最低薪水,count(*) as 員工人數
from 員工

--合在一起又做比較運算
select sum(薪水) as 薪水總額, avg(薪水) as 平均薪水, 
max(薪水) as 最高薪水,min(薪水) as 最低薪水,
max(薪水)-min(薪水) as 極端值差,
avg(薪水)-min(薪水) as 低於均薪差,
max(薪水)-avg(薪水) as 高於均薪差,
count(*) as 員工人數
from 員工