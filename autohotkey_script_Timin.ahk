;find any partial coincidence in title
SetTitleMatchMode, 2
SetTitleMatchMode RegEx ;this one works!

; don't ask reloading script
#SingleInstance force

; settings for image search
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SysGet, FullDesktopX, 78
SysGet, FullDesktopY, 79


SetNumLockState, AlwaysOn 
;or in win registry


; to enter date stamp, to activate press ddd and space
::ddd::
{
Send, %A_DD%.%A_MM%.%A_YYYY%
Return 
}

::dddd::
{
StringRight, A_YY, A_YYYY, 2	; get the 2 digit year
Send, %A_DD% %A_MMM% %A_YYYY%
Return 
}

; to enter adress
::mmm::
{
Send, 32 Morgans Valley
Return 
}

; to enter adress
::yyy::
{
Send, 466 Yaldhurst
Return 
}

; to enter adress
::fff::
{
Send, Canterbury Film Studios
Return 
}

; CHROME<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;Control & m::
;{
;WinActivate, - Google Chrome

;Loop, 15
;{
;   WinGetActiveTitle, Title  ;get active window title
;   if(InStr(Title, "smcdesign")>0)
;   {
;      break ; Terminate the loop
;   }
;   Send ^{Tab}
;   Sleep, 50
;}

;ControlClick, x80 y180, smcdesign,,,1

;return
;}


; CALCULATOR<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Launch_App2:: ;or NumLock::
{
IfWinActive, SpeedCrunch
WinClose, SpeedCrunch
else
IfWinNotExist, SpeedCrunch
{
Run, C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe
WinWait, SpeedCrunch
WinActivate, SpeedCrunch
}
else
WinActivate, SpeedCrunch
Return
}

;LOCK<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Autodesk Revit
NumLock::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\lock.png
	If ErrorLevel=0
		{
		OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		SendInput, {enter}
Return
}

;EXCEL<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
;to stay on the same cell
Enter:: Send, {Ctrl Down}{Enter}{Ctrl Up}  
NumpadEnter::Send, {Ctrl Down}{Enter}{Ctrl Up}


;EXCEL PLUS<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & NumpadAdd::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\plus.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL mult<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & Right::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\mult.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL minus<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & NumpadSub::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\minus.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL divide<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & Left::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\divide.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return

}

;EXCEL equal<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & NumpadEnter::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\equal.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL equal<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & Enter::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\equal.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}



;EXCEL check kN<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & RShift::
{
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\kNCheck.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL kN<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & Up::
{
Sendinput {Enter}
MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\kn.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;EXCEL kNm<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Excel
Control & Down::
{

MouseGetPos, MousePosX, MousePosY
ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\knm.png
	If ErrorLevel=0
		{
		;MsgBox, image found
        OutputVarX:=OutputVarX+14
		OutputVarY:=OutputVarY+12
		MouseClick, left, %OutputVarX%, %OutputVarY%, 1
       
		MouseMove, %MousePosX%, %MousePosY%
		}
	Else
		MsgBox, Picture to click haven't found
        
Return
}

;GREEN TICK<<<<<<<<<<<<<<<
#IfWinActive, Autodesk Revit

NumpadEnter::
{
if (winc_presses > 0) ; SetTimer already started, so we log the keypress instead.
{
    winc_presses += 1
    return
}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
winc_presses := 1
SetTimer, KeyWinC, -200 ; Wait for more presses within a xxx millisecond window.
return

KeyWinC:
if (winc_presses = 1) ; The key was pressed once.
{
    SendInput {Enter}
}
else if (winc_presses = 2) ; The key was pressed twice.
{
	MouseGetPos, MousePosX, MousePosY
	ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\EditFinish.png
		If ErrorLevel=0
			{
			OutputVarX:=OutputVarX+14
			OutputVarY:=OutputVarY+12
			MouseClick, left, %OutputVarX%, %OutputVarY%, 1
			MouseMove, %MousePosX%, %MousePosY%
			}

}

winc_presses := 0
return
}

Enter::
{
if (winc_presses1 > 0) ; SetTimer already started, so we log the keypress instead.
{
    winc_presses1 += 1
    return
}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
winc_presses1 := 1
SetTimer, KeyWinC1, -200 ; Wait for more presses within a xxx millisecond window.
return

KeyWinC1:
if (winc_presses1 = 1) ; The key was pressed once.
{
    SendInput {Enter}
}
else if (winc_presses1 = 2) ; The key was pressed twice.
{
	MouseGetPos, MousePosX, MousePosY
	ImageSearch, OutputVarX, OutputVarY, 0, 0, %FullDesktopX%, %FullDesktopY%, %A_ScriptDir%\EditFinish.png
		If ErrorLevel=0
			{
			OutputVarX:=OutputVarX+14
			OutputVarY:=OutputVarY+12
			MouseClick, left, %OutputVarX%, %OutputVarY%, 1
			MouseMove, %MousePosX%, %MousePosY%
			}

}

winc_presses1 := 0
return
}



; ROTATE 90 degrees
;#IfWinActive, Autodesk Revit
;Numpad3::
;{
;if (key_presses > 0) ; SetTimer already started, so we log the keypress instead.
;{
;    key_presses += 1
;    return
;}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
;key_presses := 1
;SetTimer, KeySuper, -200 ; Wait for more presses within a xxx millisecond window.
;return
;
;KeySuper:
;if (key_presses = 1) ; The key was pressed once.
;{
;    SendInput, 3
;}
;else if (key_presses = 2) ; The key was pressed twice.
;{
;    SendInput, ro 
;	MouseGetPos, X, Y
;	Click, %X%, %Y%
;	sendinput, 90
;	sendinput, {Enter}
;}
;
;key_presses := 0
;return
;}





; REVIT<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

#IfWinActive, Autodesk Revit
NumpadSub::SendInput {esc} 
NumpadAdd::SendInput {tab}

#IfWinActive, Type Properties
NumpadSub::SendInput {esc}
Enter::
{
ControlClick, OK, Type Properties,,,5
}



#IfWinActive, 3D View:
NumpadSub::sendinput {esc}
NumpadAdd::sendinput {tab}

#IfWinActive, Visibility/Graphic Overrides
Enter::
{
ControlClick, OK, Visibility/Graphic Overrides,,,5
Return
}
NumpadSub::sendinput {esc}


#IfWinActive, Object Styles
Enter::
{
ControlClick, OK, Object Styles,,,5
Return
}


#IfWinActive, Material Browser
Enter::
{
ControlClick, OK, Material Browser,,,5
Return
}


#IfWinActive, Fill Pattern Graphics
Enter::
{
ControlClick, OK, Fill Pattern Graphics,,,5
Return
}

#IfWinActive, Line Graphics
Enter::
{
ControlClick, OK, Line Graphics,,,5
Return
}

#IfWinActive, Family Category and Parameters
Enter::
{
ControlClick, OK, Family Category and Parameters,,,5
Return
}
NumpadSub::sendinput {esc}

#IfWinActive, Add Filters
Enter::
{
ControlClick, OK, Add Filters,,,5
Return
}


#IfWinActive, Work Plane
NumpadSub::sendinput {esc}
NumpadDot::
{

WinWait, Work Plane
SendInput, p
SendInput, {Enter}

Return
}




; AUTOCAD<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Autodesk AutoCAD
NumpadSub::sendinput {esc}


; ROBOT<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#IfWinActive, Autodesk Robot Structural Analysis Professional
NumpadSub::sendinput {esc}
