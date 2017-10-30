;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; string replace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::xxx::P@ssw0rd
::sss::/opt/Symantec/sdcssagent/IPS/sisipsoverride.sh || /opt/Symantec/scspagent/IPS/sisipsoverride.sh

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
  Run, C:\tools\totalcmd32\TOTALCMD.EXE
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; specify tools keybind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_class Emacs
Alt & m::Send {Space}bp{Space}wv{Space}bn
Alt & p::Send {Space}pp
Alt & o::Send {Space}pf
Alt & f::Send {Space}sp
Alt & q::Send {Space}qz
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
Alt & q::Send {Space}qz
Control::send ^g
Control & m::Send {Space}wm
Control & p::Send {Space}pt
Control & f::Send {Space}sB
Control & s::Send {Space}fs
Control & n::Send {Space}bN
Control & h::Send {Space}wh
Control & l::Send {Space}wl
Control & y::Send {Space}ry
Control & o::Send {Space}sf
F4::Send {,}ggzz
F1::Send {F1}zz
F2::Send {F2}zz

#IfWinActive, ahk_class Chrome_WidgetWin_1
Alt & l::send ^{PgDn}
Alt & h::send ^{PgUp}
; Control::send {Escape}
Control & l::send !{Right}
Control & h::send !{Left}

#IfWinActive, ahk_exe WeChat.exe
Tab::return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; others
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Shift::send F11
; Shift & `::send ~
; Shift & 1::send !
; Shift & 2::send @
; Shift & 3::send #
; Shift & 4::send $
; ; Shift & 5::send %
; Shift & 6::send ^
; Shift & 7::send &
; Shift & 8::send *
; Shift & 9::send (
; Shift & 0::send )
; Shift & -::send _
; Shift & =::send +
; Shift & q::send Q
; Shift & w::send W
; Shift & e::send E
; Shift & r::send R
; Shift & t::send T
; Shift & y::send Y
; Shift & u::send U
; Shift & i::send I
; Shift & o::send O
; Shift & p::send P
; Shift & [::send {
; Shift & ]::send }
; Shift & \::send |
; Shift & a::send A
; Shift & s::send S
; Shift & d::send D
; Shift & f::send F
; Shift & g::send G
; Shift & h::send H
; Shift & j::send J
; Shift & k::send K
; Shift & l::send L
; ; Shift & ;::send :
; ; Shift & '::send \"
; Shift & z::send Z
; Shift & x::send X
; Shift & c::send C
; Shift & v::send V
; Shift & b::send B
; Shift & n::send N
; Shift & m::send M
; Shift & ,::send <
; Shift & .::send >
; Shift & /::send ?