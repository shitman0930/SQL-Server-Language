--�B�Φb�l�d�ߪ��B��l
--exists 2�Ӹ�Ƶ��G���ۦs�b
select * from �ǥ�

select * from �Z�� where �ҵ{�s��='CS222'

----��ΦX�֬d�ߴN���n�Τl�d��
select * 
from �ǥ� inner join �Z�� 
on �ǥ�.�Ǹ�=�Z��.�Ǹ�


----exists �ǥͦs�b��Z�Ÿ�ƪ� where�N�����~
select * 
from �ǥ� where exists
(select * from �Z�� 
where  �ҵ{�s��='CS222' and �ǥ�.�Ǹ�=�Z��.�Ǹ�)


--in �ǤJ�h�ӭ�
select �ǥ�.*
from �ǥ�
where �Ǹ� in
(select �Ǹ� from �Z�� where �ҵ{�s��='CS222')

--221-S�ЫǸ̪��Ҧ��ǥ�??
select �ǥ�.*
from �ǥ�
where �Ǹ� in
(select �Ǹ� from �Z�� where �Ы�='221-S')

--�d�߾ǥͩP�N���ҿ�Ҫ��ҵ{���
--�l�d��
--in
select * from �ҵ{
where �ҵ{�s�� in
(select �ҵ{�s�� from �Z��
where �Ǹ� in
(select �Ǹ� from �ǥ� 
where �m�W='�P�N��'))

--exists
select * from �ҵ{
where exists
(select * from �Z��
where exists
(select * from �ǥ� 
where �m�W='�P�N��' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s�� and �ǥ�.�Ǹ�=�Z��.�Ǹ�))


--�X�֬d�� �ݱo��M��
select �ҵ{.* from �ҵ{,�Z��,�ǥ�
where �m�W='�P�N��' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s�� and �ǥ�.�Ǹ�=�Z��.�Ǹ�

--�d�߾ǥͩP�N���S��Ҫ��ҵ{���
--�l�d��
--in
select * from �ҵ{
where �ҵ{�s�� not in
(select �ҵ{�s�� from �Z��
where �Ǹ� in
(select �Ǹ� from �ǥ� 
where �m�W='�P�N��'))

--exists
select * from �ҵ{
where not exists
(select * from �Z��
where exists
(select * from �ǥ� 
where �m�W='�P�N��' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s�� and �ǥ�.�Ǹ�=�Z��.�Ǹ�))


--�X�֬d��
select �ҵ{.* from �ҵ{
except
select �ҵ{.* from �ҵ{,�Z��,�ǥ�
where �m�W='�P�N��' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s�� and �ǥ�.�Ǹ�=�Z��.�Ǹ�


-------------------------
--all ��������H�~����
select *
from ���u
where �~��>=all
(select �~��
from ���u
where ����='�x�_')


--some��any(T-SQL) ��䤤�@�ӱ���
select *
from ���u
where �~��>=some
(select �~��
from ���u
where ����='�x�_')


