--merge �̱���M�w�W�R��

merge �Ȥ� as c
using �s�Ȥ� as nc--�ϥηs�Ȥ��ƪ�X�֨�Ȥ��ƪ�(�̫Ȥ�W�R��)
on c.�Ȥ�s�� = nc.�Ȥ�s��
when matched then
     update set �m�W =nc.�m�W, �q�� =nc.�q��--merge����i�H���μg��ƪ�W��
when not matched then
  insert(�Ȥ�s��, �m�W, �q��) values(nc.�Ȥ�s��, nc.�m�W, nc.�q��);--����into merge���� �n������

--�Y��~�Z�ؼ�>=250,�R���ӫȤ᪺�~�Z�ؼи��
--�Y��~�Z�ؼ�<250,�h�N�ӫȤ᪺�~�Z�ؼ�+25
--�|�����~�Z�ؼЪ��Ȥ�,�h�s�W�ӫȤ�~�Z�ؼ�, �ó]�w��100
merge �Ȥ�~�Z as cs
using �Ȥ� as c
on cs.�Ȥ�s��=c.�Ȥ�s��
when matched and cs.�~�Z�ؼ�>=250 then
	delete
when matched then
	update set �~�Z�ؼ� = cs.�~�Z�ؼ�+25
when not matched then
	insert (�Ȥ�s��,�~�Z�ؼ�) values(c.�Ȥ�s��,100);
