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

Ctrl & Esc::send {Esc}

~Ctrl & j::send {Down}
~Ctrl & k::send {Up}
~Tab & j::send {Down}
~Tab & k::send {Up}
~Tab & h::send {Left}
~Tab & l::send {Right}
~Tab & d::send {PgDn}
~Tab & u::send {PgUp}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mouse keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Tab & Up::mousemove 0, -18, 0, R
~Tab & Down::MouseMove 0, 18, 0, R
~Tab & Left::MouseMove -18, 0, 0, R
~Tab & Right::MouseMove 18, 0, 0, R
~Tab & Enter::MouseClick
~Tab & Space::MouseClick, Right

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; press alone key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LControl up::
If (A_PriorKey = "LControl")
  Send, {Esc}
return
<^d:: Send ^d

LShift up::
If (A_PriorKey = "LShift")
  Send {F11}
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
Control::send ^g
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
; Alt & q::Send {Space}qz
; Control::send ^g
Control & v::Send {Space}ry
Control & m::Send {Space}wm
Control & p::Send {Space}pt
Control & f::Send {Space}ss
; Control & s::Send {Space}fs
Control & n::Send {Space}bN
Control & h::Send {Space}wh
Control & l::Send {Space}wl
Control & y::Send {Space}ry
Control & o::Send {Space}sf
F4::Send {,}ggzz
F1::Send {F1}zz
F2::Send {F2}zz

;for c++ code jump
; F1::Send {,}gp
; F2::Send {,}gn

;for debug python
F5::Send {,}'
F9::Send {,}db
Control & s::Send {Space}fs{,}sb

#IfWinActive, ahk_class Chrome_WidgetWin_1
Alt & l::send ^{PgDn}
Alt & h::send ^{PgUp}
Alt & i::send ^l
; Control::send {Escape}
Control & l::send !{Right}
Control & h::send !{Left}

;#IfWinActive, ahk_exe WeChat.exe
;Tab::return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; others
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;