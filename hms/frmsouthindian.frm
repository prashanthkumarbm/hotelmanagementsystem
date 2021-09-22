VERSION 5.00
Begin VB.Form frmsouthindian 
   Caption         =   "SOUTH INDIAN"
   ClientHeight    =   8685
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16380
   LinkTopic       =   "Form1"
   ScaleHeight     =   8685
   ScaleWidth      =   16380
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
      Height          =   735
      Left            =   12000
      TabIndex        =   2
      Top             =   6720
      Width           =   1575
   End
   Begin VB.CommandButton CMDSIORDER 
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
      Left            =   11760
      TabIndex        =   1
      Top             =   4920
      Width           =   2175
   End
   Begin VB.ListBox LSTSI 
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
      Height          =   2700
      ItemData        =   "frmsouthindian.frx":0000
      Left            =   11520
      List            =   "frmsouthindian.frx":0022
      TabIndex        =   0
      Top             =   1200
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   10410
      Left            =   120
      Picture         =   "frmsouthindian.frx":00CF
      Top             =   -960
      Width           =   7500
   End
End
Attribute VB_Name = "frmsouthindian"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CMDSIORDER_Click()
If LSTSI.Text = "" Then
MsgBox " PLEASE SELECT FOOD ITEM !!!!!"
Else


If LSTSI.Text = "TOMATO RICE = 31" Then
ORDER.txtfoodid.Text = 31
ORDER.Text1.Text = 100
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "TOMATO RICE = 31"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf LSTSI.Text = "ALOO RAJMA SALAD = 32" Then
ORDER.txtfoodid.Text = 32
ORDER.Text1.Text = 250
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "ALOO RAJMA SALAD = 32"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "FULL MEALS = 34" Then
ORDER.txtfoodid.Text = 34
ORDER.Text1.Text = 150
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "FULL MEALS = 34"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "MINI MEALS = 35" Then
ORDER.txtfoodid.Text = 35
ORDER.Text1.Text = 60
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "MINI MEALS = 35"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "AKKI ROTTI = 36" Then
ORDER.txtfoodid.Text = 36
ORDER.Text1.Text = 36
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "AKKI ROTTI = 36"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "CHAPATHI = 37" Then
ORDER.txtfoodid.Text = 37
ORDER.Text1.Text = 30
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CHAPATHI = 37"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "MOONG SALAD = 38" Then
ORDER.txtfoodid.Text = 38
ORDER.Text1.Text = 90
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "MOONG SALAD = 38"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "WHITE RICE = 39" Then
ORDER.txtfoodid.Text = 39
ORDER.Text1.Text = 50
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "WHITE RICE = 39"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "RASAM = 40" Then
ORDER.txtfoodid.Text = 40
ORDER.Text1.Text = 35
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "RASAM = 40"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf LSTSI.Text = "BENDIFRY = 33" Then
ORDER.txtfoodid.Text = 33
ORDER.Text1.Text = 100
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "BENDIFRY = 33"
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

