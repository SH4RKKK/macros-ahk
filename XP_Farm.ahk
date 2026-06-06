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
#IfWinActive ahk_exe ; game .exe name here as parameter
WinGet, bnsid, list, ; game window name here as parameter


F4::
Macro1:
Loop
{
    Loop
    {
        CoordMode, Pixel, Screen
        PixelSearch, FoundX, FoundY, 2289, 677, 2344, 712, 0xE2BB75, 0, Fast RGB
        Sleep, 100
        If ErrorLevel = 0
        {
            ControlSend,, i, ahk_id %bnsid1%
            Sleep, 1250
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 5
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 5
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100

            CoordMode, Pixel, Screen
            PixelSearch, FoundX, FoundY, 2289, 677, 2344, 712, 0xE2BB75, 0, Fast RGB
            Sleep, 100
            If ErrorLevel
            {
                Break
            }
        }
    }
    Sleep, 100
    Loop
    {
        CoordMode, Pixel, Screen
        PixelSearch, FoundX, FoundY, 2254, 673, 2286, 702, 0x61ADDD, 0, Fast RGB
        If ErrorLevel = 0
        {
            Break
            ControlSend,, {Space}, ahk_id %bnsid1%
        }
        Else
        {
            Sleep, 100
            ControlSend,, j, ahk_id %bnsid1%
            Sleep, 500
            ControlClick, x1065 y291, ahk_id %bnsid1%,,,, NA
            Sleep, 250
            ControlClick, x1065 y291, ahk_id %bnsid1%,,,, NA
            Sleep, 250
            ControlClick, x1196 y556, ahk_id %bnsid1%,,,, NA
            Sleep, 250
            ControlClick, x1196 y556, ahk_id %bnsid1%,,,, NA
            Sleep, 250  
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 5
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 5
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 5
            ControlSend,, {Space}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Down}, ahk_id %bnsid1%
            Sleep, 100
            ControlSend,, {f Up}, ahk_id %bnsid1%
            Sleep, 100
            Send, {Space}
            Sleep, 5
        }
    }
}
Return

F5::Reload
