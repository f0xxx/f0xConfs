;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; string replace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ::xxx::P@ssw0rd
; ::sss::/opt/Symantec/sdcssagent/IPS/sisipsoverride.sh || /opt/Symantec/scspagent/IPS/sisipsoverride.sh

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; gloable key change
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!z::send ^z
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

; Ctrl & Esc::return
^Escape::return
!Escape::return

Ctrl & j::send {Down}
Ctrl & k::send {Up}
Ctrl & h::send {Left}
Ctrl & l::send {Right}
Ctrl & d::send {PgDn}
Ctrl & u::send {PgUp}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mouse keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Tab & k::mousemove 0, -18, 0, R
~Tab & j::MouseMove 0, 18, 0, R
~Tab & h::MouseMove -18, 0, 0, R
~Tab & l::MouseMove 18, 0, 0, R
~Tab & Enter::MouseClick


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; press alone key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LControl up::
If (A_PriorKey = "LControl")
  Send {Esc down}
  Send {Esc up}
return
<^d:: Send ^d

LShift up::
If (A_PriorKey = "LShift")
  Send {F10}
return
<+d:: Send +d

LAlt up::
If (A_PriorKey = "LAlt")
  Send {F9}
return
<!d:: Send !d

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; run tools key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~!e::
if WinExist("ahk_exe chrome.exe")
  WinActivate, ahk_exe chrome.exe
else
  Run, chrome.exe
return

!r::
if WinExist("ahk_exe mintty.exe")
  WinActivate, ahk_exe mintty.exe
else
  Run, C:\tools\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -w full -

return

~!/::
if WinExist("ahk_exe TOTALCMD.exe")
  WinActivate, ahk_exe TOTALCMD.exe
else
  Run, C:\tools\totalcmd32\TOTALCMD.EXE -w full
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; specify tools keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_class UnrealWindow

#IfWinActive, ahk_class Emacs
Alt & m::Send {Space}bp{Space}wv{Space}bn
Alt & p::Send {Space}pp
Alt & o::Send {Space}pf
Alt & f::Send {Space}sp
; Alt & q::Send {Space}qz
Ctrl::send ^g
Ctrl & m::Send {Space}wm
Ctrl & p::Send {Space}pt
Ctrl & f::Send {Space}ss
Ctrl & s::Send {Space}fs
Ctrl & n::Send {Space}bN
Ctrl & h::Send {Space}wh
Ctrl & l::Send {Space}wl
Ctrl & y::Send {Space}ry
Ctrl & o::Send {Space}sf

#IfWinActive, ahk_class mintty
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
Alt & o::Send {Space}pF
Alt & f::Send {Space}sP
Alt & q::send {Space}qz
; Ctrl::send ^g
; Ctrl & Shift & c::Send {Space}ry
Ctrl & d::send ^d
Ctrl & u::send ^u
Ctrl & m::Send {Space}wm
Ctrl & p::Send {Space}pt
Ctrl & f::Send {Space}ss
Ctrl & n::Send {Space}bN
; Ctrl & h::Send {Space}wh
; Ctrl & l::Send {Space}wl
Ctrl & y::Send {Space}ry
Ctrl & o::Send {Space}sf
Ctrl & s::Send {F11}
F4::Send {,}ggzz
F1::Send {F1}zz
F2::Send {F2}zz
`::Send {F5}
;for c++ code jump
; F1::Send {,}gp
; F2::Send {,}gn
;for debug python
F5::Send {,}'
F8::Send {,}db
Alt & Enter::Send {,}sb

#IfWinActive, ahk_class Chrome_WidgetWin_1
Alt & l::send ^{PgDn}
Alt & h::send ^{PgUp}
Alt & i::send ^l
; Ctrl::send {Escape}
Ctrl & l::send !{Right}
Ctrl & h::send !{Left}
Alt & q::send ^5
Ctrl & w::send ^0

Ctrl & s::
Send ^s
Send {Click 1839, 167}
return
;#IfWinActive, ahk_exe WeChat.exe
;Tab::return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; others
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;