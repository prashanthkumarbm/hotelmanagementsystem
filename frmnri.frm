VERSION 5.00
Begin VB.Form frmnri 
   Caption         =   "NORTH INDIAN"
   ClientHeight    =   8580
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16470
   LinkTopic       =   "Form1"
   ScaleHeight     =   8580
   ScaleWidth      =   16470
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
      Height          =   615
      Left            =   11640
      TabIndex        =   2
      Top             =   6720
      Width           =   1335
   End
   Begin VB.CommandButton CMDNRIORDER 
      Caption         =   "ORDER"
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
      Left            =   11520
      TabIndex        =   1
      Top             =   5520
      Width           =   1455
   End
   Begin VB.ListBox LSTNRI 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2940
      ItemData        =   "frmnri.frx":0000
      Left            =   10680
      List            =   "frmnri.frx":0022
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   1440
      Width           =   3135
   End
   Begin VB.Image Image1 
      Height          =   8685
      Left            =   120
      Picture         =   "frmnri.frx":00DD
      Top             =   -360
      Width           =   5925
   End
End
Attribute VB_Name = "frmnri"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CMDNRIORDER_Click()
If LSTNRI.Text = "" Then
MsgBox " PLEASE SELECT FOOD ITEM !!!!!"
Else


If LSTNRI.Text = "TANDOORI CAULIFLOWER = 30" Then
ORDER.txtfoodid.Text = 30
ORDER.Text1.Text = 100
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "TANDOORI CAULIFLOWER = 30"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

 
 ElseIf LSTNRI.Text = "SPICY BENDY = 29" Then
 ORDER.txtfoodid.Text = 29
ORDER.Text1.Text = 400
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "SPICY BENDY = 29"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "NAAN = 24" Then
 ORDER.txtfoodid.Text = 24
ORDER.Text1.Text = 400
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "NAAN = 24"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "SEMIYA KHEER = 28" Then
 ORDER.txtfoodid.Text = 28
ORDER.Text1.Text = 400
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "SEMIYA KHEER = 28"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "PANEER TIKKA = 26" Then
ORDER.txtfoodid.Text = 26
ORDER.Text1.Text = 150
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "PANEER TIKKA = 26"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf LSTNRI.Text = "GOBI SABZI = 23" Then
ORDER.txtfoodid.Text = 23
ORDER.Text1.Text = 250
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "GOBI SABZI = 23"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "RUMAL ROTI = 27" Then
ORDER.txtfoodid.Text = 27
ORDER.Text1.Text = 150
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "RUMAL ROTI = 27"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "CHOLE CURRY = 22" Then
ORDER.txtfoodid.Text = 22
ORDER.Text1.Text = 85
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHOLE CURRY = 22"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "PALAK PANEER = 25" Then
ORDER.txtfoodid.Text = 25
ORDER.Text1.Text = 90
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "PALAK PANEER = 25 "
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTNRI.Text = "BUTTER ROTI = 21" Then
ORDER.txtfoodid.Text = 21
ORDER.Text1.Text = 70
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "BUTTER ROTI = 21"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


End If
End If
Unload Me
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Image1.Move 0, 0, Me.Width, Me.Height
End Sub
