MainForm.Grid1.RecordSource = "" && ������� Grid
SELECT * FROM ALIAS() INTO TABLE "data\zavod.dbf" WHERE ���_����� != 0 ORDER BY ���_�����
SELECT zavod
SCAN
_out = _334
ENDSCAN
REPORT FORM "rep_zavod_full" TO PRINTER PREVIEW
CLOSE TABLES
USE DataDir+ALLTRIM(STR(basename))+"\"+tablename
MainForm.Grid1.RecordSource = tablename
MainForm.Grid1.Refresh()
