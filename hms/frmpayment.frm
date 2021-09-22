VERSION 5.00
Begin VB.Form frmpayment 
   Caption         =   "PAYMENT"
   ClientHeight    =   7920
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15195
   LinkTopic       =   "Form1"
   ScaleHeight     =   7920
   ScaleWidth      =   15195
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H000080FF&
      Caption         =   "CARD PAYMENT"
      Height          =   4455
      Left            =   11400
      TabIndex        =   4
      Top             =   1560
      Width           =   3855
      Begin VB.CommandButton Command2 
         Caption         =   "PAY VIA BHIM"
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
         Left            =   840
         TabIndex        =   5
         Top             =   2760
         Width           =   2055
      End
      Begin VB.TextBox Text2 
         Height          =   405
         Left            =   960
         TabIndex        =   1
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label1 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "ENTER BHIM UPI FOR CARD PAYMENT"
         Enabled         =   0   'False
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   1080
         Width           =   3375
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10200
      TabIndex        =   3
      Top             =   7320
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0C0C0&
      Height          =   855
      Left            =   6840
      TabIndex        =   0
      Top             =   1680
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PAY VIA CASH"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6960
      TabIndex        =   2
      Top             =   4560
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "ENTER ROOM ID FOR PAYMENT"
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
      Left            =   2760
      TabIndex        =   7
      Top             =   1920
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   13140
      Left            =   0
      Picture         =   "frmpayment.frx":0000
      Top             =   -1080
      Width           =   31530
   End
End
Attribute VB_Name = "frmpayment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rs1 As New ADODB.Recordset
Dim X As Integer
Dim v As Integer
Dim Z As Integer




Private Sub Command1_Click()
If Text1.Text = "" Then
MsgBox " ENTER ROOM ID "
Else

X = MsgBox("IS CASH RECEIVED ?????", vbOKCancel, "CASH PAYMENT")

If X = vbOK Then
cn.Execute "delete from cuorder where ORDERID= '" & Val(Text1.Text) & "' "
cn.Execute "delete from customer where roomid= '" & Val(Text1.Text) & "' "
MsgBox " SUCCESFULL"
Text1.Text = ""
End If
End If
cn.Close
End Sub

Private Sub Command2_Click()
If Text1.Text = "" Then
MsgBox "ENTER ROOM ID !!!!!"
Else
If Text2.Text = "" Then
MsgBox "ENTER BHIM UPI ID "
Text2.SetFocus
Else

Z = MsgBox(Val(Text2.Text))
If Z = vbOK Then

cn.Execute "delete from cuorder where ORDERID= '" & Val(Text1.Text) & "' "
cn.Execute "delete from customer where roomid= '" & Val(Text1.Text) & "' "
MsgBox " SUCCESFULL"
Text1.Text = ""
End If
End If
End If
End Sub

Private Sub Command3_Click()
FRMRWORK.Show
End Sub

Private Sub Form_Load()
cn.Open " Provider=MSDAORA.1;User ID=scott;password=tiger;Persist Security Info=False"
rs.Open " select * from cuorder", cn, adOpenDynamic, adLockOptimistic
rs1.Open " select * from customer ", cn, adOpenDynamic, adLockOptimistic
Text1.Text = ""
Text1.SetFocus
End Sub

