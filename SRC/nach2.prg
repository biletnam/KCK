IF (MESSAGEBOX("��������� ���������� ��� ���� ���������?", 4 + 64, _screen.Caption) = 6)
SAVE TO DataDir+"system.mem"
p = RECNO()
SCAN
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
	
	Replace ��������� WITH �������*n
	Replace �_������  WITH ����������+���������
	Replace ������    WITH �_������-���������-_441-_451-_334-_681

ENDSCAN
GO p
MESSAGEBOX("��������� �������", 64, "��")
ENDIF