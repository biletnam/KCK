LOCAL i as Number

i = 0
x = 0
USE "������"
SCAN
i = i + ������
x = x + ����������
ENDSCAN
MESSAGEBOX("����� ������������� �� ������: " + ALLTRIM(STR(i, 11,2)))
MESSAGEBOX("��������� ������ �� ������: " + ALLTRIM(STR(x, 11,2)))
*SORT TO "���.dbf" ON �����, ���, ��������


i = 0
USE "���"
SCAN
i = i + ������
x = x + ����������
ENDSCAN
MESSAGEBOX("����� ������������� �� ���: " + ALLTRIM(STR(i, 11,2)))
MESSAGEBOX("��������� ������ �� ���: " + ALLTRIM(STR(x, 11,2)))
*SORT TO "��.dbf" ON �����, ���, ��������

i = 0
USE "����"
SCAN
i = i + ������
x = x + ����������
ENDSCAN
MESSAGEBOX("����� ������������� �� ����: " + ALLTRIM(STR(i, 11,2)))
MESSAGEBOX("��������� ������ �� ����: " + ALLTRIM(STR(x, 11,2)))
*SORT TO "���.dbf" ON �����, ���, ��������

i = 0
USE "����"
SCAN
i = i + ������
x = x + ����������
ENDSCAN
MESSAGEBOX("����� ������������� �� ����: " + ALLTRIM(STR(i, 11,2)))
MESSAGEBOX("��������� ������ �� ����: " + ALLTRIM(STR(x, 11,2)))
*SORT TO "���.dbf" ON �����, ���, ��������







CLOSE TABLES