Attribute VB_Name = "Module8_1"
Sub オープン()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\オープン用.xlsm")
End Sub

Sub 閉じる()
    Workbooks("オープン用.xlsm").Close
End Sub

Sub オープン用2()
    Dim ファイル名 As String
    ファイル名 = Dir("C:\Users\chiny\OneDrive\Desktop\VBA\1\OpenClose\東京.xlsm")
    MsgBox ファイル名
End Sub


Sub オープン用3()
    Dim ファイル名 As String
    ファイル名 = Dir("C:\Users\chiny\OneDrive\Desktop\VBA\1\OpenClose\*.xlsm")
    MsgBox ファイル名
   ファイル名 = Dir
    MsgBox ファイル名
    ファイル名 = Dir
    MsgBox ファイル名
    ファイル名 = Dir
    MsgBox ファイル名
    ファイル名 = Dir
    MsgBox ファイル名
End Sub

Sub コピー1()
    Range("A1").Copy Destination:=Range("D1")
End Sub

Sub コピー2()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\オープン用.xlsm")
    Range("A1").Copy _
    Destination:=ThisWorkbook.ActiveSheet.Range("A1")
    Workbooks("オープン用.xlsm").Close
End Sub

Sub コピー3()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\オープン用.xlsm")
    Range("A1").Resize(3, 3).Copy _
    Destination:=ThisWorkbook.ActiveSheet.Range("A1:C3")
    Workbooks("オープン用.xlsm").Close
End Sub




