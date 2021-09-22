VERSION 5.00
Begin VB.Form frmbreakfast 
   BackColor       =   &H00FFFFFF&
   Caption         =   "breakfast menu card"
   ClientHeight    =   9555
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   19125
   LinkTopic       =   "Form1"
   ScaleHeight     =   9555
   ScaleWidth      =   19125
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
      Left            =   13680
      TabIndex        =   2
      Top             =   7320
      Width           =   2055
   End
   Begin VB.ListBox lstbrkfast 
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
      Height          =   3660
      ItemData        =   "frmbreakfast.frx":0000
      Left            =   12960
      List            =   "frmbreakfast.frx":0022
      TabIndex        =   1
      Top             =   480
      Width           =   3495
   End
   Begin VB.CommandButton cmdbrorder 
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
      Height          =   1215
      Left            =   13560
      TabIndex        =   0
      Top             =   5280
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   9390
      Left            =   120
      Picture         =   "frmbreakfast.frx":00AF
      Top             =   0
      Width           =   9390
   End
End
Attribute VB_Name = "frmbreakfast"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdbrorder_Click()
If lstbrkfast.Text = "" Then
MsgBox " PLEASE SELECT FOOD ITEM !!!!!"
Else

If lstbrkfast.Text = "RICEBATH = 11" Then
ORDER.txtfoodid.Text = 11
ORDER.Text1.Text = 40
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "Ricebath = 11"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "IDLI = 12" Then
ORDER.txtfoodid.Text = 12
ORDER.Text1.Text = 25
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "IDLY = 12"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstbrkfast.Text = "DOSA = 13" Then
ORDER.txtfoodid.Text = 13
ORDER.Text1.Text = 30
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "DOSA = 13"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "UPMA = 14" Then
ORDER.txtfoodid.Text = 14
ORDER.Text1.Text = 30
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "UPMA = 14"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "MASALA DOSA = 15" Then
ORDER.txtfoodid.Text = 15
ORDER.Text1.Text = 50
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "MASALA DOSA = 15"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show

ElseIf lstbrkfast.Text = "SET DOSA = 16" Then
ORDER.txtfoodid.Text = 16
ORDER.Text1.Text = 45
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "SET DOSA = 16"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "PLAIN DOSA = 17" Then
ORDER.txtfoodid.Text = 17
ORDER.Text1.Text = 35
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "PLAIN DOSA = 17"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "VADA = 18" Then
ORDER.txtfoodid.Text = 18
ORDER.Text1.Text = 25
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "VADA = 18"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "CURD RICE = 19" Then
ORDER.txtfoodid.Text = 19
ORDER.Text1.Text = 40
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "CURD RICE = 19"
ORDER.list1.AddItem itemlist
ORDER.Text2.Text = v
ORDER.Text3.Text = price + v * Val(ORDER.Text1.Text)
ORDER.Show


ElseIf lstbrkfast.Text = "POORI = 20" Then
ORDER.txtfoodid.Text = 20
ORDER.Text1.Text = 35
v = InputBox("PLEASE ENTER THE QUANTITY", "QUANTITY")
If Len(v) <= 0 Then Exit Sub
ORDER.list1.AddItem "POORI = 20"
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



