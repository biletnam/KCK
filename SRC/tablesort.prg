*============================
* ����������
*============================
PROCEDURE TableSort
SORT TO DataDir+"temp.dbf" ON �����, ���, ��������
CLOSE TABLES
ERASE 	DataDir+ALLTRIM(STR(BaseName))+"\"+TableName+".dbf"
RENAME 	DataDir+"temp.dbf" TO DataDir+ALLTRIM(STR(BaseName))+"\"+TableName+".dbf"
USE 	DataDir+ALLTRIM(STR(BaseName))+"\"+TableName
ENDPROC