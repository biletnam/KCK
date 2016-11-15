*============================================
*
*
*
*============================================
LOCAL _street as Character
LOCAL _home   as Character

LOCAL ALL0	  as Number
LOCAL ALL1	  as Number
LOCAL ALL2	  as Number
LOCAL ALL3	  as Number
LOCAL ALL4	  as Number
LOCAL ALL5	  as Number
LOCAL ALL6	  as Number
LOCAL ALL7	  as Number
LOCAL ALL8	  as Number

ALL0 = 0
ALL1 = 0
ALL2 = 0
ALL3 = 0
ALL4 = 0
ALL5 = 0
ALL6 = 0
ALL7 = 0
ALL8 = 0

_street = " "
_home   = " "

MainForm.Grid1.RecordSource = "" && ������� Grid
COPY STRUCTURE TO DataDir+"ksk_report.dbf"
USE DataDir+"ksk_report" IN a && ������� ������
USE DataDir+ALLTRIM(STR(basename))+"\"+tablename IN b && �������� �������

SELECT b
SCAN
	IF  ALLTRIM(_street) = ALLTRIM(b.�����) AND;
  		ALLTRIM(_home)   = ALLTRIM(b.���)
  		
  		Replace a.������� 		WITH a.�������    + b.�������
		Replace a.��������� 	WITH a.���������  + b.���������
		Replace a.�_������  	WITH a.�_������   + b.�_������
		Replace a.���������  	WITH a.���������  + b.���������
		Replace a._451 		 	WITH a._451       + b._451
		Replace a._441 		 	WITH a._441       + b._441
		Replace a._334 		 	WITH a._334       + b._334
		Replace a._681 		 	WITH a._681       + b._681
		Replace a.���������� 	WITH a.���������� + b.����������
		Replace a.������ 		WITH a.������ + b.������
&&(a.���������� + a.���������)-a.���������-a._451-a._441-a._334-a._681
		
		ELSE
			APPEND BLANK IN a
			
			Replace a.����� 		WITH b.�����
			Replace a.��� 			WITH b.���
			Replace a.������� 		WITH b.�������
			Replace a.��������� 	WITH b.���������
			Replace a.�_������  	WITH b.�_������
			Replace a.���������  	WITH b.���������
			Replace a._451 		 	WITH b._451
			Replace a._441 		 	WITH b._441
			Replace a._334 		 	WITH b._334
			Replace a._681 		 	WITH b._681
			Replace a.���������� 	WITH b.����������
			Replace a.������ 		WITH b.������
ENDIF
		_street = ALLTRIM(a.�����)
		_home   = ALLTRIM(a.���)
ENDSCAN


SELECT a
SCAN
ALL0 = ALL0 + �������
ALL1 = ALL1 + ����������
ALL2 = ALL2 + ���������
ALL3 = ALL3 + ���������
ALL4 = ALL4 + _451
ALL5 = ALL5 + _441
ALL6 = ALL6 + _334
ALL7 = ALL7 + ��������� + _451 + _441 + _334
ALL8 = ALL8 + ������
ENDSCAN

REPORT FORM "ksk_report" PREVIEW
*===========================================
* �������������� �������� �������
*===========================================
CLOSE TABLES
USE DataDir+ALLTRIM(STR(basename))+"\"+tablename
MainForm.Grid1.RecordSource = tablename


