--with rollup �p�p
select �ҵ{�s��, �б½s��, count(*) as ��ҤH��
from �Z��
group by �ҵ{�s��, �б½s�� with rollup
--�s�����Ǥ����� �ܤF�N�ܦ��o�б¦��X�ӾǥͿ�
--�X���Ҧ��X�ӾǥͿ� �h�@��Null��� 
--�D�n�O�|�p�p�o�����`�@�X�ӾǥͿ� �̫����O�Z�Ÿ�ƦX�p

--with cube �`�p
select �ҵ{�s��, �б½s��, count(*) as ��ҤH��
from �Z��
group by �ҵ{�s��, �б½s�� with cube
--�o�б��`�@�h�־ǥͿ��o���Ҧh�־ǥͿ� Null���N�`�p 

--group by grouping sets �i�H�ۤv�s�`�p
select �ҵ{�s��,�б½s��,count(*) as ��ҤH��
from �Z��
group by GROUPING SETS
(
	�ҵ{�s��,--�o�б´X�ӤH��
	�б½s��,--�o�ҵ{�X�ӤH��
	(�ҵ{�s��,�б½s��),--�o�б¶}�F�X���ҴX�ӤH��
	()--�`�p
)
