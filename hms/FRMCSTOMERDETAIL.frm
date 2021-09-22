VERSION 5.00
Begin VB.Form FRMCSTOMERDETAIL 
   Caption         =   "CUSTOMER DETAIL"
   ClientHeight    =   10170
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   19275
   LinkTopic       =   "Form1"
   ScaleHeight     =   10170
   ScaleWidth      =   19275
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
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
      Height          =   855
      Left            =   18600
      TabIndex        =   40
      Top             =   8640
      Width           =   1695
   End
   Begin VB.ComboBox cmbgender 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      ItemData        =   "FRMCSTOMERDETAIL.frx":0000
      Left            =   6120
      List            =   "FRMCSTOMERDETAIL.frx":000D
      TabIndex        =   2
      Top             =   2400
      Width           =   2415
   End
   Begin VB.TextBox txtckout 
      Enabled         =   0   'False
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
      Left            =   16200
      TabIndex        =   23
      Top             =   3600
      Width           =   2295
   End
   Begin VB.TextBox txtckin 
      Enabled         =   0   'False
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
      Left            =   16200
      TabIndex        =   21
      Top             =   2160
      Width           =   2295
   End
   Begin VB.ListBox lsttyperoom 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      ItemData        =   "FRMCSTOMERDETAIL.frx":0027
      Left            =   6120
      List            =   "FRMCSTOMERDETAIL.frx":0031
      TabIndex        =   20
      Top             =   7440
      Width           =   2415
   End
   Begin VB.TextBox txtnonac 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   17280
      TabIndex        =   19
      Top             =   7560
      Width           =   1695
   End
   Begin VB.TextBox txtac 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   15240
      TabIndex        =   18
      Top             =   7560
      Width           =   1695
   End
   Begin VB.TextBox txtshbill 
      Enabled         =   0   'False
      Height          =   735
      Left            =   9000
      TabIndex        =   17
      Top             =   9000
      Width           =   2295
   End
   Begin VB.TextBox txtcurid 
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
      Left            =   16080
      MaxLength       =   3
      TabIndex        =   7
      Top             =   720
      Width           =   2295
   End
   Begin VB.CommandButton cmdcunew 
      Caption         =   "SAVE"
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
      Left            =   16680
      TabIndex        =   16
      Top             =   8640
      Width           =   1575
   End
   Begin VB.TextBox TXTCUID 
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
      Left            =   6120
      TabIndex        =   1
      Top             =   1320
      Width           =   2415
   End
   Begin VB.CommandButton CMDCUCALCULATE 
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
      Height          =   735
      Left            =   6240
      TabIndex        =   14
      Top             =   9000
      Width           =   2175
   End
   Begin VB.TextBox TXTCUDAYS 
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
      Left            =   6120
      TabIndex        =   6
      Top             =   6120
      Width           =   2415
   End
   Begin VB.TextBox TXTCUEMAIL 
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
      Left            =   6120
      TabIndex        =   5
      Top             =   5160
      Width           =   2415
   End
   Begin VB.TextBox TXTCUCN 
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
      Left            =   6120
      MaxLength       =   10
      TabIndex        =   4
      Top             =   4200
      Width           =   2415
   End
   Begin VB.TextBox TXTCUADDRESS 
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
      Left            =   6120
      TabIndex        =   3
      Top             =   3240
      Width           =   2415
   End
   Begin VB.TextBox TXTCUNAME 
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
      Left            =   6120
      TabIndex        =   0
      Top             =   360
      Width           =   2415
   End
   Begin VB.Label Label17 
      BackStyle       =   0  'Transparent
      Caption         =   "NON-AC COST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   855
      Left            =   17160
      TabIndex        =   39
      Top             =   6720
      Width           =   2175
   End
   Begin VB.Label Label16 
      BackStyle       =   0  'Transparent
      Caption         =   "AC COST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   735
      Left            =   15360
      TabIndex        =   38
      Top             =   6720
      Width           =   1575
   End
   Begin VB.Label Label15 
      BackStyle       =   0  'Transparent
      Caption         =   "CHECK-OUT DATE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   615
      Left            =   13680
      TabIndex        =   37
      Top             =   3600
      Width           =   1935
   End
   Begin VB.Label Label14 
      BackStyle       =   0  'Transparent
      Caption         =   "CHECK-IN DATE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   13680
      TabIndex        =   36
      Top             =   2280
      Width           =   2295
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "ROOM ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   375
      Left            =   13800
      TabIndex        =   35
      Top             =   840
      Width           =   1695
   End
   Begin VB.Label Label12 
      BackStyle       =   0  'Transparent
      Caption         =   "TYPE OF ROOM  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   735
      Left            =   3480
      TabIndex        =   34
      Top             =   7560
      Width           =   2055
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "NUMBER OF STAYING DAYS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   615
      Left            =   3360
      TabIndex        =   33
      Top             =   6240
      Width           =   2055
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "EMAIL - ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   3360
      TabIndex        =   32
      Top             =   5280
      Width           =   1935
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "CONTACT NUMBER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   3360
      TabIndex        =   31
      Top             =   4320
      Width           =   2775
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "ADDRESS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   3360
      TabIndex        =   30
      Top             =   3240
      Width           =   1815
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "GENDER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   375
      Left            =   3360
      TabIndex        =   29
      Top             =   2400
      Width           =   2295
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "CUSTOMER ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   3360
      TabIndex        =   28
      Top             =   1440
      Width           =   2055
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400040&
      Height          =   495
      Left            =   3360
      TabIndex        =   27
      Top             =   480
      Width           =   2175
   End
   Begin VB.Image Image1 
      Height          =   20160
      Left            =   -120
      Picture         =   "FRMCSTOMERDETAIL.frx":0041
      Top             =   0
      Width           =   30225
   End
   Begin VB.Label Label4 
      Caption         =   "NON -AC"
      Height          =   255
      Left            =   9960
      TabIndex        =   26
      Top             =   6000
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "AC COST"
      Height          =   255
      Left            =   7560
      TabIndex        =   25
      Top             =   6000
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "check out date"
      Height          =   495
      Left            =   6840
      TabIndex        =   24
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "check in date"
      Height          =   495
      Left            =   6720
      TabIndex        =   22
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Label LBLCUID 
      Caption         =   "ID"
      Height          =   255
      Left            =   840
      TabIndex        =   15
      Top             =   1440
      Width           =   615
   End
   Begin VB.Label LBLCUND 
      Caption         =   "NUMBER OF STAYING DAYS"
      Height          =   495
      Left            =   840
      TabIndex        =   13
      Top             =   5760
      Width           =   1575
   End
   Begin VB.Label LBLCUEMAIL 
      Caption         =   "EMAIL- ID"
      Height          =   375
      Left            =   840
      TabIndex        =   12
      Top             =   4800
      Width           =   1695
   End
   Begin VB.Label LBLCUNAME 
      Caption         =   "CONTACT NUMBER"
      Height          =   375
      Left            =   840
      TabIndex        =   11
      Top             =   3840
      Width           =   1695
   End
   Begin VB.Label LBLCUADDRESS 
      Caption         =   "ADDRESS"
      Height          =   495
      Left            =   840
      TabIndex        =   10
      Top             =   2880
      Width           =   1335
   End
   Begin VB.Label LBLGENDER 
      Caption         =   "GENDER"
      Height          =   375
      Left            =   840
      TabIndex        =   9
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label LBLNAME 
      Caption         =   "NAME"
      Height          =   495
      Left            =   840
      TabIndex        =   8
      Top             =   480
      Width           =   975
   End
End
Attribute VB_Name = "FRMCSTOMERDETAIL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New Recordset

Private Sub CMDCUCALCULATE_Click()
If TXTCUID.Text = "" Or TXTCUCN.Text = "" Or TXTCUDAYS.Text = "" Or TXTCUNAME.Text = "" Or txtcurid.Text = "" Or cmbgender.Text = "" Or TXTCUADDRESS.Text = "" Or TXTCUEMAIL.Text = "" Then
MsgBox " ENTER ALL DETAILS !!!!!!!!!!"
Else



If lsttyperoom.Text = "AC" Then
v = InputBox("ENTER THE NUMBER OF PERSONS ")
  If Len(v) <= 0 Then Exit Sub
   txtshbill.Text = TXTCUDAYS.Text * 1200 * Val(v)
   End If
   
If lsttyperoom.Text = "NON AC" Then
v = InputBox("ENTER THE NUMBER OF PERSONS ")
  If Len(v) <= 0 Then Exit Sub
   txtshbill.Text = TXTCUDAYS.Text * 900 * Val(v)
End If
txtckout.Text = Date + Val(TXTCUDAYS.Text)
End If


End Sub

Private Sub cmdcunew_Click()
If TXTCUID.Text = "" Or TXTCUCN.Text = "" Or TXTCUDAYS.Text = "" Or TXTCUNAME.Text = "" Or txtcurid.Text = "" Or cmbgender.Text = "" Or TXTCUADDRESS.Text = "" Or TXTCUEMAIL.Text = "" Then
MsgBox " ENTER ALL DETAILS !!!!!!!!!!"
Else
If rs.State Then
rs.Close
End If
cn.Execute "insert into customer values ('" & TXTCUNAME.Text & "','" & TXTCUID.Text & "','" & cmbgender.Text & "','" & TXTCUADDRESS.Text & "','" & TXTCUCN.Text & "','" & TXTCUEMAIL.Text & "','" & TXTCUDAYS.Text & "','" & txtcurid.Text & "', '" & txtshbill.Text & "', '" & txtckin.Text & "', '" & txtckout.Text & "')"

MsgBox "RECORD ADDED"
TXTCUID.Text = ""
TXTCUCN.Text = ""
TXTCUDAYS.Text = ""
TXTCUNAME.Text = ""
txtcurid.Text = ""
cmbgender.Text = ""
TXTCUADDRESS.Text = ""
TXTCUEMAIL.Text = ""
txtckin.Text = ""
txtckout.Text = ""
txtshbill.Text = ""
lsttyperoom.Text = ""

FRMRWORK.Show
End If
End Sub



Private Sub Command1_Click()
FRMRWORK.Show
End Sub

Private Sub Form_Load()
cn.Open "Provider=MSDAORA.1;User ID=scott; password = tiger;Persist Security Info=False"
rs.Open "select * from customer", cn, adOpenDynamic, adLockOptimistic
txtac.Text = 1200
txtnonac.Text = 900
txtckin.Text = Date

End Sub



Private Sub TXTCUCN_KeyPress(KeyAscii As Integer)

If Not IsNumeric(TXTCUCN.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0
End Sub

Private Sub TXTCUCN_LostFocus()
If Len(TXTCUCN.Text) < 10 Then
MsgBox "ENTER VALID PHONE NUMBER !!!!!!!!!!!!!!!!"
End If
End Sub

Private Sub TXTCUDAYS_KeyPress(KeyAscii As Integer)
If Not IsNumeric(TXTCUDAYS.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0
End Sub

Private Sub TXTCUID_KeyPress(KeyAscii As Integer)
If (KeyAscii > 64 And KeyAscii < 91) Or (KeyAscii > 96 And KeyAscii < 123) Or (KeyAscii > 48 And KeyAscii < 57) Or KeyAscii = 8 Or KeyAscii = 32 Then
TXTCUID = TXTCUID
Else
KeyAscii = 0
MsgBox "ENTER VALID ID NUMBER!!!!!!!!"
End If
End Sub

Private Sub TXTCUNAME_KeyPress(KeyAscii As Integer)
If (KeyAscii > 64 And KeyAscii < 91) Or (KeyAscii > 96 And KeyAscii < 123) Or KeyAscii = 8 Or KeyAscii = 32 Then
TXTCUNAME = TXTCUNAME
Else
KeyAscii = o
MsgBox " a To z and A To Z only"
End If

End Sub

Private Sub txtcurid_KeyPress(KeyAscii As Integer)
If lsttyperoom.Text = "" Then
MsgBox " SELECT TYPE OF ROOM FIRST"
lsttyperoom.SetFocus
End If

If Not IsNumeric(TXTCUCN.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0
End Sub


Private Sub txtcurid_LostFocus()
If rs.State Then
rs.Close
End If
rs.Open "select * from customer where roomid  = '" & txtcurid.Text & "'", cn, adOpenDynamic, adLockOptimistic

If rs.EOF Then
MsgBox (lsttyperoom.Text + " " + " ROOM IS SELECTED ")
Else
MsgBox "ROOM IS ALREADY BOOKED !!!!!!!!!!!!!!!!!"
rs.Close
End If

End Sub
