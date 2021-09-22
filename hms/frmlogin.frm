VERSION 5.00
Begin VB.Form frmadminlogin 
   BackColor       =   &H00FFFFFF&
   Caption         =   "admin login form"
   ClientHeight    =   11940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   20865
   LinkTopic       =   "Form1"
   ScaleHeight     =   11940
   ScaleWidth      =   20865
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdforgot 
      Caption         =   "FORGOT PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   11520
      TabIndex        =   4
      Top             =   6360
      Width           =   1935
   End
   Begin VB.CommandButton cmdcancel 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   9240
      TabIndex        =   3
      Top             =   6360
      Width           =   1695
   End
   Begin VB.CommandButton cmdlogin 
      Caption         =   "LOGIN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6720
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   2
      Top             =   6360
      Width           =   1815
   End
   Begin VB.TextBox txtpassword 
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      IMEMode         =   3  'DISABLE
      Left            =   8880
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   4200
      Width           =   2655
   End
   Begin VB.TextBox txtuname 
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   8880
      TabIndex        =   0
      Top             =   2640
      Width           =   2655
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   6720
      TabIndex        =   8
      Top             =   4320
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "USER NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   6720
      TabIndex        =   7
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Image Image1 
      Height          =   15000
      Left            =   -120
      Picture         =   "frmlogin.frx":0000
      Top             =   -120
      Width           =   24000
   End
   Begin VB.Label LBLPASSWORD 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   300
      Left            =   7920
      TabIndex        =   6
      Top             =   4200
      Width           =   1575
   End
   Begin VB.Label lbluname 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "USER NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   300
      Left            =   7800
      TabIndex        =   5
      Top             =   2760
      Width           =   1605
   End
End
Attribute VB_Name = "frmadminlogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset



Private Sub cmdcancel_Click()
txtuname.Text = ""
txtpassword.Text = ""
frmwelcome.Show
End Sub

Private Sub cmdforgot_Click()
txtuname.Text = ""
txtpassword.Text = ""
frmforgot.Show
End Sub

Private Sub cmdlogin_Click()
If txtuname.Text = "" Or txtpassword.Text = "" Then
MsgBox " ENTER ALL DETAILS !!!!1"
Else
If rs.State Then
rs.Close
End If
rs.Open "select * from login where uname = '" & txtuname.Text & "'and pwd = '" & txtpassword.Text & "'", cn, adOpenDynamic, adLockOptimistic

If rs.EOF Then
MsgBox " LOGIN UNSUCCESFULL"
Else
FRMPROFIT.Show
End If
txtuname.Text = ""
txtpassword.Text = ""
txtuname.SetFocus
Unload Me
cn.Close
End If
End Sub

Private Sub Command1_Click()

End Sub

Private Sub Form_Load()
cn.Open "Provider=MSDAORA.1;User ID=scott;password= tiger;Persist Security Info=False"
rs.Open " select * from login ", cn, adOpenDynamic, adLockOptimistic
txtuname.Text = ""
txtpassword.Text = ""
End Sub

Private Sub Option1_Click()


End Sub

Private Sub txtuname_KeyPress(KeyAscii As Integer)
If (KeyAscii > 64 And KeyAscii < 91) Or (KeyAscii > 96 And KeyAscii < 123) Or KeyAscii = 8 Or KeyAscii = 32 Then
TXTCUNAME = TXTCUNAME
Else
KeyAscii = o
MsgBox " ENTER VALID USERNAME!!!!!"
End If
End Sub
