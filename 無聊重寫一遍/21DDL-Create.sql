create database �аȨt��2
go
--����Ʈw��use
use �аȨt��2
--table�N��ƪ� �Ǹ� char(4)4�Ӧr���T�w���� varchar�ܰʪ��� �W�L���I�_ �į঳�t 
--�m�W unicode nvarchar(20) ���Υb�γ�1�Ӧr�� 1bit = 1�ӥb�Φr 
--��ƪ�k��]�p
create table �ǥ�(
	�Ǹ� char(4) primary key, 
	�m�W nvarchar(20) not null,
	�ʧO bit not null,
	�q�� varchar(20),
	�ͤ� datetime
)

--------
create table �ҵ{(
    �ҵ{�s�� char(5) primary key,
	�W�� nvarchar(30) not null,
	�Ǥ� smallint not null,
)
---default�ȻP�p����� default�ȥi�H���μgnot null
create table ���u(
  �����Ҧr�� char(10) primary key,
  �m�W nvarchar(20) not null,
  ���� nvarchar(5),
  ��D nvarchar(30),
  �q�� varchar(20) not null,
  �~�� money default 25000,
  �O�I money not null,
  ���| as �~��*0.05,
  �b�ұo  as �~��-�O�I-�~��*0.05
)

--identity �ߤ@�ѧO��(�۰ʽs��) �R����|�~��U�@�s��
create table �б�(
     �y���� bigint identity,--�Y�L�_�l��,�h�_�l�Ȭ�1;�Y�L�W�q��,�h�W�q�Ȭ�1
	 --�y���� bigint identity(100,10),�_�l�Ȭ�100;�W�q�Ȭ�10
     �б½s�� char(4) primary key,
	 ¾�� nvarchar(4) not null,
	 ��t varchar(6) not null,
	 �����Ҧr�� char(10) not null
)