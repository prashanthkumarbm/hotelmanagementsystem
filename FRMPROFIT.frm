VERSION 5.00
Begin VB.Form FRMPROFIT 
   Caption         =   "BILLS GENERATED"
   ClientHeight    =   10665
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18720
   LinkTopic       =   "Form1"
   ScaleHeight     =   10665
   ScaleWidth      =   18720
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "ADD RECEPTIONIST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4680
      TabIndex        =   5
      Top             =   4560
      Width           =   2175
   End
   Begin VB.TextBox text2 
      Enabled         =   0   'False
      Height          =   735
      Left            =   4800
      TabIndex        =   4
      Top             =   2520
      Width           =   3135
   End
   Begin VB.CommandButton cmdclearbill 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4680
      TabIndex        =   2
      Top             =   5520
      Width           =   2175
   End
   Begin VB.TextBox txttotbill 
      Enabled         =   0   'False
      Height          =   735
      Left            =   4800
      TabIndex        =   0
      Top             =   840
      Width           =   3015
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL AMOUNT FROM ROOM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Left            =   720
      TabIndex        =   7
      Top             =   2640
      Width           =   3735
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL  AMOUNT FROM RESTAURANT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Left            =   360
      TabIndex        =   6
      Top             =   1080
      Width           =   4170
   End
   Begin VB.Image Image1 
      Height          =   10740
      Left            =   -360
      Picture         =   "FRMPROFIT.frx":0000
      Top             =   0
      Width           =   30240
   End
   Begin VB.Label Label1 
      Caption         =   "TOTAL AMOUNT FROM ROOM BOOKING"
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Top             =   2280
      Width           =   3135
   End
   Begin VB.Label lbltotbill 
      Caption         =   "TOTAL AMOUNT FROM RESTUARANT"
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   3255
   End
End
Attribute VB_Name = "FRMPROFIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim crs As New ADODB.Recordset


Private Sub cmdclearbill_Click()
frmwelcome.Show
End Sub

Private Sub Command1_Click()
FRMADDRECLOGIN.Show

End Sub

Private Sub Form_Load()
cn.Open " Provider=MSDAORA.1;User ID=scott;password=tiger;Persist Security Info=False"
rs.Open " select * from cuorder ", cn, adOpenDynamic, adLockOptimistic
While Not rs.EOF
TXTTOTBILL.Text = Val(TXTTOTBILL.Text) + rs.Fields(4)
rs.MoveNext
Wend
crs.Open " select * from customer ", cn, adOpenDynamic, adLockOptimistic
While Not crs.EOF
Text2.Text = Val(Text2.Text) + crs.Fields(8)
crs.MoveNext
Wend

End Sub

