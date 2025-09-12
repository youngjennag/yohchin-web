Attribute VB_Name = "Module4_1"
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

Sub インプットボックス関数()
    Dim 表題 As String
    表題 = InputBox("タイトルを入力してください")
    Range("A3").Value = 表題
End Sub

Sub 比較演算子1()
    If Range("A1").Value > Range("B1").Value Then
        MsgBox "A1はB1より大きな値です"
    
    End If
End Sub

Sub 比較演算子2()
    If Range("A5").Value Like "*[道府県]" Then
        MsgBox "該当"
    End If
End Sub

Sub 論理演算子()
    If Range("A1").Value < Range("C1").Value And Range("B1").Value > Range("C1") Then
        MsgBox "C1の値は" & Range("A1").Value & "～" & Range("B1").Value & "の間の値です"
    Else
        MsgBox "×"
    End If
End Sub







