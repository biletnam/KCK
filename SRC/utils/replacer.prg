SET COLLATE TO 'RUSSIAN'

use "iulgood" in a
use "����" in b

select a
scan
*REPLACE a.�������� WITH b.��������
*REPLACE a.������� WITH b.�������
*REPLACE a.���_������ WITH b.���_������
REPLACE a.���������� with b.����������
*REPLACE a.��������� WITH b.���������
*REPLACE a._451 WITH b._451
*REPLACE a._441 WITH b._441
*REPLACE a._334 WITH b._334
*REPLACE a._681 WITH b._681
skip in b
endscan

close tables