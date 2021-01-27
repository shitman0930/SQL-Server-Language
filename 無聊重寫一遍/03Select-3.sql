--where敘述
--有條件的資料篩選(比較運算或邏輯運算或兩者皆有)
select *
from 學生
where 學號='S005'

select *
from 學生
where 姓名='江小魚'


select *
from 員工
where 薪水>=50000

select *
from 學生
where 生日>='1991/1/1'
-----------------------------
--like運算子
select *
from 學生
where 姓名 like '陳%'
--0到n個字元 %陳%意思是包含陳這個字就會秀出來

select *
from 教授
where 科系 like 'C%'

select *
from 教授
where 科系 like 'C_'
--代表後面只有1個字元

select *
from 教授
where 科系 like 'C__'
--代表後面只有2個字元

--常規表達式(expression, 驗證器格式也差不多, MVC model也會用到)
select *
from 教授
where 科系 like '[a-c]%'
--代表a或b或c

select *
from 教授
where 科系 like '[dftmhki]%'
--代表dftmhki任一字元

select *
from 教授
where 科系 like '[a-es-z]%'
--就a到e s到z

select *
from 教授
where 科系 like '[^a-c]%'
--^就是not 除了a到c以外(d到z)的會出現

select *
from 班級
where 教室 like '2_%-_'
--2開頭 _後面一定有一個字 %沒第2個字也沒差 然後一定要- -後面只有一個字 出現結果就是221-S


--escape(逸出字元 任何符號都可以)
select *
from 教授
where 職稱 like '%*%%' escape '*'
--找出教授職稱有%符號的
--------------------------------------
--between and
select *
from 員工
where 薪水>=20000 and 薪水<=50000
--邏輯運算+比較運算

select *
from 員工
where 薪水 between 20000 and 50000
--等於上面那個

select *
from 學生
where 生日>='1990/1/1' and 生日<='1995/12/31'

select *
from 學生
where 生日 between '1990/1/1' and '1995/12/31'

--------------------------
--in
select *
from 課程
where 課程編號='CS101' or 課程編號='CS213' or 課程編號='CS203'
or 課程編號='CS999'

select *
from 課程
where 課程編號 in ('CS101','CS213','CS203','CS999')