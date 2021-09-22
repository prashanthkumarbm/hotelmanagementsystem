VERSION 5.00
Begin VB.Form FRMRFORGOT 
   Caption         =   "RECEPTIONIST  FORGOT PASSWORD"
   ClientHeight    =   11955
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18030
   LinkTopic       =   "Form2"
   ScaleHeight     =   11955
   ScaleWidth      =   18030
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
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
      Left            =   8520
      TabIndex        =   10
      Top             =   8040
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   8040
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   4680
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "UPDATE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   8520
      TabIndex        =   5
      Top             =   6360
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   8040
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   3360
      Width           =   3375
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   8040
      TabIndex        =   0
      Top             =   1920
      Width           =   3375
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "RE ENTER PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   735
      Left            =   4200
      TabIndex        =   9
      Top             =   4800
      Width           =   3375
   End
   Begin VB.Label Label5 
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
      ForeColor       =   &H00FFFF00&
      Height          =   495
      Left            =   4320
      TabIndex        =   8
      Top             =   3600
      Width           =   2175
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "ENTER EMAIL ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   615
      Left            =   4320
      TabIndex        =   7
      Top             =   1920
      Width           =   2655
   End
   Begin VB.Image Image1 
      Height          =   13500
      Left            =   -360
      Picture         =   "FRMRFORGOT.frx":0000
      Top             =   0
      Width           =   24300
   End
   Begin VB.Label Label3 
      Caption         =   "RE ENTER PASWORD"
      Height          =   495
      Left            =   1200
      TabIndex        =   6
      Top             =   3720
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "PASSWORD"
      Height          =   615
      Left            =   1200
      TabIndex        =   4
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER EMAIL ID"
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   960
      Width           =   2655
   End
End
Attribute VB_Name = "FRMRFORGOT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset

Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Then
MsgBox " ENTER ALL THE DETAILS !!!!!!"
Else
If rs.State Then
rs.Close
End If
cn.Execute " update rlogin set password = '" & Text2.Text & "' where email= '" & Text1.Text & "'"

If Text2.Text = Text3.Text Then
MsgBox " password updated"
Else
MsgBox " please enter all details correctly"
End If
End If
cn.Close
End Sub


Private Sub Form_Load()
cn.Open "Provider=MSDAORA.1;User ID=scott;password= tiger;Persist Security Info=False"
rs.Open " select * from rlogin ", cn, adOpenDynamic, adLockOptimistic
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
End Sub

