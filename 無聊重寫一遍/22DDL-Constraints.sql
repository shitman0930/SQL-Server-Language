---Constraints(條件約束)
--primary key Constraint(不能重複 不能null 具代表性等等)
use 教務系統2
create table 訂單明細(
   訂單編號 char(10),
   商品編號 char(5),
   售價 money not null,
   數量 int not null default 1,--預設值1
   primary key(訂單編號, 商品編號)--順序都可以 兩個一起當主鍵 資料表層級的Constraints
   
)

---check  constraint
create table 商品(
   商品編號 char(5) primary key,
   定價 money not null check(定價 > 0),
   庫存量 int not null constraint ck_庫存量不小於0 check (庫存量 >= 0)--自己寫條件約束的名稱
)

--Unique constraint 不可重複 但可以null 通常具備primary key資格
create table 會員(
   會員編號 char(8) primary key,
   姓名 nvarchar(20) not null,
   身分證字號 char(10) not null unique,--只能申請一次會員 就會變成"不可重複" 但可以null
   帳號 varchar(20) not null unique,--可以有很多unique
   密碼 varchar(20) not null 
)


--foreign key constraint 來自三個資料表 參考完整性
create table 班級(
	學號 char(4),
	課程編號 char(5),
	教授編號 char(4),
	上課時間 datetime,
	教室 varchar(8),
	primary key(學號,課程編號,教授編號),
	foreign key (學號) references 學生(學號) on delete no action on update cascade,--references 強迫參考完整性不准改跟刪   on delete no action on update cascade 不准刪但可以改
	foreign key (課程編號) references 課程(課程編號) on delete cascade on update cascade,--可以刪跟改
	foreign key (教授編號) references 教授(教授編號) on delete cascade on update no action--可以刪不能改
	)

--資料庫圖表右鍵新增資料庫圖表 按shift點最後面 像access的資料關聯圖 
--多對多 教授與員工建立FK身分證字號 左上按存檔 確定  
--用Alter新增FK或欄位而不是Create 關聯線上右鍵屬性
