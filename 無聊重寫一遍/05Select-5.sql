--group by
select distinct 學分
from 課程

select 學分
from 課程
group by 學分--同一群的分類
--跟distinct(去掉不同的值)結果一樣 實際意思不一樣

select 性別
from 學生
group by 性別
--會出現男女

select 性別,count(*)
from 學生
group by 性別
--欄位跟聚合函數一起的時候 一定要用group by才不會出錯
--結果就是有多少男的跟女的(用性別來計算有幾筆資料)
--group by很常跟聚合函數一起用

select 學號,count(*) as 學生選課數
from 班級
group by 學號
--學生選了幾門課(用學號來計算有幾筆資料)

select 課程編號,count(*) as 幾位學生選
from 班級
group by 課程編號
--這門課有幾位學生選(用課程編號....跟上面一樣)

select 教授編號,count(*) as 幾位學生選
from 班級
group by 教授編號
--幾位學生選了這位教授

select 教授編號,課程編號,count(*) as 幾位學生選
from 班級
group by 教授編號,課程編號
--這位教授開的課有幾位學生選
--(依教授編號跟課程編號統計有幾筆資料) 
--跟上面搭配可以看數據


select 城市, sum(薪水) as 薪水總額, avg(薪水) as 平均薪水, 
max(薪水) as 最高薪水,min(薪水) as 最低薪水,
max(薪水)-min(薪水) as 極端值差,
avg(薪水)-min(薪水) as 低於均薪差,
max(薪水)-avg(薪水) as 高於均薪差,
count(*) as 員工人數
from 員工
group by 城市
--每個城市有多少員工 他們的薪水

--------------------------------------------
--有條件的

select 學號,count(*) as 學生選課數
from 班級
where 學號='S005'
group by 學號
--執行順序不一樣 
--where只能用一般欄位 不可以用別名跟聚合函數 



--having 一定跟group by和聚合函數一起用 
select 學號,count(*) as 學生選課數
from 班級
group by 學號
having count(*)<3
--選課未滿3門課的學生

select 學號,count(*) as 學生選課數
from 班級
where 學號='S004'
group by 學號
having count(*)<3
--可以跟where一起用 
--結果就是學號S004且未選滿3門課才會出現結果

select 城市, sum(薪水) as 薪水總額, avg(薪水) as 平均薪水, 
max(薪水) as 最高薪水,min(薪水) as 最低薪水,
max(薪水)-min(薪水) as 極端值差,
avg(薪水)-min(薪水) as 低於均薪差,
max(薪水)-avg(薪水) as 高於均薪差,
count(*) as 員工人數
from 員工
group by 城市
having avg(薪水)<=60000
--平均薪水小於或等於60000的城市有哪些