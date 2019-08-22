function getEnc(inStr)
	' use this to encode password
	iBegin = inputbox("give me your magic code.")
	getEnc = ""
	for i=1 to len(inStr)
		
		getEnc = getEnc + CStr(HEX(ASC(mid(inStr, i, 1)) XOR iBegin))
		iBegin = iBegin + 1
	next
	
end function

function getDec(inStr)
	' use this to decode password
	iBegin = inputbox("give me your magic code.")
	getDec = ""
	for i=1 to len(inStr) step 2
		word = CHR(CInt("&H" & mid(instr, i, 2)) XOR iBegin)
		getDec = getDec + word
		iBegin = iBegin + 1
	next
end function

wscript.echo getDec("yourEncodedPassword")