*==========================================
* ����������
* ������������ ��� ����� userinfo
*==========================================
LOCAL n as Number

IF EMPTY(���_������)
n = Stavka1
ENDIF
IF ���_������ = 1
n = Stavka1
ENDIF
IF ���_������ = 2
n = Stavka2
ENDIF
IF ���_������ = 3
n = Stavka3
ENDIF

REPLACE ��������� WITH �������*n
REPLACE �_������  WITH �������*n