Attribute VB_Name = "Module3_1"
Option Explicit

Sub �l���1()
    Dim a
    a = 12
    MsgBox (a)
End Sub

Sub �l���2()
    Dim a As Double
    a = Range("B3").Value
    a = Range("B4").Value
    MsgBox (a)
End Sub

Sub �����A��()
    Dim a As Long
    Dim b As Long
    a = Range("A1").Value
    b = Range("B1").Value
    MsgBox "C:" & a * b
End Sub

