;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; gloable key change
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

s::send s
s & j::send {Down}
s & k::send {Up}
s & h::send {Left}
s & l::send {Right}
s & d::send {PgDn}
s & u::send {PgUp}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mouse keybind 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
d::send d
^d::send ^d
!d::send !d
+d::send +d
#d::send #d
d & k::mousemove 0, -18, 0, R
d & j::MouseMove 0, 18, 0, R
d & h::MouseMove -18, 0, 0, R
d & l::MouseMove 18, 0, 0, R
d & u::MouseClick
d & i::MouseClick, Right

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; press alone key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Control::
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
If (A_PriorHotKey = "~Shift" AND A_TimeSincePriorHotkey < 130)
  Send, {F11}
else
  Send, {Shift Up}
return

~Alt::
KeyWait, Alt 
return
~Alt Up::
If (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 130)
  Send, {F9}
else
  Send, {Alt Up}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; run tools key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~!e::send #1
!r::
Process, Exist, mintty.exe
Variable= Errorlevel
If Variable= 0 
  Run, C:\tools\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -w full -
Else if Variable != 0
  send #2
return
^!r::
if WinExist("ahk_class Emacs")
  send #3
Else if Variable != 0
  Run, "C:\tools\emacs\bin\emacsclientw.exe" -c -n
return
~!/::send #4

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; specify tools keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
!Enter::Send {Space}TF

#IfWinActive, ahk_class mintty
!v::send +{Ins}
!n::send ^bc
!1::send ^b1
!2::send ^b2
!3::send ^b3
!4::send ^b4
!5::send ^b5
!6::send ^b6
!7::send ^b7
!l::send ^b8
!h::send ^b9
!`::send ^b0
!w::send ^bx
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

#IfWinActive, ahk_class Chrome_WidgetWin_1
^l::send ^k
!l::send ^{TAB}
!h::send ^+{TAB}