--�E�X���(Aggregate Function)
--count
select count(�Ǹ�) as �ǥͤH��
from �ǥ�

select count(*) as �ǥͤH��
from �ǥ�
----�p��ǥ͸�ƪ��X�ӾǸ� *�i�H�snull����]��i�h������|�X��

--------------------
--sum �[�`
select sum(�~��) as �~���`�B
from ���u

--avg
select avg(�~��) as �����~��
from ���u

--max
select max(�~��) as �̰��~��
from ���u

--min
select min(�~��) as �̧C�~��
from ���u

--�W�����X�b�@�_~
select sum(�~��) as �~���`�B, avg(�~��) as �����~��, 
max(�~��) as �̰��~��,min(�~��) as �̧C�~��,count(*) as ���u�H��
from ���u

--�X�b�@�_�S������B��
select sum(�~��) as �~���`�B, avg(�~��) as �����~��, 
max(�~��) as �̰��~��,min(�~��) as �̧C�~��,
max(�~��)-min(�~��) as ���ݭȮt,
avg(�~��)-min(�~��) as �C���~�t,
max(�~��)-avg(�~��) as �����~�t,
count(*) as ���u�H��
from ���u