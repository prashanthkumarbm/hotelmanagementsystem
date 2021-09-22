VERSION 5.00
Begin VB.Form ORDER 
   BackColor       =   &H00FF8080&
   Caption         =   "ORDER"
   ClientHeight    =   10095
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18015
   LinkTopic       =   "Form1"
   ScaleHeight     =   10095
   ScaleWidth      =   18015
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
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
      Height          =   615
      Left            =   13320
      TabIndex        =   24
      Top             =   8400
      Width           =   2535
   End
   Begin VB.TextBox txtorderid 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   3480
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
   Begin VB.TextBox Text4 
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
      Left            =   10200
      TabIndex        =   2
      Top             =   7320
      Width           =   2775
   End
   Begin VB.TextBox txtfoodid 
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   13
      Top             =   1320
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "REMOVE ITEM"
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
      Left            =   10440
      TabIndex        =   12
      Top             =   8400
      Width           =   2295
   End
   Begin VB.CommandButton cmdsaaved 
      Caption         =   "SAVE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3480
      TabIndex        =   11
      Top             =   7800
      Width           =   3015
   End
   Begin VB.CommandButton CMDANOTHERITEM 
      Caption         =   "ANOTHER ITEM"
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
      Left            =   10320
      TabIndex        =   10
      Top             =   4080
      Width           =   2775
   End
   Begin VB.TextBox text3 
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   5
      Top             =   5640
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   4
      Top             =   3360
      Width           =   3015
   End
   Begin VB.ListBox list1 
      Enabled         =   0   'False
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
      ItemData        =   "FRMORDER.frx":0000
      Left            =   3480
      List            =   "FRMORDER.frx":0002
      MultiSelect     =   1  'Simple
      TabIndex        =   3
      Top             =   4560
      Width           =   3015
   End
   Begin VB.TextBox TEXT1 
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   1
      Top             =   2280
      Width           =   3015
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "IF YOU WANT TO ADD ANOTHER ITEM CLICK SAVE FIRST!!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   855
      Left            =   9360
      TabIndex        =   23
      Top             =   3000
      Width           =   5055
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "IF YOU WANT TO REMOVE ITEM ENTER FOOD ID BELOW"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   615
      Left            =   9120
      TabIndex        =   22
      Top             =   6480
      Width           =   5055
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   495
      Left            =   960
      TabIndex        =   21
      Top             =   5760
      Width           =   1815
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "SELECTED ITEM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   240
      Left            =   960
      TabIndex        =   20
      Top             =   4680
      Width           =   1800
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "QUANTITY"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   240
      Left            =   960
      TabIndex        =   19
      Top             =   3600
      Width           =   1170
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "COST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   600
      Left            =   960
      TabIndex        =   18
      Top             =   2520
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "FOOD ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   240
      Left            =   960
      TabIndex        =   17
      Top             =   1440
      Width           =   930
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "ROOM NUMBER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   240
      Left            =   960
      TabIndex        =   16
      Top             =   480
      Width           =   1725
   End
   Begin VB.Image Image1 
      Height          =   38400
      Left            =   0
      Picture         =   "FRMORDER.frx":0004
      Top             =   0
      Width           =   57600
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "ROOM NUMBER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1440
      TabIndex        =   15
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "FOOD ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   1320
      TabIndex        =   14
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label LBLBRTOTAL 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1440
      TabIndex        =   9
      Top             =   6120
      Width           =   1455
   End
   Begin VB.Label LBLBRSI 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "SELECTED ITEM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   8
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label LBLBRQTY 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "QUANTITY"
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
      Left            =   1440
      TabIndex        =   7
      Top             =   3600
      Width           =   1335
   End
   Begin VB.Label lblbrcost 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00FFC0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "COST"
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
      Left            =   1560
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
End
Attribute VB_Name = "ORDER"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rsorder As New ADODB.Recordset

Private Sub CMDANOTHERITEM_Click()
If txtorderid.Text = "" Then
MsgBox " enter room id !!!!!!!"
Else
price = Val(Text3.Text)
itemlist = list1.Text
cn.Close
Unload Me
frmmncard.Show
End If
End Sub

Private Sub cmdsaaved_Click()
If txtorderid.Text = "" Then
MsgBox " please enter your room id"
Else
If txtorderid.Text > 999 Then
MsgBox ("enter valid room number")
Else
If rs.State Then
rs.Close
End If
rs.Open "select * from customer where roomid  = '" & txtorderid.Text & "'", cn, adOpenDynamic, adLockOptimistic

If rs.EOF Then
MsgBox "ENTER VALID ROOM NUMBER"
Else

cn.Execute " insert into cuorder values ('" & txtfoodid.Text & "','" & Text1.Text & "','" & Text2.Text & "','" & list1.Text & "','" & Text3.Text & "','" & txtorderid.Text & "')"
MsgBox " YOUR ORDER IS SAVED "

End If
End If
End If
txtorderid.SetFocus

End Sub



Private Sub Command1_Click()
If txtorderid.Text = "" Then
MsgBox "enter room id "
Else

If Text4.Text = "" Then
MsgBox "ENTER FOOD ID !!!!!!!!!!!!"
Else

cn.Execute "delete from cuorder where id = '" & Val(Text4.Text) & "' and orderid = '" & Val(txtorderid.Text) & "'"

MsgBox " removed"

rs.Close
rs.Open " select * from cuorder where orderid = '" & txtorderid.Text & "'"

txtfoodid.Text = ""
Text1.Text = ""
Text2.Text = ""
list1.Clear
Text3.Text = ""

While Not rs.EOF
txtfoodid.Text = txtfoodid.Text & " " & rs.Fields(0)
Text1.Text = Val(Text1.Text) + rs.Fields(1)
Text2.Text = Val(Text2.Text) + rs.Fields(2)
list1.AddItem (rs.Fields(3))
Text3.Text = Val(Text3.Text) + rs.Fields(4)
rs.MoveNext

Wend
End If
End If
End Sub

Private Sub Command2_Click()

txtfoodid.Text = ""
Text1.Text = ""
Text2.Text = ""
list1.Clear
Text3.Text = ""
frmwelcome.Show
End Sub

Private Sub Form_Load()
cn.Open " Provider=MSDAORA.1;User ID=scott;password=tiger;Persist Security Info=False"
rs.Open " select * from cuorder ", cn, adOpenDynamic, adLockOptimistic

txtfoodid.Text = ""
Text1.Text = ""
Text2.Text = ""
list1.Clear
Text3.Text = ""
txtorderid.Text = ""
Text4.Text = ""

End Sub

Private Sub Text4_KeyPress(KeyAscii As Integer)
 If Not IsNumeric(Text4.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0

End Sub



Private Sub txtorderid_KeyPress(KeyAscii As Integer)
If Not IsNumeric(txtorderid.Text & Chr(KeyAscii)) And Not KeyAscii = 8 Then KeyAscii = 0
End Sub

