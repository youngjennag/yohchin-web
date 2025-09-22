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

Sub work9()
    Worksheets("work9").Select
    Range("A1").Copy
    ActiveSheet.Paste Destination:=Range("A2")
End Sub

Sub work10()
    Worksheets("work10").Select
    Application.CutCopyMode = False
End Sub

Sub work11()
    Worksheets("work11").Select
    Range("A1:C1").Columns.AutoFit
End Sub

Sub work12()
    Worksheets("work12").Select
    'Columns("C").Insert
    Rows(2).Insert CopyOrigin:=xlFormatRightOrBelow
End Sub

Sub work13()
    Worksheets("work13").Select
    Columns(2).Delete
End Sub

Sub AutoFilter複数条件()
    Range("A1:C4").AutoFilter _
        Field:=2, _
        Criteria1:="データA", _
        Operator:=xlOr, _
        Criteria2:="データC"
End Sub

Sub work14()
    Worksheets("work14").Select
    ActiveSheet.AutoFilterMode = False
End Sub

Sub work15()
    Worksheets("work15").Select
    Worksheets("work15_2").Select False
End Sub

Sub work16()
    Worksheets("work16").Select
    Worksheets("work16").Name = "ABC"
End Sub

Sub work17()
    Worksheets("work17").Select
    Worksheets("work17").Copy after:=Worksheets("work17")
End Sub

Sub work18()
    Worksheets("work18").Select
    Worksheets.Add before:=Worksheets("work18")
End Sub

Sub work19()
    Worksheets("work19").Select
    Worksheets.Add before:=Worksheets("work19")
    'Application.DisplayAlerts = False
    Worksheets("work19").Delete
    Application.DisplayAlerts = True
End Sub

Sub work20()
    Workbooks("Sample9_1.xlsm").Activate
End Sub

Sub work21()
    Worksheets("work21").Select
    Range("B2") = Workbooks(1).Path
    Range("B3") = Workbooks(1).Name
End Sub

Sub work22()
    Worksheets("work22").Select
    Workbooks.Add
End Sub

Sub work23()
    Worksheets("work23").Select
    Workbooks.Open "○○.xlsx"
End Sub

Sub work24()
    Worksheets("work24").Select
    Workbooks(2).Close
End Sub

Sub work25()
    Application.Quit
End Sub

