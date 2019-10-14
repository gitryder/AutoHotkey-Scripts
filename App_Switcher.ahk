; Switches between various explorer windows  
F3::
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, danexplorers, ahk_class CabinetWClass
if WinActive("ahk_class CabinetWClass")
	GroupActivate, danexplorers, r
else
	WinActivate ahk_class CabinetWClass
Return 

; Switches between various open Chrome Tabs
F4::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
	Run, chrome.exe
if WinActive("ahk_class Chrome_WidgetWin_1")
	Send ^{Tab}
else
	WinActivate ahk_class Chrome_WidgetWin_1
Return 

; Switches between various open Firefox Tabs
F5::
IfWinNotExist, ahk_class MozillaWindowClass
	Run, firefox.exe
if WinActive("ahk_class MozillaWindowClass")
	Send ^{Tab}
else
	WinActivate ahk_class MozillaWindowClass
Return 
