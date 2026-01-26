WinGet, bnsid, list, ;Game window name here as parameter

F10::
KeyWait, F10, D

	ControlSend,, z, ahk_id %bnsid2%
Return

F11::
KeyWait, F11, D

	ControlSend,, {F1}, ahk_id %bnsid2%
    ControlSend,, {F1}, ahk_id %bnsid3%
Return

F12::
KeyWait, F12, D

	ControlSend,, x, ahk_id %bnsid2%
Return

