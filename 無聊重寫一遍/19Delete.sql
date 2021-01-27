--delete 也是用where設定條件
delete from 學生
where 學號 = 'S016'

delete from 學生
where 姓名 = '岳不群'


---把資料刪掉 但資料表還在 要用drop才會刪掉
delete from 課程_備份

truncate table 課程_備份--命令完成 而不是資料受影響 不會有紀錄