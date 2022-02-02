<%
	Dim strPageUrl
	Dim strQueryStr
	Dim strMenu1
	Dim strMenu2

	Dim arrStrPageUrl
	Dim arrstrLastShortFileName 
	Dim strLastFileName
	Dim strLastShortFileName 
	Dim strLastShortSubFileName 
	Dim strLastShortSub3rdFileName

	strPageUrl = Request.Servervariables("URL")
	strQueryStr = Request.Servervariables("QUERY_STRING")
	arrStrPageUrl = Split(strPageUrl,"/")
	strLastFileName = arrStrPageUrl(UBound(arrStrPageUrl))
	strLastShortFileName = Replace(LCase(strLastFileName),".asp","")

	If InStr(strLastShortFileName,"-")>0 Then
		arrstrLastShortFileName = Split(strLastShortFileName,"-")
		strLastShortFileName = arrstrLastShortFileName(0)

		If UBound(arrstrLastShortFileName) = 1 Then
			strLastShortSubFileName = arrstrLastShortFileName(UBound(arrstrLastShortFileName))
			strLastShortSub3rdFileName = ""

		ElseIf UBound(arrstrLastShortFileName) = 2 Then
			strLastShortSubFileName = arrstrLastShortFileName(1)
			strLastShortSub3rdFileName = arrstrLastShortFileName(UBound(arrstrLastShortFileName))

		Else
			strLastShortSub3rdFileName = ""

		End If 

	Else
		strLastShortSubFileName = ""

	End If 

	If InStr(LCase(strPageUrl),"main") > 0 Or  InStr(LCase(strPageUrl),"common/sm") > 0  Then
		Response.Cookies("strMenu1") = ""
		Response.Cookies("strMenu2") = ""
		Response.Cookies("strMenu3") = ""
	
	ElseIf InStr(LCase(strPageUrl),"wz_cms") > 0 Then	
		If InStr(LCase(strPageUrl),"wz_cms/calendar") > 0  Then
			Response.Cookies("strMenu1") = "sub7"
			Response.Cookies("strMenu2") = "04"
			Response.Cookies("strMenu3") = ""

		Else
			'

		End If 

	ElseIf InStr(LCase(strPageUrl),"/ez/") > 0 Then 

		If InStr(LCase(Request.Cookies("CMSTBCODE")),"-")>0 Then
			arrstrLastShortFileName = Split(LCase(Request.Cookies("CMSTBCODE")),"-")
			strLastShortFileName = Right(arrstrLastShortFileName(0),2)

			If UBound(arrstrLastShortFileName) = 1 Then
				strLastShortSubFileName = arrstrLastShortFileName(UBound(arrstrLastShortFileName))
				strLastShortSub3rdFileName = ""

			ElseIf UBound(arrstrLastShortFileName) = 2 Then
				strLastShortSubFileName = arrstrLastShortFileName(1)
				strLastShortSub3rdFileName = arrstrLastShortFileName(UBound(arrstrLastShortFileName))

			Else
				strLastShortSub3rdFileName = ""
		
			End If 
		
		Else
			strLastShortFileName = Right(LCase(Request.Cookies("CMSTBCODE")),2)
			strLastShortSubFileName = ""
		
		End If 

		If InStr(LCase(Request.Cookies("CMSTBCODE")),"intro") > 0 Then
			strMenu1 = "sub1"
			Response.Cookies("strMenu1") = "sub1"
		
		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"edu") > 0 Then
			strMenu1 = "sub2"
			Response.Cookies("strMenu1") = "sub2"
		
		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"new") > 0 Then
			strMenu1 = "sub3"
			Response.Cookies("strMenu1") = "sub3"

		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"worship") > 0 Then
			strMenu1 = "sub4"
			Response.Cookies("strMenu1") = "sub4"

		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"org") > 0 Then
			strMenu1 = "sub5"
			Response.Cookies("strMenu1") = "sub5"
			
		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"school") > 0 Then
			strMenu1 = "sub6"
			Response.Cookies("strMenu1") = "sub6"
			
		ElseIf InStr(LCase(Request.Cookies("CMSTBCODE")),"community") > 0 Then
			strMenu1 = "sub7"
			Response.Cookies("strMenu1") = "sub7"
			
		Else
			
			Select Case LCase(Request.Cookies("CMSTBCODE"))

			Case "intro08":
				strMenu1 = "sub1"
				Response.Cookies("strMenu1") = "sub1"
				strLastShortFileName = "08"	
				strLastShortSubFileName = ""

			' 
			Case "koi03":
				strMenu1 = "sub3"
				Response.Cookies("strMenu1") = "sub3"
				strLastShortFileName = "03"	
				strLastShortSubFileName = ""

			Case "praise01":
				strMenu1 = "sub4"
				Response.Cookies("strMenu1") = "sub4"
				strLastShortFileName = "01"	
				strLastShortSubFileName = ""

			Case "praise02":
				strMenu1 = "sub4"
				Response.Cookies("strMenu1") = "sub4"
				strLastShortFileName = "02"	
				strLastShortSubFileName = ""

			Case "praise03":
				strMenu1 = "sub4"
				Response.Cookies("strMenu1") = "sub4"
				strLastShortFileName = "03"	
				strLastShortSubFileName = ""

			Case "sch05":
				strMenu1 = "sub6"
				Response.Cookies("strMenu1") = "sub6"
				strLastShortFileName = "05"	
				strLastShortSubFileName = ""

			Case "koi01":
				strMenu1 = "sub7"
				Response.Cookies("strMenu1") = "sub7"
				strLastShortFileName = "01"	
				strLastShortSubFileName = ""

			Case "koi07":
				strMenu1 = "sub7"
				Response.Cookies("strMenu1") = "sub7"
				strLastShortFileName = "02"	
				strLastShortSubFileName = ""

			Case "koi05":
				strMenu1 = "sub7"
				Response.Cookies("strMenu1") = "sub7"
				strLastShortFileName = "03"	
				strLastShortSubFileName = ""

			Case "koi02":
				strMenu1 = "sub7"
				Response.Cookies("strMenu1") = "sub7"
				strLastShortFileName = "05"	
				strLastShortSubFileName = ""

			End Select

		End If 

		Response.Cookies("strMenu2") = strLastShortFileName
		Response.Cookies("strMenu3") = strLastShortSubFileName

	Else

		If InStr(LCase(strPageUrl),"intro") > 0 Then 

			strMenu1 = "sub1"
			Response.Cookies("strMenu1") = "sub1"
		
		ElseIf InStr(LCase(strPageUrl),"edu") > 0 Then 

			strMenu1 = "sub2"
			Response.Cookies("strMenu1") = "sub2"
		
		ElseIf InStr(LCase(strPageUrl),"new") > 0 Then 

			strMenu1 = "sub3"
			Response.Cookies("strMenu1") = "sub3"

		ElseIf InStr(LCase(strPageUrl),"worship") > 0 Then 

			strMenu1 = "sub4"
			Response.Cookies("strMenu1") = "sub4"

		ElseIf InStr(LCase(strPageUrl),"org") > 0 Then 

			strMenu1 = "sub5"
			Response.Cookies("strMenu1") = "sub5"


		ElseIf InStr(LCase(strPageUrl),"school") > 0 Then 

			strMenu1 = "sub6"
			Response.Cookies("strMenu1") = "sub6"


		ElseIf InStr(LCase(strPageUrl),"community") > 0 Then 

			strMenu1 = "sub7"
			Response.Cookies("strMenu1") = "sub7"

		Else

		End If 

		Response.Cookies("strMenu2") = strLastShortFileName
		Response.Cookies("strMenu3") = strLastShortSubFileName

	End If

%>