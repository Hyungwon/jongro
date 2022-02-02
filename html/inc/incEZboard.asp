<!--#include virtual = "/EZ/include/setup.inc.asp"-->
<!--#include virtual = "/EZ/include/variables.inc.asp"-->
<!--#include virtual = "/EZ/include/strconnect.inc.asp"-->
<!--#include virtual = "/EZ/include/DBHelper.asp"-->
<!--#include virtual = "/EZ/include/function.class.asp"-->
<!--#include virtual = "/EZ/board/conf.asp"-->

<%
	Dim DBHelper
	Dim Func


	Dim rs
	Dim Arr
	Dim i
	Dim paramInfo(2) 

	Dim CookieDir
	Dim BoardModule
	Dim tbcode
	Dim code
	Dim num
	Dim TitCut
	Dim ConCut
	Dim SkinType

	Dim AddStr1


	Dim topNum
	Dim strTableName
	Dim WhereQuery

	Dim rs_seq 
	Dim rs_code 
	Dim rs_username  
	Dim rs_userid
	Dim rs_passwd 
	Dim rs_email 
	Dim rs_title 
	Dim rs_hit 
	Dim rs_reg_date
	Dim rs_thread
	Dim rs_depth 
	Dim rs_user_ip 
	Dim rs_replymail 
	Dim rs_attenflag
	Dim rs_content_type
	Dim rs_content
	Dim rs_attachfiles 
	Dim rs_attachsizes 
	Dim rs_attachsizerealsum
	Dim rs_mmsurl
	Dim rs_field1
	Dim rs_field2
	Dim rs_field3
	Dim rs_field4
	Dim rs_field5 
	Dim rs_field6
	Dim rs_field7
	Dim rs_field8
	Dim rs_field9 
	Dim rs_field10
	Dim rs_ReplyCount
	Dim rs_ImgFileName		 		

	Dim title_link
	Dim title_link_Parent


	Set DBHelper = new clsDBHelper		'DBHelper »ý¼º
	Set Func = New ASPFunc


	CookieDir = "jongro"


	BoardModule = Request.Cookies(CookieDir)("BoardModule") 
	tbcode = Request.Cookies(CookieDir)("tbcode") 
	code = Request.Cookies(CookieDir)("code") 
	num = Request.Cookies(CookieDir)("num")  
	TitCut = Request.Cookies(CookieDir)("TitCut")  
	ConCut = Request.Cookies(CookieDir)("ConCut")  
	SkinType = Request.Cookies(CookieDir)("SkinType")  

	AddStr1 = Request.Cookies(CookieDir)("AddStr1")  

	
	topNum = " TOP " & num
	strTableName = "WZCMS_"&BoardModule&"_"&tbcode
	WhereQuery = " WHERE delkey = '0'"

	If code <> "" Then 
		WhereQuery = WhereQuery & " AND code = '" & code & "'"
	End If 


	Call ReadBoardConf(BoardModule, tbcode)

	paramInfo(0) = DBHelper.MakeParam("@TOP", advarchar, adParamInput, 20, topNum)
	paramInfo(1) = DBHelper.MakeParam("@TableName", advarchar, adParamInput, 50, strTableName)
	paramInfo(2) = DBHelper.MakeParam("@WhereQuery", advarchar, adParamInput, 500, WhereQuery)


	Set rs = DBHelper.ExecSPReturnRS("[EZ_BOARD_LATELYLIST_PROC]", paramInfo, Public_str_Connect)
		
		if not rs.eof then
			Arr = rs.GetRows()
		else
			Arr = empty
		end if

		rs.Close
	Set rs = Nothing			




	If Not isempty(Arr) Then 
							
	For i=0 To ubound(Arr,2)

		rs_seq = Arr(0,i) 
		rs_code = Arr(1,i)
		rs_username = Arr(2,i)  
		rs_userid = Arr(3,i)
		rs_passwd = Arr(4,i) 
		rs_email = Arr(5,i) 
		rs_title = Arr(6,i) 
		rs_hit = Arr(7,i) 
		rs_reg_date = Arr(8,i)
		rs_thread = Arr(9,i)
		rs_depth = Arr(10,i) 
		rs_user_ip = Arr(11,i) 
		rs_replymail = Arr(12,i) 
		rs_attenflag = Arr(13,i)
		rs_content_type = Arr(14,i)
		rs_content = Arr(15,i)
		rs_attachfiles = Arr(16,i) 
		rs_attachsizes = Arr(17,i) 
		rs_attachsizerealsum = Arr(18,i)
		rs_mmsurl = Arr(19,i)
		rs_field1 = Arr(20,i)
		rs_field2 = Arr(21,i)
		rs_field3 = Arr(22,i)
		rs_field4 = Arr(23,i)
		rs_field5 = Arr(24,i)
		rs_field6 = Arr(25,i)
		rs_field7 = Arr(26,i)
		rs_field8 = Arr(27,i)
		rs_field9 = Arr(28,i)
		rs_field10 = Arr(29,i)
		rs_ReplyCount = Arr(30,i)
		rs_ImgFileName = Arr(31,i)		 


		title_link = "<a href="&Chr(34)&"/EZ/board/view.asp?BoardModule="&BoardModule&"&tbcode="&tbcode&"&seq="&rs_seq&Chr(34)&" class='pnavin'>"&Func.PU_CutText(rs_title,CInt(TitCut))&"</a>"	


		title_link_Parent = "<a href="&Chr(34)&"/EZ/board/view.asp?BoardModule="&BoardModule&"&tbcode="&tbcode&"&seq="&rs_seq&Chr(34)&" class='pnavin' target='_parent'>"&Func.PU_CutText(rs_title,CInt(TitCut))&"</a>"			

%>

<%
	Select Case SkinType
%>

<% 
	Case "mBoard1" :
%>

	<tr>
		<td width="260" align="left" class="pbody"><%=title_link%></td>
		<td width="80" align="right" class="pdate"><%=Left(rs_reg_date,10)%></td>
	</tr>

	<tr>
		<td height="17" colspan="2"><img src="/images/main/dot_line.jpg" width="340" /></td>
	</tr>


<% 
	Case "mBoard1-1" :
%>


	<tr>
		<td height="38" class="pbody"><%=title_link%>
		<br />
		<span class="pdate"><%=Left(rs_reg_date,10)%></span></td>
	</tr>
	<tr>
		<td height="17"><img src="/images/main/dot_line.jpg" width="340" /></td>
	</tr>

<% 
	Case "mBoard1-2" :
%>

	<tr>
		<td width="340" align="left" class="pbody"><%=title_link%></td>
	</tr>

	<tr>
		<td height="17"><img src="/images/main/dot_line.jpg" width="340" /></td>
	</tr>


<% 
	Case "mBoard2" :
%>

	<tr>
		<td width="17" height="22" align="left"><img src="/images/main/dot.png" width="10" height="10" /></td>
		<td width="351" height="22" align="left"><%=title_link%></td>
		<td width="82" align="right"><%=Left(rs_reg_date,10)%></td>
	</tr>




<%
	Case "mBoard3" :

	
		If i=3 Or i = 6 Then 	
		
			Response.Write "</tr><tr>"

		End If 
%>


	<td height="110" align="left" valign="top">
		<table width="111" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><a href="/EZ/board/view.asp?BoardModule=<%=BoardModule%>&tbcode=<%=tbcode%>&seq=<%=rs_seq%>"><img src="/upload_data/<%=BoardModule%>/<%=tbcode%>/<%=rs_ImgFileName%>" width="111" height="79" /></a></td>
			</tr>
			<tr>
				<td height="25" align="center" valign="middle" class="pbody"><%=title_link%></td>
			</tr>
		</table>
	</td>





<%
	Case "mBoard4" :



%>



          <tr>
            <td height="78" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" align="left" class="p16b"><%=title_link_Parent%></td>
              </tr>
              <tr>
                <td height="21" align="left" class="pbody"><%=rs_field3%></td>
              </tr>
              <tr>
                <td height="21" align="left" class="pbody"><%=rs_field1%></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="1" bgcolor="#cbcbcb"> </td>
          </tr>
          <tr>
            <td height="50" align="center" valign="bottom">
			
			<% If Trim(rs_field6) <> "" Then %><a href="#" class="<%=boardConf_PlayerPopup%>" rel="popuprel" chk="<%=tbcode%>|<%=rs_seq%>|<%=boardConf_PlayerWidthSize_FM%>|<%=boardConf_PlayerHeightSize_FM%>|01||<%=BoardModule%>"><img src="/images/common/right_banner/view.jpg" name="mbt" width="86" height="34" border="0" id="vod11" /></a><% End If %>
			</td>
          </tr>










<%
	Case "mBoard5" :


		

		If Trim(rs_ImgFileName) = "" Or isnull(rs_ImgFileName) Then 
			rs_ImgFileName = "DefaultImage.jpg"
		End If 
%>


	<tr>
		<td height="25" align="center" class="pbodywb"><%=title_link%></td>
	</tr>







<% 
	Case "mBoard8" :
%>


	<tr>
		<td height="52" align="left" valign="middle">
			<table width="100%"  border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="20" class="pbody"><%=title_link_Parent%></td>
                </tr>
                <tr>
					<td height="20" class="pnavi"><%=Left(rs_reg_date,10)%></td>
                </tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" bgcolor="#cbcbcb"></td>
	</tr>



<%
	End Select 
%>

<%
	Next 
	End If 


	Set DBHelper = Nothing
	Set Func = Nothing
%>