--1 1996/7 ���w���l�H �����p�p�|�ˤ��J���q�f����
select o.�q�渹�X,pt.���O�W��,p.���~,od.���,od.�ƶq,round(od.���*od.�ƶq*(1-od.�馩),0) as �p�p,c.�Ȥ�s��,c.���q�W��,o.���f�H,o.�q����,e.�m�W,t.�f�B���q�W�� as �e�f�覡,s.������
from �q�f�D�� as o inner join �q�f���� as od on o.�q�渹�X = od.�q�渹�X
inner join ���~��� as p on p.���~�s��=od.���~�s��
inner join ���~���O as pt on pt.���O�s��=p.���O�s��
inner join �Ȥ� as c on c.�Ȥ�s��=o.�Ȥ�s��
inner join ������ as s on s.�����ӽs��= p.�����ӽs��
inner join �f�B���q as t on t.�f�B���q�s��=o.�e�f�覡
inner join ���u as e on e.���u�s��=o.���u�s��
where o.�q���� between '1996/7/1' and '1996/7/31'
and t.�f�B���q�s��='2'

--2 ANTON���~�q�ʪ����~�P�ƶq
select c.�Ȥ�s��,c.�s���H,p.���~,count(*) as �ƶq
from �q�f�D�� as o inner join �q�f���� as od on o.�q�渹�X = od.�q�渹�X
inner join ���~��� as p on p.���~�s��=od.���~�s��
inner join �Ȥ� as c on c.�Ȥ�s��=o.�Ȥ�s��
where o.�Ȥ�s��='ANTON'
group by c.�Ȥ�s��,c.�s���H,p.���~

--3 ���ǫȤ�S�U�L�q��
select * from �Ȥ�
where not exists
(select * from �q�f�D��
 where �Ȥ�.�Ȥ�s��=�q�f�D��.�Ȥ�s��)

--4 �����ǭ��u�B�z�L�q��
select e.���u�s��,e.�m�W,e.¾��,e.�����������X,e.���� from ���u as e
where e.���u�s�� in
(select ���u�s�� from �q�f�D��)

--5 1998�~�Q�q�ʹL���Ҧ����~

--�X�֬d��
select distinct p.*
from ���~��� as p inner join �q�f���� as od on p.���~�s��=od.���~�s��
                   inner join �q�f�D�� as o on o.�q�渹�X=od.�q�渹�X
where o.�q���� between '1998/1/1' and '1998/12/31'
order by p.���~�s��

--�l�d��
select * from ���~���
where ���~�s�� in
(select ���~�s�� from �q�f����----�Ҧ��Q�q�ʹL�����~
where �q�渹�X in (select �q�渹�X from �q�f�D�� as o where o.�q���� between '1998/1/1' and '1998/12/31'))--1998�~
order by ���~�s��






