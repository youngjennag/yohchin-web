Attribute VB_Name = "Sample4_1"
Sub if��()
    If Range("A1") = 3 Then
        MsgBox "�Z��A1�ɂR�����͂���Ă��܂�"
    End If
End Sub

Sub if��2()
    If Range("A1") = 3 Then
        MsgBox "�Z��A1�ɂR�����͂���Ă��܂�"
    Else
        MsgBox "�Z��A1�ɂR�ȊO�̐��l�����͂���Ă��܂�"
    End If
End Sub

Sub if��3()
    If Range("A1") = 3 Then
        MsgBox "�Z��A1�ɂR�����͂���Ă��܂�"
    ElseIf Range("A1") = 4 Then
        MsgBox "�Z��A1��4�����͂���Ă��܂�"
    ElseIf Range("A1") = 5 Then
        MsgBox "�Z��A1��5�����͂���Ă��܂�"
    Else
        MsgBox "�Z��A1�ɂR,4,5�ȊO�̐��l�����͂���Ă��܂�"
    End If
End Sub




