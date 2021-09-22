VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmcusearch 
   Caption         =   "search"
   ClientHeight    =   10140
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18570
   LinkTopic       =   "Form1"
   ScaleHeight     =   10140
   ScaleWidth      =   18570
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
      Left            =   10200
      TabIndex        =   5
      Top             =   8400
      Width           =   2175
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1815
      Left            =   360
      TabIndex        =   2
      Top             =   6120
      Width           =   22335
      _ExtentX        =   39396
      _ExtentY        =   3201
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   16777152
      Enabled         =   0   'False
      ForeColor       =   0
      HeadLines       =   1
      RowHeight       =   24
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "DETAILS OF CUSTOMER "
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   15840
      Top             =   1440
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDAORA.1;User ID=scott;Persist Security Info=False"
      OLEDBString     =   "Provider=MSDAORA.1;User ID=scott;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   "scott"
      Password        =   "tiger"
      RecordSource    =   "CUSTOMER"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton cmdsearch 
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
      Height          =   735
      Left            =   10080
      TabIndex        =   1
      Top             =   4440
      Width           =   2175
   End
   Begin VB.TextBox txtsearch 
      Height          =   615
      Left            =   9240
      MaxLength       =   3
      TabIndex        =   0
      Top             =   2760
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "ENTER THE ROOM ID TO  SEARCH"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   615
      Left            =   3600
      TabIndex        =   4
      Top             =   2880
      Width           =   5535
   End
   Begin VB.Image Image1 
      Height          =   13500
      Left            =   -120
      Picture         =   "frmcusearch.frx":0000
      Top             =   -240
      Width           =   22950
   End
   Begin VB.Label LBLROOMIDSEARCH 
      Caption         =   "ENTER ROOM ID TO SEARCH"
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   2415
   End
End
Attribute VB_Name = "frmcusearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset

Private Sub cmdsearch_Click()
If txtsearch.Text = "" Then
MsgBox " ENTER ROOM ID TO SEARCH !!!!!!"
Else
rs.Open "select  * from customer where roomid = '" & txtsearch.Text & "'", cn, adOpenDynamic, adLockOptimistic
Set DataGrid1.DataSource = rs

End If

End Sub

Private Sub Command1_Click()
cn.Close
Unload Me
End Sub

Private Sub Form_Load()
cn.Open "Provider=MSDAORA.1;User ID=scott;password= tiger;Persist Security Info=False"
cn.CursorLocation = adUseClient
Adodc1.Visible = False
End Sub

Private Sub txtsearch_KeyPress(KeyAscii As Integer)
If txtsearch.MaxLength > 3 Then
MsgBox "    ENTER VALID ROOM ID!!!!!"
Else
If (KeyAscii > 48 And KeyAscii <= 57) Or KeyAscii = 8 Or KeyAscii = 32 Then
txtsearch = txtsearch
Else
KeyAscii = 0
MsgBox " ENTER VALID ROOM ID!!!!!!!!!!!!!!!"
End If
End If
End Sub
