--merge 依條件決定增刪修

merge 客戶 as c
using 新客戶 as nc--使用新客戶資料表合併到客戶資料表(依客戶增刪修)
on c.客戶編號 = nc.客戶編號
when matched then
     update set 姓名 =nc.姓名, 電話 =nc.電話--merge那方可以不用寫資料表名稱
when not matched then
  insert(客戶編號, 姓名, 電話) values(nc.客戶編號, nc.姓名, nc.電話);--不用into merge那方 要有分號

--若原業績目標>=250,刪除該客戶的業績目標資料
--若原業績目標<250,則將該客戶的業績目標+25
--尚未有業績目標的客戶,則新增該客戶業績目標, 並設定為100
merge 客戶業績 as cs
using 客戶 as c
on cs.客戶編號=c.客戶編號
when matched and cs.業績目標>=250 then
	delete
when matched then
	update set 業績目標 = cs.業績目標+25
when not matched then
	insert (客戶編號,業績目標) values(c.客戶編號,100);
