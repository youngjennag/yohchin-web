Attribute VB_Name = "Module8_1"
Sub �I�[�v��()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\�I�[�v���p.xlsm")
End Sub

Sub ����()
    Workbooks("�I�[�v���p.xlsm").Close
End Sub

Sub �I�[�v���p2()
    Dim �t�@�C���� As String
    �t�@�C���� = Dir("C:\Users\chiny\OneDrive\Desktop\VBA\1\OpenClose\����.xlsm")
    MsgBox �t�@�C����
End Sub


Sub �I�[�v���p3()
    Dim �t�@�C���� As String
    �t�@�C���� = Dir("C:\Users\chiny\OneDrive\Desktop\VBA\1\OpenClose\*.xlsm")
    MsgBox �t�@�C����
   �t�@�C���� = Dir
    MsgBox �t�@�C����
    �t�@�C���� = Dir
    MsgBox �t�@�C����
    �t�@�C���� = Dir
    MsgBox �t�@�C����
    �t�@�C���� = Dir
    MsgBox �t�@�C����
End Sub

Sub �R�s�[1()
    Range("A1").Copy Destination:=Range("D1")
End Sub

Sub �R�s�[2()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\�I�[�v���p.xlsm")
    Range("A1").Copy _
    Destination:=ThisWorkbook.ActiveSheet.Range("A1")
    Workbooks("�I�[�v���p.xlsm").Close
End Sub

Sub �R�s�[3()
    Workbooks.Open ("C:\Users\chiny\OneDrive\Desktop\VBA\1\�I�[�v���p.xlsm")
    Range("A1").Resize(3, 3).Copy _
    Destination:=ThisWorkbook.ActiveSheet.Range("A1:C3")
    Workbooks("�I�[�v���p.xlsm").Close
End Sub




