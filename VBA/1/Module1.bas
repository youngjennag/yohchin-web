Attribute VB_Name = "Module1"
Sub ワークシートの数を取得()
    MsgBox Worksheets.Count
End Sub

Sub 値設定1()
    Range("A1").Value = "TOKYO"
End Sub
Sub 値設定2()
    Range("A2").Value = 2020
End Sub

Sub 値設定3()
    Range("A3").Value = #7/24/2020#
End Sub

Sub 数式の設定1()
    Range("E7").Formula = "=sum(B7:D7)"
End Sub

Sub 数式の設定2()
    Range("C3").Formula = "=if(B3>=5,""〇"",""×"")"
End Sub

Sub 組み込み定数の設定()
    Range("A1:A5").HorizontalAlignment = xlRight
End Sub


Sub 論理値の設定1()
    Range("A1").Font.Bold = True
End Sub

Sub 論理値の設定2()
    Range("A1").Font.Bold = False
End Sub

Sub メソッド1()
    Range("A1:A3").Select
End Sub


Sub メソッド2()
    ActiveSheet.PrintOut From:=2, To:=4
End Sub

Sub メソッド3()
    ActiveSheet.PrintOut 2, 4
End Sub

Sub メソッド4()
    ActiveSheet.PrintOut Copies:=10
End Sub
Sub メソッド5()
    ActiveSheet.PrintOut , , 10
End Sub

Sub 並べ替え()
    Range("A8").Sort _
    Key1:=Range("D8"), Order1:=xlDescending, Header:=xlYes
End Sub

Sub データ抽出()
    Range("A8").AutoFilter _
    field:=3, Criteria1:="調味料", Operator:=xlOr, Criteria2:="生活用品"
End Sub



