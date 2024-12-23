B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private AS_DatePicker1 As AS_DatePicker
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	B4XPages.SetTitle(Me,"AS DatePicker Example")
	
	Wait For B4XPage_Resize (Width As Int, Height As Int)

	'AS_DatePicker1.Refresh

	'Sleep(2000)
	'AS_DatePicker1.Theme = AS_DatePicker1.Theme_Light
'	AS_DatePicker1.MinDate = DateUtils.SetDate(2023,2,1)
'	AS_DatePicker1.MaxDate = DateUtils.SetDate(2024,2,1)
'	AS_DatePicker1.Rebuild
	

	'Sleep(4000)
'	Log("test")
'	AS_DatePicker1.BodyProperties.TextColor = xui.Color_Red
	
'	Sleep(4000)
'	AS_DatePicker1.Theme = AS_DatePicker1.Theme_Light
'	Sleep(4000)
'	AS_DatePicker1.Theme = AS_DatePicker1.Theme_Dark

'	AS_DatePicker1.SelectedDate = DateUtils.SetDate(2024,9,1)
'	AS_DatePicker1.Scroll2Date(DateUtils.SetDate(2024,9,1))
	Dim Dark As AS_DatePicker_Theme = AS_DatePicker1.Theme_Dark
	Dark.BodyColor = Root.Color
	Dark.HeaderColor = Root.Color
	Dark.SelectedTextColor = xui.Color_Black
	Dark.WeekNameColor = Root.Color
	Dark.SelectedDateColor = xui.Color_White
	Dark.CurrentDateColor = xui.Color_ARGB(80,255,255,255)
	AS_DatePicker1.Theme = Dark


End Sub

Private Sub AS_DatePicker1_SelectedDateChanged(Date As Long)
	Log("Selected Date: " & DateUtils.TicksToString(Date))
End Sub


Private Sub AS_DatePicker1_SelectedDateRangeChanged(StartDate As Long, EndDate As Long)
	Log("Selected Range Date: " & DateUtils.TicksToString(StartDate) & " -> " & DateUtils.TicksToString(EndDate))
End Sub

Private Sub AS_DatePicker1_PageChanged
	
'	AS_DatePicker1.view.GetValue(Index)
'	
'	AS_DatePicker1.HeaderPanel.GetView(0).Text = "Test " & AS_DatePicker1.
	
End Sub

'Private Sub AS_DatePicker1_CustomDrawHeader(Date As Long,Views As ASDatePicker_CustomDrawHeader)
'	If AS_DatePicker1.CurrentView = AS_DatePicker1.CurrentView_MonthView Then
'		Views.xlbl_Text.Text = "Test " & DateUtils.GetMonthName(Date)
'	End If
'End Sub

Private Sub Switch1_ValueChanged (Value As Boolean)
	If Value Then
		AS_DatePicker1.Theme = AS_DatePicker1.Theme_Dark
	Else
		AS_DatePicker1.Theme = AS_DatePicker1.Theme_Light
	End If
End Sub

Private Sub AS_DatePicker1_CustomDrawDay (Date As Long, Views As ASDatePicker_CustomDrawDay)
	If DateTime.GetDayOfWeek(Date) = 1 Then 'Sunday
		Views.xlbl_Date.TextColor = xui.Color_Red
	End If
End Sub