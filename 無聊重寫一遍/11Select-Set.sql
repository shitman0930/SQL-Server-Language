--���X�B��Set ��ΦX�ֹB��N���n�ζ��X�B��

--�p��union(�ǥ͸���u�[�_�Ӵ���ƪ� �ҥH�֤F�T��)
select �m�W from �ǥ�
union
select �m�W from ���u

select �m�W from �ǥ�--�|�h�T�� �N(�O�ǥͤ]�O���u)�]�[�i�h
union all
select �m�W from ���u

--�涰intersect(�O�ǥͤ]�O���u�N�|�X�{�T�� ��ƫ��O�n�ۦP)
select �m�W from �ǥ�
intersect
select �m�W from ���u

--�t��except(���X-���X ���ƪ��R��(distinct))
select �Ǹ� from �ǥ�--�S����Ҫ��ǥ�
except
select distinct �Ǹ� from �Z��

--�N�S�F�� �]���諸�ǥͳ������
select distinct �Ǹ� from �Z��
except
select �Ǹ� from �ǥ�

--�O�ǥͤ��O���u
select �m�W from �ǥ�
except
select �m�W from ���u

--�O���u���O�ǥ�
select �m�W from ���u
except
select �m�W from �ǥ�