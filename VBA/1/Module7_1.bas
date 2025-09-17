Attribute VB_Name = "Module7_1"
Option Explicit

Sub ループ()
    Dim i As Long
    For i = 1 To 3
    MsgBox i
    Next
End Sub

Sub ループ2()
    Dim i As Long
    For i = 1 To 5 Step 2
    MsgBox i
    Next
End Sub

Sub ループ3()
    Dim i As Long
    MsgBox "START"
    For i = 13 To 5 Step -2
    MsgBox i
    Next
    MsgBox "END"
End Sub


Sub ループ4()
    Dim i As Long
    For i = 13 To 5 Step 1
    MsgBox i
    Next
End Sub

Sub ループ5()
    Dim ws As Worksheet
    For Each ws In Worksheets
        ws.Name = "令和7年" & ws.Name
    Next
End Sub
