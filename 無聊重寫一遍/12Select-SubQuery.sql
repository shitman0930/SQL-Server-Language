--�l�d��(SubQuery) �q�`��X�֦n�g ���į�q�`����t
--�d�i�L�Ҫ���Ҹ�� �Z�Ÿ�ƨS�m�W�u���Ǹ� �q�t�~��ƪ��
--()�̭��N�O�l�d��  ����Ʈw�į�ծ�(1-3000��)
select * 
from �Z��
where �Ǹ� = (select �Ǹ� 
from �ǥ� 
where �m�W ='�i�L��')

--�W�����令�X�֬d��(�įण�n�N�|�o�˼g)
select �Z��.*--�Ѯv�g��
from �Z�� inner join �ǥ� on �Z��.�Ǹ� = �ǥ�.�Ǹ�
where �m�W='�i�L��'


--����u�~��>=�����~�� ��ڤW�ݦ���Ӹ�ƪ� �S���N����group by
select *
from ���u
where �~�� >=(select avg(�~��)
from ���u)
--����u�~��>=�����~�� �ΦX�֬d�ߪ��g�k ���O�W 
--group by �@�w�Oselect�᭱���F�E�X��ƥ~����� != ������ۤv
--�]���cross join ���G�|�@��

select  a.�����Ҧr��,a.�m�W,a.����,a.��D,a.�~��,a.�O�I,a.���|,avg(b.�~��)
from ���u as a inner join  ���u as b
on a.�����Ҧr��!=b.�����Ҧr��--!=�ڭn��ۤv�H�~����
group by  a.�����Ҧr��,a.�m�W,a.����,a.��D,a.�~��,a.�O�I,a.���|
having a.�~��>=avg(b.�~��)

select a.�����Ҧr��,a.�m�W,a.����,a.��D,a.�~��,a.�O�I,a.���|, avg(b.�~��)
from ���u as a cross join  ���u as b
group by a.�����Ҧr��,a.�m�W,a.����,a.��D,a.�~��,a.�O�I,a.���|
having a.�~��>=avg(b.�~��)

--�d�߭��X����u�O�б�
--�Q�Τl�d�߼g�k in�N��ǤJ�h�ӭ� �����=
select *
from ���u
where �����Ҧr�� in (
select �����Ҧr��
from �б�)
--�Q�ΦX�֬d�߼g�k �ݳ��ݱo�� �ۤv���n��N�|�ʤ@��~
select e.*
from ���u as e inner join �б� as p
on e.�����Ҧr��=p.�����Ҧr��