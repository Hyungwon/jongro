<!--#include virtual="/html/common/set.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title></title>
<link href="/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/default.js"></script>
<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/menu.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background-color:#f3f3f3;
}
.style1 {color: #999999}
-->
</style>
</head>
 <body>
	<table width="216" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="10"></td>
        </tr>
			<%
				response.Cookies("jongro")("BoardModule") = "Board"		
				response.Cookies("jongro")("tbcode") = "koi01"			
				response.Cookies("jongro")("code") = ""		
				response.Cookies("jongro")("num") = "3"			
				response.Cookies("jongro")("TitCut") = 30		
				response.Cookies("jongro")("SkinType") = "mBoard8"	

				Server.Execute "\html\inc\incEZboard.asp"
			%>
    </table>
 </body>
</html>
