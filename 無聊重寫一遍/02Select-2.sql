--distinct 課程有不同的學分 每種值只會出現一次(不會有重複值 用在重複性高的時候)
select distinct 學分
from 課程

--top 預設用primarykey排序
select *
from 學生

select top 3 *
from 學生

select top 2 with ties *
--值有相同大小會列出來 一定跟order by一起用
from 課程
order by 學分--用學分排序(由小到大 遞增)