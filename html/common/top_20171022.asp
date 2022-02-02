<%
	Dim static_pageURL
	Dim static_pageQueryString
	static_pageURL = Request.ServerVariables("URL")
	static_pageQueryString = Request.ServerVariables("QUERY_STRING")
%>
<script language="javascript"> 
	function postLogin(formName) {
	frm = document.getElementById(formName);
	window.open('', 'viewer', 'width=720, height=450');
	frm.action = "/WZ_CMS/member/member_login.asp?popmode=pop";
	frm.target = "viewer";
	frm.method = "post";
	frm.submit();
}
</script>

<form name="loginform" id="loginform" method="post">
<input type="hidden" name="strNext" id="strNext" value="<%=static_pageURL%>" />
<input type="hidden" name="strQuery" id="strQuery" value="<%=static_pageQueryString%>" />
</form>

<table width="1080" height="29" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="160" align="left"><a href="http://www.jongro.org/html/cafe/banner.html" target="_blank" onMouseOver="MM_swapImage('cafe','','../../images/common/top/cafe_on.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="../../images/common/top/cafe_off.jpg" name="cafe" width="156" height="29" border="0"></a></td>
    <td width="920" align="right"><table width="328" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right"><a href="/html/main/main.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('t1','','/images/common/top/top1_on.jpg',1)"><img src="/images/common/top/top1_off.jpg" name="t1" border="0"></a></td>
        <td width="60" align="right">
		
		<% if Session("SS_seq") <> "" then %>
		<a href="/WZ_CMS/member/logout.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('t3','','/images/common/top/top5_on.jpg',1)"><img src="/images/common/top/top5_off.jpg" name="t3" border="0" id="t3" /></a>
		<% Else %>
		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('t2','','/images/common/top/top2_on.jpg',1)" onClick="postLogin('loginform')"><img src="/images/common/top/top2_off.jpg" name="t2" border="0" id="t2" /></a>
		<% End If %>
		
		</td>
		<td width="70" align="right">
		
		<% if Session("SS_seq") <> "" then %>
		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('t5','','/images/common/top/top6_on.jpg',1)" onclick="MM_openBrWindow('/WZ_CMS/member/member_02.asp?popmode=pop&amp;mode=e','','scrollbars=yes,width=720,height=650')"><img src="/images/common/top/top6_off.jpg" name="t5" border="0" id="t5" /></a>
		<% Else %>
		<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('t4','','/images/common/top/top3_on.jpg',1)" onclick="MM_openBrWindow('/WZ_CMS/member/member_01.asp?popmode=pop','','scrollbars=yes,width=720,height=650')"><img src="/images/common/top/top3_off.jpg" name="t4" border="0" id="t4" /></a>
		<% End If %>	
		
		</td>
        <td align="right"><a href="/html/common/sm.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('t7','','/images/common/top/top7_on.jpg',1)"><img src="/images/common/top/top7_off.jpg" name="t7" border="0"></a></td>
      </tr>
    </table></td>
  </tr>
</table>
