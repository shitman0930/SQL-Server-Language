--集合運算Set 能用合併運算就不要用集合運算

--聯集union(學生跟員工加起來減掉重複的 所以少了三個)
select 姓名 from 學生
union
select 姓名 from 員工

select 姓名 from 學生--會多三個 就(是學生也是員工)也加進去
union all
select 姓名 from 員工

--交集intersect(是學生也是員工就會出現三個 資料型別要相同)
select 姓名 from 學生
intersect
select 姓名 from 員工

--差集except(集合-集合 重複的刪掉(distinct))
select 學號 from 學生--沒有選課的學生
except
select distinct 學號 from 班級

--就沒東西 因為選的學生都有選課
select distinct 學號 from 班級
except
select 學號 from 學生

--是學生不是員工
select 姓名 from 學生
except
select 姓名 from 員工

--是員工不是學生
select 姓名 from 員工
except
select 姓名 from 學生