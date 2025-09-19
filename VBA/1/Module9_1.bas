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

Sub work5()
    Worksheets("work5").Select
    Range("A1").Interior.Color = RGB(0, 100, 255)
    Range("A1").Font.Color = vbWhite
End Sub

Sub work6()
    Worksheets("work6").Select
    Range("A1:C4").Borders.LineStyle = xlSlantDashDot
    Range("D1:F4").BorderAround Weight:=xlThin
End Sub

Sub work7()
    Worksheets("work7").Select
    Range("A1:C4").Select
End Sub

Sub work8()
    Worksheets("work8").Select
    Range("A1").Cut Destination:=Range("B1")
    Range("A2").Copy Destination:=Range("B2")
End Sub





