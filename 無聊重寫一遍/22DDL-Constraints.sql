---Constraints(�������)
--primary key Constraint(���୫�� ����null ��N��ʵ���)
use �аȨt��2
create table �q�����(
   �q��s�� char(10),
   �ӫ~�s�� char(5),
   ��� money not null,
   �ƶq int not null default 1,--�w�]��1
   primary key(�q��s��, �ӫ~�s��)--���ǳ��i�H ��Ӥ@�_��D�� ��ƪ�h�Ū�Constraints
   
)

---check  constraint
create table �ӫ~(
   �ӫ~�s�� char(5) primary key,
   �w�� money not null check(�w�� > 0),
   �w�s�q int not null constraint ck_�w�s�q���p��0 check (�w�s�q >= 0)--�ۤv�g����������W��
)

--Unique constraint ���i���� ���i�Hnull �q�`���primary key���
create table �|��(
   �|���s�� char(8) primary key,
   �m�W nvarchar(20) not null,
   �����Ҧr�� char(10) not null unique,--�u��ӽФ@���|�� �N�|�ܦ�"���i����" ���i�Hnull
   �b�� varchar(20) not null unique,--�i�H���ܦhunique
   �K�X varchar(20) not null 
)


--foreign key constraint �ӦۤT�Ӹ�ƪ� �Ѧҧ����
create table �Z��(
	�Ǹ� char(4),
	�ҵ{�s�� char(5),
	�б½s�� char(4),
	�W�Үɶ� datetime,
	�Ы� varchar(8),
	primary key(�Ǹ�,�ҵ{�s��,�б½s��),
	foreign key (�Ǹ�) references �ǥ�(�Ǹ�) on delete no action on update cascade,--references �j���Ѧҧ���ʤ�����R   on delete no action on update cascade ����R���i�H��
	foreign key (�ҵ{�s��) references �ҵ{(�ҵ{�s��) on delete cascade on update cascade,--�i�H�R���
	foreign key (�б½s��) references �б�(�б½s��) on delete cascade on update no action--�i�H�R�����
	)

--��Ʈw�Ϫ�k��s�W��Ʈw�Ϫ� ��shift�I�̫᭱ ��access��������p�� 
--�h��h �б»P���u�إ�FK�����Ҧr�� ���W���s�� �T�w  
--��Alter�s�WFK�����Ӥ��OCreate ���p�u�W�k���ݩ�
