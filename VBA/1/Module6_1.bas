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



