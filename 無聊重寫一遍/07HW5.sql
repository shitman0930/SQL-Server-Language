--1 找出女員工
select *
from 員工
where 稱呼='小姐'

--2 出生在1968(含)年以後
select *
from 員工
where 出生日期>='1968/1/1'

--3 送貨城市為台北市及高雄市
select *
from 訂貨主檔
where 送貨地址 like '台北市%' or 送貨地址 like '高雄市%'

--4 庫存量最多的前6名
select top 6 with ties *
from　產品資料
order by 庫存量 desc

--5 訂單號碼10847包含哪些產品
select 產品編號
from 訂貨明細
where 訂單號碼='10847'

--6 找出訂單中包含5種以上的產品
select 訂單號碼, count(*) as 商品數量
from 訂貨明細
group by 訂單號碼
having count(*)>=5

--7 類別編號為2的產品平均單價
select 產品編號,產品 ,avg(單價)
from 產品資料
where 類別編號=2
group by 產品編號,產品

--8 庫存量小於安全存量且未進行採購的產品
select *
from 產品資料
where 庫存量<安全存量 and 已訂購量=0

--9 公司名稱包含一堆字(9個條件) [裡面就是用or連接] 其實Select-3也沒寫= =
select *
from 客戶
where 公司名稱 like '%[川生捷天中社材業立]%'

--10 訂購產品數量介於20-30件的紀錄
select *
from 訂貨明細
where 數量 between 20 and 30

--11 找出尚未有送貨日期的資料
select *
from 訂貨主檔
where 送貨日期 is null

--12 訂單號碼10263所有產品的價格小計
select *, 單價*數量*(1-折扣) as 小計
from 訂貨明細
where 訂單號碼='10263'

--13  統計每個供應商提供幾樣產品
select 供應商編號, count(*) as 產品種類數
from 產品資料
group by 供應商編號

--14 統計每一位客戶被每一位員工服務的次數
select 客戶編號,員工編號,count(*) as 服務次數
from 訂貨主檔
group by 客戶編號,員工編號

--15 各項商品的平均單價與平均銷售量且只列出平均銷售量大於10的資料 並由小到大排序
select 產品編號,avg(單價*(1-折扣)) as 平均單價,avg(數量) as 平均銷售量
from 訂貨明細
group by 產品編號
having avg(數量)>10
order by 產品編號