#NoEnv
#SingleInstance Force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , High
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
if not A_IsAdmin
Run *RunAs "%A_ScriptFullPath%"
#MaxThreadsPerHotkey 2

; =====================
interval := 3
m1_in  := "Tab"
m1_out := "{Tab}"

m2_in  := "Numpad2"
m2_out := "4tf"

m3_in  := "Numpad4"
m3_out := "v"

m4_in  := "RButton" 
m4_out := "tf"
; =====================
Loop
  {
    If WinActive("") { ;Window name of the game inbetween the quotes
        if gks(m1_in) {
            SetTimer, m1, %interval%
        } else {
            SetTimer, m1, Off
	}

	if gks(m2_in) {
	   SetTimer, m2, %interval%
	} else {
           SetTimer, m2, Off
	}

  	if gks(m3_in) {
            SetTimer, m3, %interval%
  	} else {
            SetTimer, m3, Off
  	}

	if gks(m4_in) {
 	    SetTimer, m4, %interval%
        } else {
 	    SetTimer, m4, Off
        }
    }
  Sleep, 25
}
; =====================
; labels
m1:
    SendInput, %m1_out%
return

m2:
    SendInput, %m2_out%
return

m3:
    SendInput, %m3_out%
return

m4:
    SendInput, %m4_out%
return
; =====================
; functions
gks(key) {
    return GetKeyState(key, "P")
}
; =====================