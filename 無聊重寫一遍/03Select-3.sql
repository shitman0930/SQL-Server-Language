--where�ԭz
--�����󪺸�ƿz��(����B����޿�B��Ψ�̬Ҧ�)
select *
from �ǥ�
where �Ǹ�='S005'

select *
from �ǥ�
where �m�W='���p��'


select *
from ���u
where �~��>=50000

select *
from �ǥ�
where �ͤ�>='1991/1/1'
-----------------------------
--like�B��l
select *
from �ǥ�
where �m�W like '��%'
--0��n�Ӧr�� %��%�N��O�]�t���o�Ӧr�N�|�q�X��

select *
from �б�
where ��t like 'C%'

select *
from �б�
where ��t like 'C_'
--�N��᭱�u��1�Ӧr��

select *
from �б�
where ��t like 'C__'
--�N��᭱�u��2�Ӧr��

--�`�W��F��(expression, ���Ҿ��榡�]�t���h, MVC model�]�|�Ψ�)
select *
from �б�
where ��t like '[a-c]%'
--�N��a��b��c

select *
from �б�
where ��t like '[dftmhki]%'
--�N��dftmhki���@�r��

select *
from �б�
where ��t like '[a-es-z]%'
--�Na��e s��z

select *
from �б�
where ��t like '[^a-c]%'
--^�N�Onot ���Fa��c�H�~(d��z)���|�X�{

select *
from �Z��
where �Ы� like '2_%-_'
--2�}�Y _�᭱�@�w���@�Ӧr %�S��2�Ӧr�]�S�t �M��@�w�n- -�᭱�u���@�Ӧr �X�{���G�N�O221-S


--escape(�h�X�r�� ����Ÿ����i�H)
select *
from �б�
where ¾�� like '%*%%' escape '*'
--��X�б�¾�٦�%�Ÿ���
--------------------------------------
--between and
select *
from ���u
where �~��>=20000 and �~��<=50000
--�޿�B��+����B��

select *
from ���u
where �~�� between 20000 and 50000
--����W������

select *
from �ǥ�
where �ͤ�>='1990/1/1' and �ͤ�<='1995/12/31'

select *
from �ǥ�
where �ͤ� between '1990/1/1' and '1995/12/31'

--------------------------
--in
select *
from �ҵ{
where �ҵ{�s��='CS101' or �ҵ{�s��='CS213' or �ҵ{�s��='CS203'
or �ҵ{�s��='CS999'

select *
from �ҵ{
where �ҵ{�s�� in ('CS101','CS213','CS203','CS999')