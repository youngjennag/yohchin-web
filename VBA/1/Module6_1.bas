Attribute VB_Name = "Module6_1"
Option Explicit
Sub 確認1()
    Selection = "VBA"
    ActiveCell = "Excel"
End Sub

Sub コード簡略前()
    Worksheets(1).Range("A1").Font.Bold = False
    Worksheets(1).Range("A1"). _
    HorizontalAlignment = xlGeneral
    Worksheets(1).Range("A1").ClearContents
End Sub

Sub コード簡略後()
    With Worksheets(1).Range("A1")
    .Font.Bold = False
    .HorizontalAlignment = xlGeneral
    .ClearContents
    End With
End Sub

Sub オブジェクト変数1()
    Dim O変数 As Range
    Set O変数 = Worksheets(1).Range("A1")
     O変数.Font.Bold = False
     O変数.HorizontalAlignment = xlGeneral
     O変数.ClearContents
End Sub

Sub オブジェクト変数2()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Worksheets(1)
    
    ThisWorkbook.Worksheets(1).Range("A1") = "ABC"
    ws.Range("B1") = "いろは"
    

End Sub



