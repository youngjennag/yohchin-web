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

Sub Offset使い方1()
    Range("A1").Offset(1, 3).Select
End Sub


Sub Offset使い方2()
    Range("A1:B3").Offset(1, 3).Select
End Sub

Sub Resize使い方1()
    Range("B2").Resize(3, 4).Select
End Sub

Sub Resize使い方2()
    Range("B2:D3").Resize(3, 4).Select
End Sub

Sub Resize使い方3()
    Range("B2:B4").Resize(3, 4).Select
End Sub

Sub Resize使い方4()
    Range("A1:B2").Resize(3, 4).Select
End Sub

Sub 表の行数列数取得()
    Dim a As Integer
    Dim b As Integer
    a = Range("A3").CurrentRegion.Rows.Count
    b = Range("A3").CurrentRegion.Columns.Count
    MsgBox "行数:" & a & vbCrLf & "列数:" & b
End Sub

Sub 表の行目列目の取得()
    Range("A3").CurrentRegion.Rows(1).Font.Bold = True
    Range("A3").CurrentRegion.Columns(1).Font.Bold = True
End Sub

Sub 見出し行以外の表選択()
    Dim 行数 As Integer
    Dim 列数 As Integer
    行数 = Range("A3").CurrentRegion.Rows.Count
    列数 = Range("A3").CurrentRegion.Columns.Count
    Range("A3").Offset(1).Resize(行数 - 1, 列数).ClearContents
End Sub


Sub 見出し除いた特定列のセル範囲取得()
    Dim 行数 As Integer
    Dim 列番号 As Integer
    列番号 = 4
    行数 = Range("A3").CurrentRegion.Rows.Count
    Range("A3").Offset(1, 列番号 - 1).Resize(行数 - 1, 1).Formula = "=B4*C4"
End Sub







