Attribute VB_Name = "Module6_1"
Option Explicit
Sub �m�F1()
    Selection = "VBA"
    ActiveCell = "Excel"
End Sub

Sub �R�[�h�ȗ��O()
    Worksheets(1).Range("A1").Font.Bold = False
    Worksheets(1).Range("A1"). _
    HorizontalAlignment = xlGeneral
    Worksheets(1).Range("A1").ClearContents
End Sub

Sub �R�[�h�ȗ���()
    With Worksheets(1).Range("A1")
    .Font.Bold = False
    .HorizontalAlignment = xlGeneral
    .ClearContents
    End With
End Sub

Sub �I�u�W�F�N�g�ϐ�1()
    Dim O�ϐ� As Range
    Set O�ϐ� = Worksheets(1).Range("A1")
     O�ϐ�.Font.Bold = False
     O�ϐ�.HorizontalAlignment = xlGeneral
     O�ϐ�.ClearContents
End Sub

Sub �I�u�W�F�N�g�ϐ�2()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Worksheets(1)
    
    ThisWorkbook.Worksheets(1).Range("A1") = "ABC"
    ws.Range("B1") = "�����"
    
End Sub

Sub Offset�g����1()
    Range("A1").Offset(1, 3).Select
End Sub


Sub Offset�g����2()
    Range("A1:B3").Offset(1, 3).Select
End Sub

Sub Resize�g����1()
    Range("B2").Resize(3, 4).Select
End Sub

Sub Resize�g����2()
    Range("B2:D3").Resize(3, 4).Select
End Sub

Sub Resize�g����3()
    Range("B2:B4").Resize(3, 4).Select
End Sub

Sub Resize�g����4()
    Range("A1:B2").Resize(3, 4).Select
End Sub

Sub �\�̍s���񐔎擾()
    Dim a As Integer
    Dim b As Integer
    a = Range("A3").CurrentRegion.Rows.Count
    b = Range("A3").CurrentRegion.Columns.Count
    MsgBox "�s��:" & a & vbCrLf & "��:" & b
End Sub

Sub �\�̍s�ڗ�ڂ̎擾()
    Range("A3").CurrentRegion.Rows(1).Font.Bold = True
    Range("A3").CurrentRegion.Columns(1).Font.Bold = True
End Sub

Sub ���o���s�ȊO�̕\�I��()
    Dim �s�� As Integer
    Dim �� As Integer
    �s�� = Range("A3").CurrentRegion.Rows.Count
    �� = Range("A3").CurrentRegion.Columns.Count
    Range("A3").Offset(1).Resize(�s�� - 1, ��).ClearContents
End Sub


Sub ���o�������������̃Z���͈͎擾()
    Dim �s�� As Integer
    Dim ��ԍ� As Integer
    ��ԍ� = 4
    �s�� = Range("A3").CurrentRegion.Rows.Count
    Range("A3").Offset(1, ��ԍ� - 1).Resize(�s�� - 1, 1).Formula = "=B4*C4"
End Sub







