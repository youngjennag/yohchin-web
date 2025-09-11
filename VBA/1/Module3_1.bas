Attribute VB_Name = "Module3_1"
Option Explicit

Sub 値代入1()
    Dim a
    a = 12
    MsgBox (a)
End Sub

Sub 値代入2()
    Dim a As Double
    a = Range("B3").Value
    a = Range("B4").Value
    MsgBox (a)
End Sub

Sub 文字連結()
    Dim a As Long
    Dim b As Long
    a = Range("A1").Value
    b = Range("B1").Value
    MsgBox "C:" & a * b
End Sub


Sub 表示形式変更()
    MsgBox Format(0.9786, "0.0%")
End Sub

Sub 今日の日付()
    MsgBox Date
End Sub

Sub Msg例()
    MsgBox "犬は好きですか？", vbYesNo, "質問"
End Sub
Sub Msg例2()
    Dim 回答 As Long
    回答 = MsgBox("犬は好きですか？", vbYesNo, "質問")
    MsgBox 回答, vbOKOnly, "押されたボタン"
End Sub
