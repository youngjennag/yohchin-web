Attribute VB_Name = "Module4_1"
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

Sub �C���v�b�g�{�b�N�X�֐�()
    Dim �\�� As String
    �\�� = InputBox("�^�C�g������͂��Ă�������")
    Range("A3").Value = �\��
End Sub

Sub ��r���Z�q1()
    If Range("A1").Value > Range("B1").Value Then
        MsgBox "A1��B1���傫�Ȓl�ł�"
    
    End If
End Sub

Sub ��r���Z�q2()
    If Range("A5").Value Like "*[���{��]" Then
        MsgBox "�Y��"
    End If
End Sub

Sub �_�����Z�q()
    If Range("A1").Value < Range("C1").Value And Range("B1").Value > Range("C1") Then
        MsgBox "C1�̒l��" & Range("A1").Value & "�`" & Range("B1").Value & "�̊Ԃ̒l�ł�"
    Else
        MsgBox "�~"
    End If
End Sub







