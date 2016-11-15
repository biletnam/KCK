#define xlCenter -4108
#define xlSolid 1

LOCAL loExcel, loBook, loSheet
loExcel = CREATEOBJECT("Excel.Application")
WITH loExcel
.Visible = .T.
.WorkBooks.Add
* ������ ��������
.Columns[1].ColumnWidth = 10
.Columns[2].ColumnWidth = 10
.Columns[3].ColumnWidth = 20	
.Columns[4].ColumnWidth = 15
.Columns[5].ColumnWidth = 15
.Columns[6].ColumnWidth = 15

.Range("A1:E1").Select

WITH .Selection
.MergeCells = .T.
.HorizontalAlignment = xlCenter
.VerticalAlignment	= xlCenter
ENDWITH

WITH .ActiveCell
.Value = '������ �� ��������� �� ���������� ����� �� ������������ ������ ��� "������-����"'
.Font.Size = 12
.Font.Bold = .T.
ENDWITH

.Rows("2:2").RowHeight = 30
.Range("A2:E2").Select

WITH .Selection
.HorizontalAlignment = xlCenter
.VerticalAlignment	= xlCenter
.Interior.Pattern = xlSolid
.Interior.Color = RGB(255,255,254)
ENDWITH

.Cells[2,1].value = "� �/�"
.Cells[2,2].value = "���. �����"
.Cells[2,3].value = "�.�.�."
.Cells[2,4].value = "�����"
.Cells[2,5].value = "����� �������"
.Cells[2,6].value = "������������ ���"

lnRow = 2
ENDWITH