--1 ��X�k���u
select *
from ���u
where �٩I='�p�j'

--2 �X�ͦb1968(�t)�~�H��
select *
from ���u
where �X�ͤ��>='1968/1/1'

--3 �e�f�������x�_���ΰ�����
select *
from �q�f�D��
where �e�f�a�} like '�x�_��%' or �e�f�a�} like '������%'

--4 �w�s�q�̦h���e6�W
select top 6 with ties *
from�@���~���
order by �w�s�q desc

--5 �q�渹�X10847�]�t���ǲ��~
select ���~�s��
from �q�f����
where �q�渹�X='10847'

--6 ��X�q�椤�]�t5�إH�W�����~
select �q�渹�X, count(*) as �ӫ~�ƶq
from �q�f����
group by �q�渹�X
having count(*)>=5

--7 ���O�s����2�����~�������
select ���~�s��,���~ ,avg(���)
from ���~���
where ���O�s��=2
group by ���~�s��,���~

--8 �w�s�q�p��w���s�q�B���i����ʪ����~
select *
from ���~���
where �w�s�q<�w���s�q and �w�q�ʶq=0

--9 ���q�W�٥]�t�@��r(9�ӱ���) [�̭��N�O��or�s��] ���Select-3�]�S�g= =
select *
from �Ȥ�
where ���q�W�� like '%[�t�ͱ��Ѥ������~��]%'

--10 �q�ʲ��~�ƶq����20-30�󪺬���
select *
from �q�f����
where �ƶq between 20 and 30

--11 ��X�|�����e�f��������
select *
from �q�f�D��
where �e�f��� is null

--12 �q�渹�X10263�Ҧ����~������p�p
select *, ���*�ƶq*(1-�馩) as �p�p
from �q�f����
where �q�渹�X='10263'

--13  �έp�C�Ө����Ӵ��ѴX�˲��~
select �����ӽs��, count(*) as ���~������
from ���~���
group by �����ӽs��

--14 �έp�C�@��Ȥ�Q�C�@����u�A�Ȫ�����
select �Ȥ�s��,���u�s��,count(*) as �A�Ȧ���
from �q�f�D��
group by �Ȥ�s��,���u�s��

--15 �U���ӫ~����������P�����P��q�B�u�C�X�����P��q�j��10����� �åѤp��j�Ƨ�
select ���~�s��,avg(���*(1-�馩)) as �������,avg(�ƶq) as �����P��q
from �q�f����
group by ���~�s��
having avg(�ƶq)>10
order by ���~�s��