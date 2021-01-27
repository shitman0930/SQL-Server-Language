--offset order by會自動從左邊排序
select 身份證字號, 姓名, 薪水 
from 員工
order by 身份證字號
offset 3 rows--前面3個rows去掉

--fetch next 
select 身份證字號, 姓名, 薪水 
from 員工
order by 身份證字號
offset 3 rows
fetch next 2 rows only--只抓後面6個rows的前面2個 類似可以用top抓前幾個

--null概念與資料轉換 isnull(a, b) 布林值 true就填入b
select * from 員工
where 電話 is null

select 姓名, isnull(電話, '尚未填寫') from 員工

--日期時間不能變字串
select 學號, 姓名, isnull(生日, '尚未填寫') from 學生

--資料型別轉換 cast( as varchar) convert as varchar就轉成字串

select cast(薪水 as varchar) from 員工
select cast(生日 as varchar) from 學生
--格式會怪怪的
select 學號,姓名,isnull(cast(生日 as varchar),'尚未填寫') from 學生

--用這個就正常 要學會看技術文件 23是代碼
select 學號, 姓名, isnull(convert(nvarchar, 生日, 23), '尚未填寫') 
from 學生
