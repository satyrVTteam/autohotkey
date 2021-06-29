; don't ask reloading script
#SingleInstance force

SetNumLockState, AlwaysOn 
;or in win registry



Numpad3::
if (winc_presses > 0) ; SetTimer already started, so we log the keypress instead.
{
    winc_presses += 1
    return
}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
winc_presses := 1
SetTimer, KeyWinC, -175 ; Wait for more presses within a 400 millisecond window.
return

KeyWinC:
if (winc_presses = 1) ; The key was pressed once.
{
    SendInput, 3
}
else if (winc_presses = 2) ; The key was pressed twice.
{
    SendInput, ro 
	MouseGetPos, X, Y
	Click, %X%, %Y%
	sendinput, 90
	sendinput, {Enter}
}
;else if (winc_presses > 2)
;{
;    SendInput, ro 
;	MouseGetPos, X, Y
;	Click, %X%, %Y%
;	sendinput, 180
;	sendinput, {Enter}
;}
; Regardless of which action above was triggered, reset the count to
; prepare for the next series of presses:
winc_presses := 0
return










