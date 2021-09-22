VERSION 5.00
Begin VB.Form FRMRBILL 
   Caption         =   "BILL"
   ClientHeight    =   10410
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17310
   LinkTopic       =   "Form1"
   ScaleHeight     =   10410
   ScaleWidth      =   17310
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "PAYMENT"
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
      Left            =   10680
      TabIndex        =   17
      Top             =   7680
      Width           =   2415
   End
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
      Left            =   8160
      TabIndex        =   16
      Top             =   8520
      Width           =   2535
   End
   Begin VB.PictureBox Adodc2 
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   15360
      ScaleHeight     =   270
      ScaleWidth      =   1515
      TabIndex        =   18
      Top             =   1440
      Width           =   1575
   End
   Begin VB.PictureBox Adodc1 
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   15360
      ScaleHeight     =   270
      ScaleWidth      =   1515
      TabIndex        =   19
      Top             =   720
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CALCULATE"
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
      TabIndex        =   10
      Top             =   7680
      Width           =   2535
   End
   Begin VB.TextBox TXTSEROOMID 
      Height          =   735
      Left            =   8040
      MaxLength       =   3
      TabIndex        =   0
      Top             =   1800
      Width           =   3015
   End
   Begin VB.TextBox TXTTOTBILL 
      Enabled         =   0   'False
      Height          =   735
      Left            =   8040
      TabIndex        =   7
      Top             =   6240
      Width           =   3015
   End
   Begin VB.TextBox TXTBILLROOM 
      DataField       =   "ROOMCOST"
      DataSource      =   "Adodc2"
      Enabled         =   0   'False
      Height          =   735
      Left            =   8040
      TabIndex        =   5
      Top             =   5040
      Width           =   3015
   End
   Begin VB.TextBox txtrbill 
      DataField       =   "TOTAL"
      DataSource      =   "Adodc1"
      Enabled         =   0   'False
      Height          =   735
      Left            =   8040
      TabIndex        =   2
      Top             =   3840
      Width           =   3015
   End
   Begin VB.ListBox LSTBILL 
      DataField       =   "SELECTEDITEM"
      DataSource      =   "Adodc1"
      Enabled         =   0   'False
      Height          =   645
      ItemData        =   "FRMRBILL.frx":0000
      Left            =   8040
      List            =   "FRMRBILL.frx":0002
      TabIndex        =   1
      Top             =   2880
      Width           =   3015
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   7200
      TabIndex        =   20
      Top             =   360
      Width           =   2175
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL  AMOUNT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5160
      TabIndex        =   15
      Top             =   6480
      Width           =   2295
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL OF ROOM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Top             =   5280
      Width           =   2415
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL OF FOOD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      TabIndex        =   13
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "THE FOOD ITEMS ARE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      TabIndex        =   12
      Top             =   3000
      Width           =   2295
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "ROOM ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5280
      TabIndex        =   11
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   19170
      Left            =   0
      Picture         =   "FRMRBILL.frx":0004
      Top             =   0
      Width           =   25560
   End
   Begin VB.Label Label5 
      Caption         =   "ROOM ID"
      Height          =   375
      Left            =   1320
      TabIndex        =   9
      Top             =   840
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "TOTAL AMOUNT"
      Height          =   495
      Left            =   1320
      TabIndex        =   8
      Top             =   5160
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "BILL OF ROOM"
      Height          =   735
      Left            =   1200
      TabIndex        =   6
      Top             =   4080
      Width           =   2295
   End
   Begin VB.Label Label2 
      Caption         =   "BILL OF FOOD "
      Height          =   495
      Left            =   1200
      TabIndex        =   4
      Top             =   3120
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "THE  FOOD ITEMS ARE"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   2040
      Width           =   2535
   End
End
Attribute VB_Name = "FRMRBILL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim crs As New ADODB.Recordset
Private Sub Command1_Click()
If TXTSEROOMID.Text = "" Then
MsgBox " ENTER ROOM ID !!"
Else
If rs.State Then
rs.Close
End If
If crs.State Then
crs.Close
End If
rs.Open " select * from cuorder where orderid = " & Val(TXTSEROOMID.Text) & ""
While Not rs.EOF

LSTBILL.AddItem (rs.Fields(3))
txtrbill.Text = Val(txtrbill.Text) + rs.Fields(4)
rs.MoveNext
Wend


crs.Open " select * from customer where roomid = '" & Val(TXTSEROOMID.Text) & "'"
TXTBILLROOM.Text = crs.Fields(8)


TXTTOTBILL.Text = Val(txtrbill.Text) + Val(TXTBILLROOM.Text)

End If
End Sub



Private Sub Command2_Click()

FRMRWORK.Show
TXTSEROOMID.Text = ""
LSTBILL.Text = ""
txtrbill.Text = ""
TXTBILLROOM.Text = ""
TXTTOTBILL.Text = ""
End Sub

Private Sub Command3_Click()
If TXTSEROOMID.Text = "" Then
MsgBox "enter room id !!!!!1"
Else

frmpayment.Show
TXTSEROOMID.Text = ""
LSTBILL.Text = ""
txtrbill.Text = ""
TXTBILLROOM.Text = ""
TXTTOTBILL.Text = ""
End If

End Sub

Private Sub Form_Load()
cn.Open " Provider=MSDAORA.1;User ID=scott;password=tiger;Persist Security Info=False"
rs.Open " select * from cuorder ", cn, adOpenDynamic, adLockOptimistic
crs.Open " select * from customer ", cn, adOpenDynamic, adLockOptimistic
TXTSEROOMID.Text = ""
LSTBILL.Text = ""
txtrbill.Text = ""
TXTBILLROOM.Text = ""
TXTTOTBILL.Text = ""
Adodc1.Visible = False
Adodc2.Visible = False

End Sub

Private Sub TXTSEROOMID_KeyPress(KeyAscii As Integer)
If Not IsNumeric(TXTSEROOMID.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0
End Sub
