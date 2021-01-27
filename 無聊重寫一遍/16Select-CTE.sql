--把新增的主管資料表改成.... 系統分析 ER圖(主管管理員工)

--CTE(common table expression) 
--用途就是有姓名的教授資料表可以inner join非常多的資料表 
--然後暫存到有姓名的教授資料表 要用的時候 再加新的資料表(班級)呼叫它
--比較方便 可以一直加新的關聯 特色就是with不能單獨執行
with 有姓名的教授資料表
as
(select 教授.*, 員工.姓名 from 員工 
inner join 教授 on 員工.身份證字號 = 教授.身份證字號)

select * from
班級 inner join 有姓名的教授資料表 on 班級.教授編號=有姓名的教授資料表.教授編號

--CTE遞迴(32JS Function3 settimeout() 無窮迴圈)查詢 
--暫存資料表 一層一層下來 主管與屬下 

select *
from 主管

with 主管2
as
(
select 員工字號,姓名, 1 as 層級 from 主管
where  主管字號 is null--1.會找到陳慶新 2. 會找到楊金欉 小龍女... 找完就結束
union all--聯集(全部加起來) 1. 陳慶新 楊金欉 小龍女 2.旗面3個+4個...
select 主管.員工字號,主管.姓名, 層級+1 as 層級 
from 主管 inner join 主管2--加起來才能比
on 主管.主管字號=主管2.員工字號--1.會找到楊金欉 小龍女 2.其他4個...
)

select * from 主管2
order by 層級--用這個查詢