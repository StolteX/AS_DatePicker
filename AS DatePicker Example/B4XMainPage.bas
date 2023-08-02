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
	
	AS_DatePicker1.SelectedstartDate = DateTime.Now
	AS_DatePicker1.SelectedEndDate = DateTime.Now + DateTime.TicksPerDay*3
	
'	AS_DatePicker1.MinDate = DateUtils.SetDate(2019,2,1)
'	AS_DatePicker1.MaxDate = DateUtils.SetDate(2019,2,1)
'	AS_DatePicker1.Rebuild
	
	'Sleep(4000)
'	Log("test")
'	AS_DatePicker1.BodyProperties.TextColor = xui.Color_Red
	

End Sub

Private Sub AS_DatePicker1_SelectedDateChanged(Date As Long)
	Log("Selected Date: " & DateUtils.TicksToString(Date))
End Sub


Private Sub AS_DatePicker1_SelectedDateRangeChanged(StartDate As Long, EndDate As Long)
	Log("Selected Range Date: " & DateUtils.TicksToString(StartDate) & " -> " & DateUtils.TicksToString(EndDate))
End Sub