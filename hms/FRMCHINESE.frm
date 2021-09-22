VERSION 5.00
Begin VB.Form FRMCHINESE 
   Caption         =   "CHINESE"
   ClientHeight    =   8940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18150
   LinkTopic       =   "Form1"
   ScaleHeight     =   8940
   ScaleWidth      =   18150
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
      Left            =   12840
      TabIndex        =   2
      Top             =   7680
      Width           =   1575
   End
   Begin VB.CommandButton CMDCHNORDER 
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
      Height          =   1095
      Left            =   12720
      TabIndex        =   1
      Top             =   5760
      Width           =   1695
   End
   Begin VB.ListBox lstchinese 
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
      ItemData        =   "FRMCHINESE.frx":0000
      Left            =   11880
      List            =   "FRMCHINESE.frx":0025
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   1320
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   11070
      Left            =   0
      Picture         =   "FRMCHINESE.frx":00FB
      Top             =   -360
      Width           =   7395
   End
End
Attribute VB_Name = "FRMCHINESE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CMDCHNORDER_Click()
If lstchinese.Text = "" Then
MsgBox " PLEASE SELECT FOOD ITEM !!!!!"
Else


If lstchinese.Text = "CHINESE YARMS = 02" Then
ORDER.txtfoodid.Text = 2
ORDER.Text1.Text = 110
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHINESE YARMS = 02"
ORDER.list1.AddItem itemlist

ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstchinese.Text = "CHANNABATTA=45" Then
ORDER.txtfoodid.Text = 45
ORDER.Text1.Text = 110
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHANNABATTA"
ORDER.list1.AddItem itemlist

ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show



ElseIf lstchinese.Text = "CURRIED ALMOND RICE = 05" Then
ORDER.txtfoodid.Text = 5
ORDER.Text1.Text = 250
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CURRIED ALMOND RICE = 05"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstchinese.Text = "TOFU SALAD = 08" Then
ORDER.txtfoodid.Text = 8
ORDER.Text1.Text = 100
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "TOFU SALAD = 08"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstchinese.Text = "CHOW MEIN SOUP = 03" Then
ORDER.txtfoodid.Text = 3
ORDER.Text1.Text = 250
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHOW MEIN SOUP = 03"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstchinese.Text = "MUSHROOM RICE = 07" Then
ORDER.txtfoodid.Text = 7
ORDER.Text1.Text = 130
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "MUSHROOM RICE = 07"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstchinese.Text = "CRISPY NOODLES = 04" Then
ORDER.txtfoodid.Text = 4
ORDER.Text1.Text = 200
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CRISPY NOODLES = 04"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

 ElseIf lstchinese.Text = "CHILLI SOYA NUGGETS = 01" Then
 ORDER.txtfoodid.Text = 1
ORDER.Text1.Text = 150
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHILLI SOYA NUGGETS = 01"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show
 Unload Me

ElseIf lstchinese.Text = "VEG SOUP = 09" Then
ORDER.txtfoodid.Text = 9
ORDER.Text1.Text = 140
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "VEG SOUP = 09"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstchinese.Text = "WONTONS = 10" Then
ORDER.txtfoodid.Text = 10
ORDER.Text1.Text = 160
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "WONTONS = 10"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstchinese.Text = "MANAPUA = 06" Then
ORDER.txtfoodid.Text = 6
ORDER.Text1.Text = 130
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "MANAPUA = 06"
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

