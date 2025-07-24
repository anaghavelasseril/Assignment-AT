#Persistent
SetTitleMatchMode, 2

IfWinExist, AT Emulator
{
    WinActivate
    WinWaitActive, AT Emulator
    Sleep 500
    ControlSend,, AT{Enter}, AT Emulator
    Sleep 1000
    ControlSend,, AT{+}CPIN?{Enter}, AT Emulator
    Sleep 1000
    ControlSend,, AT{+}CSQ{Enter}, AT Emulator
    Sleep 1000
    ControlSend,, AT{+}COPS?{Enter}, AT Emulator
    Sleep 1000
    MsgBox, Automation complete!
}
Else
{
    MsgBox, Emulator window not found. Open the emulator first.
}
