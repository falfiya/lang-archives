Imports System.Text
Imports AnsiCodes.Color

Module Quadratic
   Private Function Ph(s As String) As String
      Return $"{Cyan}{s}"
   End Function

   ReadOnly reset = AnsiCodes.Reset.All
   ReadOnly x = $"{LtGray}x"
   ReadOnly plus = $"{Red}+ "
   ReadOnly eq = $"{Red} = "
   ReadOnly ph_a = Ph("a")
   ReadOnly ph_b = Ph("b")
   ReadOnly ph_c = Ph("c")
   ReadOnly zero = FormatCoeff(0)

   Private Function FormatCoeff(i As Integer) As String
      If i = 1 Then
         Return ""
      Else
         Return $"{LtRed}{i}"
      End If
   End Function
   Private Function VarPrompt(v As String) As String
      Console.Write($"{v}{eq}{Magenta}{reset}")
      Return Convert.ToInt32(Console.ReadLine)
   End Function
   Private Sub PrintEq(a As String, b As String, c As String)
      ' It's faster to allocate once
      Dim sb As New StringBuilder(64)
      sb _
         .Append($"{a}{x}{Yellow}² ") _
         .Append(plus) _
         .Append($"{b}{x}") _
         .Append(plus) _
         .Append(c) _
         .Append(eq) _
         .Append($"{zero}{reset}")
      Console.WriteLine(sb.ToString)
   End Sub
   Sub Main()
      PrintEq(ph_a, ph_b, ph_c)
      Dim a = VarPrompt(ph_a)
      Dim fmt_a = FormatCoeff(a)
      PrintEq(fmt_a, ph_b, ph_c)
      Dim b = VarPrompt(ph_b)
      Dim fmt_b = FormatCoeff(b)
      PrintEq(fmt_a, fmt_b, ph_c)
      Dim c = VarPrompt(ph_c)
      Dim fmt_c = FormatCoeff(c)
      PrintEq(fmt_a, fmt_b, fmt_c)

      Dim discriminant = b * b - 4 * a * c
      If discriminant < 0 Then
         Console.WriteLine($"{x}{reset} has no real solutions")
         Environment.Exit(1)
      End If

      Dim sd = Math.Sqrt(discriminant)
      Dim a2 = 2 * a
      Dim plus = (sd - b) / a2
      Dim minus = (-sd - b) / a2

      If discriminant = 0 Then
         Console.WriteLine($"{x}{eq}{reset}{plus}")
      Else
         Console.WriteLine($"{x}{reset} has two solutions: {Green}[{LtRed}{plus}{reset}, {LtRed}{minus}{Green}]{reset}")
      End If
   End Sub
End Module
