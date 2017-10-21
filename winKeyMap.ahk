﻿~Control::
KeyWait, Control
return
~Control Up::
If (A_PriorHotKey = "~Control" AND A_TimeSincePriorHotkey < 200)
  Send, {Escape}{Escape}{Escape}
else
  Send, {Control Up}
return

~Shift::
KeyWait, Shift 
return
~Shift Up::
If (A_PriorHotKey = "~Shift" AND A_TimeSincePriorHotkey < 200)
  Send, {F11}
else
  Send, {Shift Up}
return

~Alt::
KeyWait, Alt 
return
~Alt Up::
If (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 200)
  Send, {F9}
else
  Send, {Alt Up}
return

!`::
Process, Exist, mintty.exe
Variable= Errorlevel
If Variable= 0 
  Run, D:\tools\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -
Else if Variable != 0
  send #1
return
~!e::send #2
!r::
if WinExist("ahk_class Emacs")
  send #3
Else if Variable != 0
  Run, "C:\Program Files\emacs-25.3_1-x86_64\bin\emacsclientw.exe" -na "C:\Program Files\emacs-25.3_1-x86_64\bin\emacsclientw.exe" -c -n
return
~!/::send #4

!c::send ^c
!v::send ^v
!x::send ^x
!w::send ^w
!t::send ^t
!f::send ^f
!a::send ^a
!1::send ^1
!2::send ^2
!3::send ^3
!4::send ^4
!5::send ^5
!6::send ^6
!7::send ^7
!8::send ^8
!9::send ^9
!q::send !{F4}

#IfWinActive, ahk_class Emacs
; ^q::Send {Space}bd
^m::Send {Space}wm
!m::Send {Space}bp{Space}wv{Space}bn
^p::Send {Space}pt
!p::Send {Space}pp
!o::Send {Space}pf
^f::Send {Space}ss
^s::Send {Space}fs
^n::Send {Space}bN
; !j::Send {Space}wj
; !k::Send {Space}wk
^h::Send {Space}wh
^l::Send {Space}wl
^+v::Send {Space}ry
^+f::Send {Space}sf
!q::Send {Space}qz
!Enter::Send {F12}
#IfWinActivee

#IfWinActive, ahk_class Chrome_WidgetWin_1
^l::send ^k
!l::send ^{TAB}
!h::send ^+{TAB}