--offset order by�|�۰ʱq����Ƨ�
select �����Ҧr��, �m�W, �~�� 
from ���u
order by �����Ҧr��
offset 3 rows--�e��3��rows�h��

--fetch next 
select �����Ҧr��, �m�W, �~�� 
from ���u
order by �����Ҧr��
offset 3 rows
fetch next 2 rows only--�u��᭱6��rows���e��2�� �����i�H��top��e�X��

--null�����P����ഫ isnull(a, b) ���L�� true�N��Jb
select * from ���u
where �q�� is null

select �m�W, isnull(�q��, '�|����g') from ���u

--����ɶ������ܦr��
select �Ǹ�, �m�W, isnull(�ͤ�, '�|����g') from �ǥ�

--��ƫ��O�ഫ cast( as varchar) convert as varchar�N�ন�r��

select cast(�~�� as varchar) from ���u
select cast(�ͤ� as varchar) from �ǥ�
--�榡�|�ǩǪ�
select �Ǹ�,�m�W,isnull(cast(�ͤ� as varchar),'�|����g') from �ǥ�

--�γo�ӴN���` �n�Ƿ|�ݧ޳N��� 23�O�N�X
select �Ǹ�, �m�W, isnull(convert(nvarchar, �ͤ�, 23), '�|����g') 
from �ǥ�
