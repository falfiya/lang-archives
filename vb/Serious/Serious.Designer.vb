<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Serious
   Inherits System.Windows.Forms.Form

   'Form overrides dispose to clean up the component list.
   <System.Diagnostics.DebuggerNonUserCode()> _
   Protected Overrides Sub Dispose(ByVal disposing As Boolean)
      Try
         If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
         End If
      Finally
         MyBase.Dispose(disposing)
      End Try
   End Sub

   'Required by the Windows Form Designer
   Private components As System.ComponentModel.IContainer

   'NOTE: The following procedure is required by the Windows Form Designer
   'It can be modified using the Windows Form Designer.  
   'Do not modify it using the code editor.
   <System.Diagnostics.DebuggerStepThrough()> _
   Private Sub InitializeComponent()
      Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Serious))
      Me.txtInput = New System.Windows.Forms.RichTextBox()
      Me.btnProcess = New System.Windows.Forms.Button()
      Me.txtOutput = New System.Windows.Forms.RichTextBox()
        Me.SuspendLayout()
        '
        'txtInput
        '
        Me.txtInput.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.txtInput.Location = New System.Drawing.Point(14, 14)
        Me.txtInput.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.txtInput.Name = "txtInput"
        Me.txtInput.Size = New System.Drawing.Size(640, 120)
        Me.txtInput.TabIndex = 0
        Me.txtInput.Text = ""
        '
        'btnProcess
        '
        Me.btnProcess.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnProcess.Location = New System.Drawing.Point(219, 154)
        Me.btnProcess.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnProcess.Name = "btnProcess"
        Me.btnProcess.Size = New System.Drawing.Size(226, 48)
        Me.btnProcess.TabIndex = 1
        Me.btnProcess.Text = "Process Text"
        Me.btnProcess.UseVisualStyleBackColor = True
        '
        'txtOutput
        '
        Me.txtOutput.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.txtOutput.Location = New System.Drawing.Point(14, 225)
        Me.txtOutput.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.txtOutput.Name = "txtOutput"
        Me.txtOutput.Size = New System.Drawing.Size(640, 120)
        Me.txtOutput.TabIndex = 2
        Me.txtOutput.Text = ""
        '
        'Serious
        '
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None
        Me.ClientSize = New System.Drawing.Size(668, 369)
        Me.Controls.Add(Me.txtOutput)
        Me.Controls.Add(Me.btnProcess)
        Me.Controls.Add(Me.txtInput)
        Me.Cursor = System.Windows.Forms.Cursors.Default
        Me.Font = New System.Drawing.Font("Cascadia Code", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.MaximizeBox = False
        Me.Name = "Serious"
        Me.Text = "S e r i o u s"
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents txtInput As RichTextBox
    Friend WithEvents btnProcess As Button
    Friend WithEvents txtOutput As RichTextBox
End Class
