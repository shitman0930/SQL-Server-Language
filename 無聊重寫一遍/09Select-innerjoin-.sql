--內部(inner)合併查詢 資料表join 加在一起 資料表關聯圖 左資料表 右資料表 主從 關聯性 primary key + forien key
select *
from 班級 inner join 學生 on 班級.學號=學生.學號
--on就是在拉關聯 inner join才有on

select 班級.*,學生.姓名--班級資料表的全部加上學生資料表的姓名欄位
from 班級 inner join 學生 on 班級.學號=學生.學號--資料關聯圖 on就是key連起來

select 班級.教授編號,員工.姓名,班級.學號, 學生.姓名,班級.課程編號,課程.名稱,班級.上課時間,班級.教室
from 班級 inner join 學生 on 班級.學號=學生.學號
inner join 課程 on 班級.課程編號=課程.課程編號
inner join 教授  on 班級.教授編號=教授.教授編號
inner join 員工  on 教授.身份證字號=員工.身份證字號--就加了4個資料表 4個key

--第一種寫法 就改資料表 加個別名 用英文取代一下
select c.教授編號,e.姓名,c.學號, s.姓名,c.課程編號,co.名稱,c.上課時間,c.教室
from          班級 as c --別名加在這
inner join 學生 as s on c.學號=s.學號
inner join 課程 as co on c.課程編號=co.課程編號
inner join 教授 as p on c.教授編號=p.教授編號
inner join 員工 as e on p.身份證字號=e.身份證字號

--第二種 差在from ()整個看成一張表 巢狀結構 一直往外加()資料表 班級-->課程-->教授-->員工
select *
from 員工 as e 
inner join (教授 as p inner join (課程 as co inner join (班級 as c inner join 學生 as s 
on c.學號=s.學號) on c.課程編號=co.課程編號) on c.教授編號=p.教授編號) on e.身份證字號=p.身份證字號

--第三種寫法(自然合併,隱含合併)
select  c.教授編號,e.姓名,c.學號, s.姓名,c.課程編號,co.名稱,c.上課時間,c.教室
from 班級 as c,學生 as s,課程 as co,教授 as p,員工 as e
where c.學號=s.學號 and c.課程編號=co.課程編號 
                    and c.教授編號=p.教授編號 
                    and p.身份證字號=e.身份證字號

