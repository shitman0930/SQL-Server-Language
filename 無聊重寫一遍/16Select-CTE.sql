--��s�W���D�޸�ƪ�令.... �t�Τ��R ER��(�D�޺޲z���u)

--CTE(common table expression) 
--�γ~�N�O���m�W���б¸�ƪ�i�Hinner join�D�`�h����ƪ� 
--�M��Ȧs�즳�m�W���б¸�ƪ� �n�Ϊ��ɭ� �A�[�s����ƪ�(�Z��)�I�s��
--�����K �i�H�@���[�s�����p �S��N�Owith�����W����
with ���m�W���б¸�ƪ�
as
(select �б�.*, ���u.�m�W from ���u 
inner join �б� on ���u.�����Ҧr�� = �б�.�����Ҧr��)

select * from
�Z�� inner join ���m�W���б¸�ƪ� on �Z��.�б½s��=���m�W���б¸�ƪ�.�б½s��

--CTE���j(32JS Function3 settimeout() �L�a�j��)�d�� 
--�Ȧs��ƪ� �@�h�@�h�U�� �D�޻P�ݤU 

select *
from �D��

with �D��2
as
(
select ���u�r��,�m�W, 1 as �h�� from �D��
where  �D�ަr�� is null--1.�|��쳯�y�s 2. �|��취���� �p�s�k... �䧹�N����
union all--�p��(�����[�_��) 1. ���y�s ������ �p�s�k 2.�X��3��+4��...
select �D��.���u�r��,�D��.�m�W, �h��+1 as �h�� 
from �D�� inner join �D��2--�[�_�Ӥ~���
on �D��.�D�ަr��=�D��2.���u�r��--1.�|��취���� �p�s�k 2.��L4��...
)

select * from �D��2
order by �h��--�γo�Ӭd��