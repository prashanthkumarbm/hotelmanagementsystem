VERSION 5.00
Begin VB.Form FRMRWORK 
   Caption         =   "RECEPTIONIST WORK"
   ClientHeight    =   11835
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   20025
   LinkTopic       =   "Form2"
   ScaleHeight     =   11835
   ScaleWidth      =   20025
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
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
      Left            =   9000
      TabIndex        =   3
      Top             =   8880
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "SEARCH"
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
      Left            =   720
      TabIndex        =   2
      Top             =   3720
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "NEW CUSTOMER   "
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
      Left            =   720
      TabIndex        =   1
      Top             =   2640
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GENERATE BILL"
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
      Left            =   720
      TabIndex        =   0
      Top             =   1560
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   12795
      Left            =   0
      Picture         =   "FRMRWORK.frx":0000
      Top             =   -240
      Width           =   28800
   End
End
Attribute VB_Name = "FRMRWORK"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
FRMRBILL.Show
End Sub

Private Sub Command2_Click()
FRMCSTOMERDETAIL.Show
End Sub

Private Sub Command3_Click()
frmcusearch.Show
End Sub

Private Sub Command4_Click()
frmwelcome.Show
End Sub
