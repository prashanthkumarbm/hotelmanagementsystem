VERSION 5.00
Begin VB.Form FRMRLOGIN 
   Caption         =   "RECEPTIONIST LOGIN"
   ClientHeight    =   10365
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17550
   LinkTopic       =   "Form1"
   ScaleHeight     =   10365
   ScaleWidth      =   17550
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   8880
      TabIndex        =   8
      Top             =   7080
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "FORGOT PASSWORD"
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
      Left            =   11760
      TabIndex        =   5
      Top             =   5520
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "LOGIN"
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
      Left            =   8160
      TabIndex        =   4
      Top             =   5520
      Width           =   3135
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00E0E0E0&
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
      Left            =   8040
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   2880
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00E0E0E0&
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
      Left            =   8040
      TabIndex        =   0
      Top             =   1440
      Width           =   3135
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   855
      Left            =   5160
      TabIndex        =   7
      Top             =   3000
      Width           =   2055
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "USER NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   735
      Left            =   5160
      TabIndex        =   6
      Top             =   1680
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   13995
      Left            =   -960
      Picture         =   "FRMRLOGIN.frx":0000
      Top             =   0
      Width           =   24000
   End
   Begin VB.Label Label2 
      Caption         =   "PASSWORD"
      Height          =   735
      Left            =   1680
      TabIndex        =   3
      Top             =   2400
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "USER NAME"
      Height          =   495
      Left            =   1800
      TabIndex        =   2
      Top             =   1200
      Width           =   2415
   End
End
Attribute VB_Name = "FRMRLOGIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset

Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Then
MsgBox "ENTER ALL THE DETAILS !!!!!!!!!!!"
Else
If rs.State Then
rs.Close
End If
rs.Open "select * from rlogin where username = '" & Text1.Text & "'and password = '" & Text2.Text & "'", cn, adOpenDynamic, adLockOptimistic

If rs.EOF Then
MsgBox " LOGIN UNSUCCESFULL"
Text1.Text = ""
Text2.Text = ""
Else
FRMRWORK.Show
Text1.Text = ""
Text2.Text = ""


End If
End If

End Sub

Private Sub Command2_Click()
FRMRFORGOT.Show
End Sub

Private Sub Command3_Click()

frmwelcome.Show
End Sub

Private Sub Form_Load()
cn.Open "Provider=MSDAORA.1;User ID=scott;password= tiger;Persist Security Info=False"
rs.Open " select * from rlogin ", cn, adOpenDynamic, adLockOptimistic
Text1.Text = ""
Text2.Text = ""
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If (KeyAscii > 64 And KeyAscii < 91) Or (KeyAscii > 96 And KeyAscii < 123) Or KeyAscii = 8 Or KeyAscii = 32 Then
TXTCUNAME = TXTCUNAME
Else
KeyAscii = o
MsgBox " ENTER VALID USERNAME!!!!!"
End If
End Sub
