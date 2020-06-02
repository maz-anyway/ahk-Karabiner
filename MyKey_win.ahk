;;============================================================================
;;
;; あらかじめ「ChangeKey」で下記のキーマップを変更する
;;  半角/全角	⇒ Esc
;;  CapsLock	⇒ F13(vk:007C,sc:0064)
;;  無変換		⇒ 左Ctrl
;;  変換		⇒ Enter
;;  ひらがな		⇒ 変換
;;  左Shift		⇒ 右Shift
;;  左Ctrl		⇒ CapsLock
;;
;; IMEのプロパティで設定を変更する
;;  変換		⇒ IME-オン /かな変換 /かな変換 /かな変換 /かな変換 /かな変換
;;  無変換		⇒ IME-オフ /半角英数 /半角英数 /半角英数 /半角英数 /半角英数
;;  Shift+変換	⇒ 再変換  /-        /前候補   / 前候補  /-       /-
;;  Shift+Enter	⇒ -        /文字末尾 /文節確定 /文節確定 /文節確定 /文節確定
;;  Backspace	⇒ -        /前字削除 /全戻し   /全戻し   /全戻し   /前字削除
;;
;;============================================================================

#NoEnv								;;互換性
#SingleInstance Force				;;スクリプトが再度呼び出されたらリロードして置き換え
#InstallKeybdHook					;;
SetTitleMatchMode,2					;;
SendMode Input						;;速度と信頼性の向上(推奨設定)

#Include .\IME.ahk					;;IME制御用関数
#Include .\OneShotMod.ahk			;;One Shot Modifier
#Include .\EachApp.ahk				;;アプリごとの設定


;;----------------------------------------------------------------------------
#USEHOOK ON

;;-----------------
;; CapsLock(F13)キー
;;-----------------
F13 & F1::  Send,{Blind}^{F1}			;;F1
F13 & F2::  Send,{Blind}^{F2}			;;F2
F13 & F3::  Send,{Blind}^{F3}			;;F3
F13 & F4::  Send,{Blind}^{F4}			;;F4
F13 & F5::  Send,{Blind}^{F5}			;;F5
F13 & F6::  Send,{Blind}^{F6}			;;F6
F13 & F7::  Send,{Blind}^{F7}			;;F7
F13 & F8::  Send,{Blind}^{F8}			;;F8
F13 & F9::  Send,{Blind}^{F9}			;;F9
F13 & F10:: Send,{Blind}^{F10}			;;F10
F13 & F11:: Send,{Blind}^{F11}			;;F11
F13 & F12:: Send,{Blind}^{F12}			;;F12

F13 & 1:: Send,{Blind}^{1}				;;1
F13 & 2:: Send,{Blind}^{2}				;;2
F13 & 3:: Send,{Blind}^{3}				;;3
F13 & 4:: Send,{Blind}^{4}				;;4
F13 & 5:: Send,{Blind}^{5}				;;5
F13 & 6:: Send,{Blind}^{6}				;;6
F13 & 7:: Send,{Blind}^{7}				;;7
F13 & 8:: Send,{Blind}^{8}				;;8
F13 & 9:: Send,{Blind}^{9}				;;9
F13 & 0:: Send,{Blind}^{0}				;;0

F13 & a:: Send,{Blind}{Home}			;;a ⇒ 行頭
F13 & b:: Send,{Blind}{Left}			;;b ⇒ ←左
F13 & c:: Send,{Blind}^{c}				;;c
F13 & d:: Send,{Blind}{Delete}			;;d ⇒ Delete
F13 & e:: Send,{Blind}{End}				;;e ⇒ 行末
F13 & f:: Send,{Blind}{Right}			;;f ⇒ →右
F13 & g:: Send,{Blind}^{i}				;;g
F13 & h:: Send,{Blind}{Backspace}		;;h ⇒ Backspace
F13 & i:: Send,{Blind}^{i}				;;i
F13 & j:: Send,{Blind}^{j}				;;j
F13 & k:: Send,{Blind}^{k}				;;k
F13 & l:: Send,{Blind}^{l}				;;l
F13 & m:: Send,{Blind}{Enter}			;;m ⇒ Enter
F13 & n:: Send,{Blind}{Down}			;;n ⇒ ↓下
F13 & o:: Send,{Blind}^{o}				;;o
F13 & p:: Send,{Blind}{Up}				;;p ⇒ ↑上
F13 & q:: Send,{Blind}^{q}				;;q
F13 & r:: Send,{Blind}^{r}				;;r
F13 & s:: Send,{Blind}^{s}				;;s
F13 & t:: Send,{Blind}^{t}				;;t
F13 & u:: Send,{Blind}^{u}				;;u
F13 & v:: Send,{Blind}^{v}				;;v
F13 & w:: Send,{Blind}^{w}				;;w
F13 & x:: Send,{Blind}^{x}				;;x
F13 & y:: Send,{Blind}^{y}				;;y
F13 & z:: Send,{Blind}^{z}				;;z

F13 & -:: Send,{Blind}^{-}				;;-
F13 & ^:: Send,{Blind}^{^}				;;^
F13 & @:: Send,{Blind}^{@}				;;@
F13 & [:: Send,{Blind}^{[}				;;[
F13 & ]:: Send,{Blind}^{]}				;;]
F13 & .:: Send,{Blind}^{.}				;;.
F13 & /:: Send,{Blind}^{/}				;;/
F13 & vkBA:: Send,{Blind}^{vkBA}		;;コロン
F13 & vkBB:: Send,{Blind}^{vkBB}		;;セミコロン
F13 & vkBC:: Send,{Blind}^{vkBC}		;;カンマ
F13 & vkDC:: Send,{Blind}^{vkDC}		;;Yen
F13 & vkE2:: Send,{Blind}^{vkE2}		;;バックスラッシュ

F13 & Esc::   Send,{Blind}^{Esc}		;;Escape
F13 & Enter:: Send,{Blind}^{Enter}		;;Enter
F13 & Tab::   Send,{Blind}^{Tab}		;;Tab
F13 & Space:: Send,{Blind}^{Space}		;;Space
F13 & BS::    Send,{Blind}^{BS}			;;Backspace
F13 & Del::   Send,{Blind}^{Del}		;;Delete
F13 & Ins::   Send,{Blind}^{Ins}		;;Insert

F13 & Up::    Send,{Blind}^{Up}			;;Up
F13 & Down::  Send,{Blind}^{Down}		;;Down
F13 & Left::  Send,{Blind}^{Left}		;;Left
F13 & Right:: Send,{Blind}^{Right}		;;Right
F13 & PgUp::  Send,{Blind}^{PgUp}		;;PgUp
F13 & PgDn::  Send,{Blind}^{PgDn}		;;PgDn
F13 & Home::  Send,{Blind}^{Home}		;;Home
F13 & End::   Send,{Blind}^{End}		;;End

F13 & vkF3:: Send,{Blind}^{vkF3}		;;半角/全角
F13 & vkF4:: Send,{Blind}^{vkF4}		;;半角/全角
F13 & vk1C:: Send,{Blind}^{vk1C}		;;変換
F13 & vk1D:: Send,{Blind}^{vk1D}		;;無変換
F13 & vkF0:: Send,{Blind}^{vkF0}		;;英数(CapsLock)
F13 & vkF2:: Send,{Blind}^{vkF2}		;;ひらがな(カタカナ)

F13 & LWin:: Send,{Blind}^{LWin}		;;
F13 & RWin:: Send,{Blind}^{RWin}		;;
F13 & LAlt:: Send,{Blind}^{LAlt}		;;
F13 & RAlt:: Send,{Blind}^{RAlt}		;;

F13 & AppsKey::     Send,{Blind}^{AppsKey}			;;
F13 & CapsLock::    Send,{Blind}^{CapsLock}			;;
F13 & PrintScreen:: Send,{Blind}^{PrintScreen}		;;

F13 & Pause::      Send,{Blind}^{Pause}				;;
F13 & Break::      Send,{Blind}^{Break}				;;
F13 & Sleep::      Send,{Blind}^{Sleep}				;;
F13 & Help::       Send,{Blind}^{Help}				;;
F13 & NumLock::    Send,{Blind}^{NumLock}			;;
F13 & ScrollLock:: Send,{Blind}^{ScrollLock}		;;

F13 & LButton::    SendEvent,{Blind}^{LButton}					;;
F13 & RButton::    SendEvent,{Blind}^{RButton}					;;
F13 & MButton::    SendEvent,{Blind}^{MButton}					;;
F13 & WheelDown::  SendEvent,{Ctrl Down}{WheelDown}{Ctrl Up}	;; ⇒ 縮小
F13 & WheelUp::    SendEvent,{Ctrl Down}{WheelUp}{Ctrl Up}		;; ⇒ 拡大
F13 & WheelLeft::  SendEvent,{Ctrl Down}{WheelLeft}{Ctrl Up}	;; ⇒ 縮小
F13 & WheelRight:: SendEvent,{Ctrl Down}{WheelRight}{Ctrl Up}	;; ⇒ 拡大


#USEHOOK OFF