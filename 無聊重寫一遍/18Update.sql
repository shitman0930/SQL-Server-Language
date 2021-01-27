--修改 資料內容會變
select * from 課程_備份
--------------
--update 與函數同名 所以就桃紅色

--學分改成4 欄位跟值一起寫 所以沒順序 用where設條件
update 課程_備份
set 學分 = 4, 名稱 = '程式設計'
where 課程編號 = 'CS203'

--選課人數>=3, 將課程學分改為30
--子查詢
update 課程_備份
set 學分 = 30
where 課程編號 in  (select 課程編號,count(*) from 班級
group by 課程編號
having count(*) >= 3)


--把所有被選過的課程學分改為100 合併查詢
update 課程_備份
set 學分 = 100
from 班級 as c inner join 課程_備份 as co on c.課程編號 = co.課程編號

