--外部合併查詢 outer join 可看出某資料與某資料的關係(?)

select * --可以看出哪個課程沒被選
from 班級 as c right join 課程 as co on c.課程編號=co.課程編號
where c.課程編號 is null

--可以看出哪個學生沒選課
select s.*
from 學生 as s left join 班級 as c on c.學號=s.學號
where c.學號 is null


select *--可以看出不是教授的員工 用right會變成不是員工的教授 無意義
from 員工 as e left join 教授 as p on e.身份證字號=p.身份證字號
where p.身份證字號 is null



--full join 全部的null會顯示出來
select *
from 學生 as s full join 班級 as c on c.學號=s.學號

select *
from 員工 as e full join 教授 as p on e.身份證字號=p.身份證字號

--cross join 這就卡斯基運算(access有講 兩個資料表相乘) 拿來看排列組合的
select *
from 員工 cross join 教授


