Public Class Serious
   Function SpaceOut(s As String) As String
      Dim out = New List(Of String)
      For Each c As Char In s.ToCharArray()
         out.Add(c.ToString)
      Next
      Return String.Join(" "c, out)
   End Function
   ReadOnly strProcess0 As String = "Process Text"
   ReadOnly strProcess1 As String = SpaceOut(strProcess0)
   Private Sub btnProcess_MouseDown(sender As Object, e As EventArgs) Handles btnProcess.MouseDown
      btnProcess.Text = strProcess1
   End Sub
   Private Sub btnProcess_MouseUp(sender As Object, e As EventArgs) Handles btnProcess.MouseUp
      btnProcess.Text = strProcess0
   End Sub
   Private Sub btnProcess_Click(sender As Object, e As EventArgs) Handles btnProcess.Click
      txtOutput.Text = SpaceOut(txtInput.Text)
   End Sub
End Class
