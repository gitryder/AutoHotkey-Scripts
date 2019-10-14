; Switches between various explorer windows  
F1::
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, danexplorers, ahk_class CabinetWClass
if WinActive("ahk_class CabinetWClass")
	GroupActivate, danexplorers, r
else
	WinActivate ahk_class CabinetWClass
Return 

; Switches between various open Chrome Tabs
F2::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
	Run, chrome.exe
if WinActive("ahk_class Chrome_WidgetWin_1")
	Send ^{Tab}
else
	WinActivate ahk_class Chrome_WidgetWin_1
Return 




