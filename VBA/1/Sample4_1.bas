Attribute VB_Name = "Sample4_1"
Sub if文()
    If Range("A1") = 3 Then
        MsgBox "セルA1に３が入力されています"
    End If
End Sub

Sub if文2()
    If Range("A1") = 3 Then
        MsgBox "セルA1に３が入力されています"
    Else
        MsgBox "セルA1に３以外の数値が入力されています"
    End If
End Sub

Sub if文3()
    If Range("A1") = 3 Then
        MsgBox "セルA1に３が入力されています"
    ElseIf Range("A1") = 4 Then
        MsgBox "セルA1に4が入力されています"
    ElseIf Range("A1") = 5 Then
        MsgBox "セルA1に5が入力されています"
    Else
        MsgBox "セルA1に３,4,5以外の数値が入力されています"
    End If
End Sub




