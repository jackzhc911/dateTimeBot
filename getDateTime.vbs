Dim arrMonths
arrMonths = Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

'wscript.echo arrMonths(0)

'clock set 12:51:00 29 sep 2012
tPart = split(time, " ")(1)
dPart = day(date) & " " & arrMonths(month(date)-1) & " " & year(date)
dtString = tPart & " " & dPart

wscript.echo dtString