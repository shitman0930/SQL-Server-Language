create database 教務系統2
go
--換資料庫用use
use 教務系統2
--table就資料表 學號 char(4)4個字元固定長度 varchar變動長度 超過都截斷 效能有差 
--姓名 unicode nvarchar(20) 全形半形都1個字元 1bit = 1個半形字 
--資料表右鍵設計
create table 學生(
	學號 char(4) primary key, 
	姓名 nvarchar(20) not null,
	性別 bit not null,
	電話 varchar(20),
	生日 datetime
)

--------
create table 課程(
    課程編號 char(5) primary key,
	名稱 nvarchar(30) not null,
	學分 smallint not null,
)
---default值與計算欄位 default值可以不用寫not null
create table 員工(
  身分證字號 char(10) primary key,
  姓名 nvarchar(20) not null,
  城市 nvarchar(5),
  街道 nvarchar(30),
  電話 varchar(20) not null,
  薪水 money default 25000,
  保險 money not null,
  扣稅 as 薪水*0.05,
  淨所得  as 薪水-保險-薪水*0.05
)

--identity 唯一識別值(自動編號) 刪除能會繼續下一編號
create table 教授(
     流水號 bigint identity,--若無起始值,則起始值為1;若無增量值,則增量值為1
	 --流水號 bigint identity(100,10),起始值為100;增量值為10
     教授編號 char(4) primary key,
	 職稱 nvarchar(4) not null,
	 科系 varchar(6) not null,
	 身分證字號 char(10) not null
)