--group by
select distinct �Ǥ�
from �ҵ{

select �Ǥ�
from �ҵ{
group by �Ǥ�--�P�@�s������
--��distinct(�h�����P����)���G�@�� ��ڷN�䤣�@��

select �ʧO
from �ǥ�
group by �ʧO
--�|�X�{�k�k

select �ʧO,count(*)
from �ǥ�
group by �ʧO
--����E�X��Ƥ@�_���ɭ� �@�w�n��group by�~���|�X��
--���G�N�O���h�֨k����k��(�ΩʧO�ӭp�⦳�X�����)
--group by�ܱ`��E�X��Ƥ@�_��

select �Ǹ�,count(*) as �ǥͿ�Ҽ�
from �Z��
group by �Ǹ�
--�ǥͿ�F�X����(�ξǸ��ӭp�⦳�X�����)

select �ҵ{�s��,count(*) as �X��ǥͿ�
from �Z��
group by �ҵ{�s��
--�o���Ҧ��X��ǥͿ�(�νҵ{�s��....��W���@��)

select �б½s��,count(*) as �X��ǥͿ�
from �Z��
group by �б½s��
--�X��ǥͿ�F�o��б�

select �б½s��,�ҵ{�s��,count(*) as �X��ǥͿ�
from �Z��
group by �б½s��,�ҵ{�s��
--�o��б¶}���Ҧ��X��ǥͿ�
--(�̱б½s����ҵ{�s���έp���X�����) 
--��W���f�t�i�H�ݼƾ�


select ����, sum(�~��) as �~���`�B, avg(�~��) as �����~��, 
max(�~��) as �̰��~��,min(�~��) as �̧C�~��,
max(�~��)-min(�~��) as ���ݭȮt,
avg(�~��)-min(�~��) as �C���~�t,
max(�~��)-avg(�~��) as �����~�t,
count(*) as ���u�H��
from ���u
group by ����
--�C�ӫ������h�֭��u �L�̪��~��

--------------------------------------------
--������

select �Ǹ�,count(*) as �ǥͿ�Ҽ�
from �Z��
where �Ǹ�='S005'
group by �Ǹ�
--���涶�Ǥ��@�� 
--where�u��Τ@����� ���i�H�ΧO�W��E�X��� 



--having �@�w��group by�M�E�X��Ƥ@�_�� 
select �Ǹ�,count(*) as �ǥͿ�Ҽ�
from �Z��
group by �Ǹ�
having count(*)<3
--��ҥ���3���Ҫ��ǥ�

select �Ǹ�,count(*) as �ǥͿ�Ҽ�
from �Z��
where �Ǹ�='S004'
group by �Ǹ�
having count(*)<3
--�i�H��where�@�_�� 
--���G�N�O�Ǹ�S004�B���ﺡ3���Ҥ~�|�X�{���G

select ����, sum(�~��) as �~���`�B, avg(�~��) as �����~��, 
max(�~��) as �̰��~��,min(�~��) as �̧C�~��,
max(�~��)-min(�~��) as ���ݭȮt,
avg(�~��)-min(�~��) as �C���~�t,
max(�~��)-avg(�~��) as �����~�t,
count(*) as ���u�H��
from ���u
group by ����
having avg(�~��)<=60000
--�����~���p��ε���60000������������