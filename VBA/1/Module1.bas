Attribute VB_Name = "Module1"
Sub ���[�N�V�[�g�̐����擾()
    MsgBox Worksheets.Count
End Sub

Sub �l�ݒ�1()
    Range("A1").Value = "TOKYO"
End Sub
Sub �l�ݒ�2()
    Range("A2").Value = 2020
End Sub

Sub �l�ݒ�3()
    Range("A3").Value = #7/24/2020#
End Sub

Sub �����̐ݒ�1()
    Range("E7").Formula = "=sum(B7:D7)"
End Sub


Sub �����̐ݒ�2()
    Range("C3").Formula = "=if(B3>=5,""�Z"",""�~"")"
End Sub


Sub �g�ݍ��ݒ萔�̐ݒ�()
    Range("A1:A5").HorizontalAlignment = xlRight
End Sub


Sub �_���l�̐ݒ�1()
    Range("A1").Font.Bold = True
End Sub

Sub �_���l�̐ݒ�2()
    Range("A1").Font.Bold = False
End Sub



