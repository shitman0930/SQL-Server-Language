--�ק� ��Ƥ��e�|��
select * from �ҵ{_�ƥ�
--------------
--update �P��ƦP�W �ҥH�N�����

--�Ǥ��令4 ����Ȥ@�_�g �ҥH�S���� ��where�]����
update �ҵ{_�ƥ�
set �Ǥ� = 4, �W�� = '�{���]�p'
where �ҵ{�s�� = 'CS203'

--��ҤH��>=3, �N�ҵ{�Ǥ��אּ30
--�l�d��
update �ҵ{_�ƥ�
set �Ǥ� = 30
where �ҵ{�s�� in  (select �ҵ{�s��,count(*) from �Z��
group by �ҵ{�s��
having count(*) >= 3)


--��Ҧ��Q��L���ҵ{�Ǥ��אּ100 �X�֬d��
update �ҵ{_�ƥ�
set �Ǥ� = 100
from �Z�� as c inner join �ҵ{_�ƥ� as co on c.�ҵ{�s�� = co.�ҵ{�s��

