Attribute VB_Name = "Module7_1"
Option Explicit

Sub ���[�v()
    Dim i As Long
    For i = 1 To 3
    MsgBox i
    Next
End Sub

Sub ���[�v2()
    Dim i As Long
    For i = 1 To 5 Step 2
    MsgBox i
    Next
End Sub

Sub ���[�v3()
    Dim i As Long
    MsgBox "START"
    For i = 13 To 5 Step -2
    MsgBox i
    Next
    MsgBox "END"
End Sub


Sub ���[�v4()
    Dim i As Long
    For i = 13 To 5 Step 1
    MsgBox i
    Next
End Sub

Sub ���[�v5()
    Dim ws As Worksheet
    For Each ws In Worksheets
        ws.Name = "�ߘa7�N" & ws.Name
    Next
End Sub
