--就拼積木 把一桶積木拼成無限種可能的組合
select 姓名, 性別, 學號  from 學生

select *  from 學生
--別名 as
select 姓名 as [name], 生日, getdate() as 今天日期
--函數 取得今天的日期 沒有資行料名稱 [name] 沒加中括號可能會用到指令
 from 學生
 
 --運算式表達
 --字串運算
 select 姓名, 城市 + 街道 as 居住地
 --+號表示是在一起的 不是分開的欄位
 from 員工

 --數值運算
 select 姓名, 薪水, 薪水 - 保險 - 扣稅 as 淨所得
 from 員工

 --日期時間
 select 姓名, 生日, datediff(year,生日,getdate())  as 年齡
 --日期區間datediff 三個參數 把今天日期減掉生日以年(可以是年月 year month)表示
 from 學生
 --Null可以放在任何資料型別(例如孫燕之的生日是Null會增加處理成本) datediff()跟getdate()一定要日期時間 換數字或字串一定出錯