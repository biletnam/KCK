LOCAL n as Number

IF ALLTRIM(TableName) = m(12)
MESSAGEBOX("��� ��������!", 48, _screen.Caption)
RETURN
ENDIF

IF FILE(DataDir+ALLTRIM(STR(basename))+"\"+m(getMonthNum(tablename)+1)+".dbf")
MESSAGEBOX("�� � �������� ������!", 64, _screen.Caption)
RETURN
ENDIF

IF (MESSAGEBOX("������� �����?", 4 + 64, _screen.Caption) = 6)
WAIT "���������. ���� �������� ������..." NOWAIT WINDOW

MainForm.Grid1.RecordSource = ""

COPY STRUCTURE TO DataDir+ALLTRIM(STR(basename))+"\"+m(getMonthNum(tablename)+1)
USE DataDir+ALLTRIM(STR(basename))+"\"+m(getMonthNum(tablename)+1)

APPEND FROM; 
DataDir+ALLTRIM(STR(basename))+"\"+tablename;
FIELDS 	�������, ; 
		���, ; 
		��������, ;
		���, ;
		�����, ;
		��������, ;
		�������, ;
		���_������, ;
		�������, ;
		���, ;
		���_�����, ;
		����������, ;
		����������

CLOSE TABLES
USE DataDir+ALLTRIM(STR(basename))+"\"+m(getMonthNum(tablename))   IN  a
USE DataDir+ALLTRIM(STR(basename))+"\"+m(getMonthNum(tablename)+1) IN  b
SELECT b
SCAN
Replace b.���������� WITH a.������
SKIP IN a
ENDSCAN


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
WAIT CLEAR

tablename = ALLTRIM(m(getMonthNum(tablename)+1))
SAVE TO DataDir+"system.mem"
RESTORE FROM DataDir+"system.mem" ADDITIVE

USE DataDir+ALLTRIM(STR(basename))+"\"+tablename
MainForm.Grid1.RecordSource = tablename
MainForm.Label1.Refresh()
MESSAGEBOX("����� ������!", 64, "���������")
ENDIF
