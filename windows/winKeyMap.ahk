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

; #j::send {Down}
; #k::send {Up}
; #h::send {Left}
; #l::send {Right}
; #d::send {PgDn}
; #u::send {PgUp}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mouse keybind 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Tab & k::mousemove 0, -18, 0, R
~Tab & j::MouseMove 0, 18, 0, R
~Tab & h::MouseMove -18, 0, 0, R
~Tab & l::MouseMove 18, 0, 0, R
~Tab & Enter::MouseClick
~Tab & Space::MouseClick, Right

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; press alone key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Control::
KeyWait, Control
return
~Control Up::
If (A_PriorHotKey = "~Control" AND A_TimeSincePriorHotkey < 200)
  Send, {Escape}
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
~!/::send #3
; !;::
; if WinExist("ahk_class Emacs")
;   send #4
; Else if Variable != 0
;   Run, "C:\tools\emacs\bin\emacsclientw.exe" -c -n
; return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; specify tools keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_class Emacs
Alt::send F9
Alt & m::Send {Space}bp{Space}wv{Space}bn
Alt & p::Send {Space}pp
Alt & o::Send {Space}pf
Alt & f::Send {Space}sp
Alt & q::Send {Space}qz
Control::send {Escape}
Control & m::Send {Space}wm
Control & p::Send {Space}pt
Control & f::Send {Space}ss
Control & s::Send {Space}fs
Control & n::Send {Space}bN
Control & h::Send {Space}wh
Control & l::Send {Space}wl
Control & y::Send {Space}ry
Control & o::Send {Space}sf

#IfWinActive, ahk_class mintty
Alt::send F9
Alt & v::send +{Ins}
Alt & n::send ^bc
Alt & 1::send ^b1
Alt & 2::send ^b2
Alt & 3::send ^b3
Alt & 4::send ^b4
Alt & 5::send ^b5
Alt & 6::send ^b6
Alt & 7::send ^b7
Alt & l::send ^b8
Alt & h::send ^b9
Alt & `::send ^b0
Alt & w::send ^bx
Alt & m::Send {Space}bp{Space}wv{Space}bn
Alt & p::Send {Space}pp
Alt & o::Send {Space}pf
Alt & f::Send {Space}sp
Alt & q::Send {Space}qz
Control::send ^g{Escape}{Escape}{Escape}
Control & m::Send {Space}wm
Control & p::Send {Space}pt
Control & f::Send {Space}ss
Control & s::Send {Space}fs
Control & n::Send {Space}bN
Control & h::Send {Space}wh
Control & l::Send {Space}wl
Control & y::Send {Space}ry
Control & o::Send {Space}sf

#IfWinActive, ahk_class Chrome_WidgetWin_1
Alt::send F9
Alt & l::send ^{PgDn}
Alt & h::send ^{PgUp}
Control::send {Escape}
Control & l::send !{Right}
Control & h::send !{Left}