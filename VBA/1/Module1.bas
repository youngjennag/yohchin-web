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

Sub ���\�b�h1()
    Range("A1:A3").Select
End Sub


Sub ���\�b�h2()
    ActiveSheet.PrintOut From:=2, To:=4
End Sub

Sub ���\�b�h3()
    ActiveSheet.PrintOut 2, 4
End Sub

Sub ���\�b�h4()
    ActiveSheet.PrintOut Copies:=10
End Sub
Sub ���\�b�h5()
    ActiveSheet.PrintOut , , 10
End Sub

Sub ���בւ�()
    Range("A8").Sort _
    Key1:=Range("D8"), Order1:=xlDescending, Header:=xlYes
End Sub

Sub �f�[�^���o()
    Range("A8").AutoFilter _
    field:=3, Criteria1:="������", Operator:=xlOr, Criteria2:="�����p�i"
End Sub



