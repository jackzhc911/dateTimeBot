Set ws = CreateObject("WScript.Shell") 
set oExec = ws.Exec("cscript genPassword.vbs //nologo")
pwd = oExec.StdOut.ReadAll

ws.Run("putty -telnet 192.168.16.236")

WScript.Sleep 1000
ws.AppActivate "PuTTY"
ws.SendKeys "admin"
ws.SendKeys "{Enter}"

WScript.Sleep 100
ws.SendKeys pwd
ws.SendKeys "{Enter}"

ws.SendKeys "sh clock"
ws.SendKeys "{Enter}"

' 設定時間
Dim arrMonths
arrMonths = Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

'wscript.echo arrMonths(0)

'clock set 12:51:00 29 sep 2012
tPart = split(time, " ")(1)
dPart = day(date) & " " & arrMonths(month(date)-1) & " " & year(date)
dtString = tPart & " " & dPart

ws.SendKeys "clock set "
ws.SendKeys dtString
ws.SendKeys "{Enter}"

ws.SendKeys "sh clock"
ws.SendKeys "{Enter}"

' 結束程式
set oExec = nothing
set ws = nothing