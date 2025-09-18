Attribute VB_Name = "Module9_1"
Sub work1()
    Worksheets("work1").Select
    Range("A1").Font.Name = "Aria Black"
End Sub


Sub work2()
    Worksheets("work2").Select
    Range("A1").Font.Bold = True
    Range("A2").Font.Italic = True
    Range("A3").Font.Underline = True
End Sub

Sub work3()
    Worksheets("work3").Select
    Range("A1").HorizontalAlignment = xlRight
    Range("A2").VerticalAlignment = xlBottom
End Sub

Sub work4()
    Worksheets("work4").Select
    Range("A1:E11").MergeCells = True
End Sub





