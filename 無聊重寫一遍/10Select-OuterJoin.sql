--�~���X�֬d�� outer join �i�ݥX�Y��ƻP�Y��ƪ����Y(?)

select * --�i�H�ݥX���ӽҵ{�S�Q��
from �Z�� as c right join �ҵ{ as co on c.�ҵ{�s��=co.�ҵ{�s��
where c.�ҵ{�s�� is null

--�i�H�ݥX���ӾǥͨS���
select s.*
from �ǥ� as s left join �Z�� as c on c.�Ǹ�=s.�Ǹ�
where c.�Ǹ� is null


select *--�i�H�ݥX���O�бª����u ��right�|�ܦ����O���u���б� �L�N�q
from ���u as e left join �б� as p on e.�����Ҧr��=p.�����Ҧr��
where p.�����Ҧr�� is null



--full join ������null�|��ܥX��
select *
from �ǥ� as s full join �Z�� as c on c.�Ǹ�=s.�Ǹ�

select *
from ���u as e full join �б� as p on e.�����Ҧr��=p.�����Ҧr��

--cross join �o�N�d����B��(access���� ��Ӹ�ƪ�ۭ�) ���ӬݱƦC�զX��
select *
from ���u cross join �б�


