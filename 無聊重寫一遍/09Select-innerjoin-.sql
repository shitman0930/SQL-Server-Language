--����(inner)�X�֬d�� ��ƪ�join �[�b�@�_ ��ƪ����p�� ����ƪ� �k��ƪ� �D�q ���p�� primary key + forien key
select *
from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
--on�N�O�b�����p inner join�~��on

select �Z��.*,�ǥ�.�m�W--�Z�Ÿ�ƪ������[�W�ǥ͸�ƪ��m�W���
from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�--������p�� on�N�Okey�s�_��

select �Z��.�б½s��,���u.�m�W,�Z��.�Ǹ�, �ǥ�.�m�W,�Z��.�ҵ{�s��,�ҵ{.�W��,�Z��.�W�Үɶ�,�Z��.�Ы�
from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
inner join �ҵ{ on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��
inner join �б�  on �Z��.�б½s��=�б�.�б½s��
inner join ���u  on �б�.�����Ҧr��=���u.�����Ҧr��--�N�[�F4�Ӹ�ƪ� 4��key

--�Ĥ@�ؼg�k �N���ƪ� �[�ӧO�W �έ^����N�@�U
select c.�б½s��,e.�m�W,c.�Ǹ�, s.�m�W,c.�ҵ{�s��,co.�W��,c.�W�Үɶ�,c.�Ы�
from          �Z�� as c --�O�W�[�b�o
inner join �ǥ� as s on c.�Ǹ�=s.�Ǹ�
inner join �ҵ{ as co on c.�ҵ{�s��=co.�ҵ{�s��
inner join �б� as p on c.�б½s��=p.�б½s��
inner join ���u as e on p.�����Ҧr��=e.�����Ҧr��

--�ĤG�� �t�bfrom ()��Ӭݦ��@�i�� �_�����c �@�����~�[()��ƪ� �Z��-->�ҵ{-->�б�-->���u
select *
from ���u as e 
inner join (�б� as p inner join (�ҵ{ as co inner join (�Z�� as c inner join �ǥ� as s 
on c.�Ǹ�=s.�Ǹ�) on c.�ҵ{�s��=co.�ҵ{�s��) on c.�б½s��=p.�б½s��) on e.�����Ҧr��=p.�����Ҧr��

--�ĤT�ؼg�k(�۵M�X��,���t�X��)
select  c.�б½s��,e.�m�W,c.�Ǹ�, s.�m�W,c.�ҵ{�s��,co.�W��,c.�W�Үɶ�,c.�Ы�
from �Z�� as c,�ǥ� as s,�ҵ{ as co,�б� as p,���u as e
where c.�Ǹ�=s.�Ǹ� and c.�ҵ{�s��=co.�ҵ{�s�� 
                    and c.�б½s��=p.�б½s�� 
                    and p.�����Ҧr��=e.�����Ҧr��

