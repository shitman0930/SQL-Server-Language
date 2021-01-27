--子查詢(SubQuery) 通常比合併好寫 但效能通常比較差
--查張無忌的選課資料 班級資料沒姓名只有學號 從另外資料表找
--()裡面就是子查詢  撈資料庫效能調校(1-3000倍)
select * 
from 班級
where 學號 = (select 學號 
from 學生 
where 姓名 ='張無忌')

--上面的改成合併查詢(效能不好就會這樣寫)
select 班級.*--老師寫的
from 班級 inner join 學生 on 班級.學號 = 學生.學號
where 姓名='張無忌'


--找員工薪水>=平均薪資 實際上看成兩個資料表 沒欄位就不用group by
select *
from 員工
where 薪水 >=(select avg(薪水)
from 員工)
--找員工薪水>=平均薪資 用合併查詢的寫法 取別名 
--group by 一定是select後面除了聚合函數外的欄位 != 不等於自己
--也能用cross join 結果會一樣

select  a.身份證字號,a.姓名,a.城市,a.街道,a.薪水,a.保險,a.扣稅,avg(b.薪水)
from 員工 as a inner join  員工 as b
on a.身份證字號!=b.身份證字號--!=我要跟自己以外的比
group by  a.身份證字號,a.姓名,a.城市,a.街道,a.薪水,a.保險,a.扣稅
having a.薪水>=avg(b.薪水)

select a.身份證字號,a.姓名,a.城市,a.街道,a.薪水,a.保險,a.扣稅, avg(b.薪水)
from 員工 as a cross join  員工 as b
group by a.身份證字號,a.姓名,a.城市,a.街道,a.薪水,a.保險,a.扣稅
having a.薪水>=avg(b.薪水)

--查詢哪幾位員工是教授
--利用子查詢寫法 in就能傳入多個值 不能用=
select *
from 員工
where 身份證字號 in (
select 身份證字號
from 教授)
--利用合併查詢寫法 看都看得懂 自己拼積木就會缺一塊~
select e.*
from 員工 as e inner join 教授 as p
on e.身份證字號=p.身份證字號