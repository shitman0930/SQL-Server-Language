--with rollup 小計
select 課程編號, 教授編號, count(*) as 選課人數
from 班級
group by 課程編號, 教授編號 with rollup
--編號順序不能變 變了就變成這教授有幾個學生選
--幾門課有幾個學生選 多一個Null欄位 
--主要是會小計這門課總共幾個學生選 最後欄位是班級資料合計

--with cube 總計
select 課程編號, 教授編號, count(*) as 選課人數
from 班級
group by 課程編號, 教授編號 with cube
--這教授總共多少學生選跟這門課多少學生選 Null欄位就總計 

--group by grouping sets 可以自己編總計
select 課程編號,教授編號,count(*) as 選課人數
from 班級
group by GROUPING SETS
(
	課程編號,--這教授幾個人選
	教授編號,--這課程幾個人選
	(課程編號,教授編號),--這教授開了幾門課幾個人選
	()--總計
)
