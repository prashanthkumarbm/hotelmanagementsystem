VERSION 5.00
Begin VB.Form frmmncard 
   BackColor       =   &H00FF8080&
   Caption         =   "MENU CARD"
   ClientHeight    =   6255
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10665
   LinkTopic       =   "Form1"
   ScaleHeight     =   6255
   ScaleWidth      =   10665
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox CHKCHINESE 
      BackColor       =   &H00FFFFC0&
      Caption         =   "CHINESE"
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
      Left            =   360
      TabIndex        =   3
      Top             =   4200
      Width           =   2175
   End
   Begin VB.CheckBox CHKNRI 
      BackColor       =   &H00FFFFC0&
      Caption         =   "NORTH INDIAN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   2
      Top             =   2760
      Width           =   2295
   End
   Begin VB.CheckBox CHKSI 
      BackColor       =   &H00FFFFC0&
      Caption         =   "SOUTH INDIAN"
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
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   2295
   End
   Begin VB.CheckBox CHKBRKFAST 
      BackColor       =   &H00FFFFC0&
      Caption         =   "BREAKFAST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   6435
      Left            =   0
      Picture         =   "frmmncard.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15135
   End
End
Attribute VB_Name = "frmmncard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CHKBRKFAST_Click()
If CHKBRKFAST.Value = 1 Then
frmbreakfast.Show
End If
End Sub

Private Sub CHKCHINESE_Click()
If CHKCHINESE.Value = 1 Then
Unload Me
FRMCHINESE.Show
End If
End Sub

Private Sub CHKNRI_Click()
If CHKNRI.Value = 1 Then
frmnri.Show
End If
End Sub

Private Sub CHKSI_Click()
If CHKSI.Value = 1 Then
frmsouthindian.Show
End If

End Sub

Private Sub Form_Load()
Image1.Move 0, 0, Me.Width, Me.Height
End Sub
