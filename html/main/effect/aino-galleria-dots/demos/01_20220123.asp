<%
Response.Expires = 0
Response.AddHeader "Pragma","no-cache"
Response.AddHeader "Cache-Control","no-cache,must-revalidate"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
 <HEAD>
  <META http-equiv="Expires" content="-1">
  <META http-equiv="Pragma" content="no-cache">
  <META http-equiv="Cache-Control" content="No-Cache">
  <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
  <TITLE> New Document </TITLE>
    <script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
    <script src="../src/galleria.js"></script>
    <style type="text/css">
        html,body{background:#fff; margin:0;padding:0}
        #galleria{
            width:1080px;
            height:300px;
            margin:0px auto 0 auto;
			padding:0
            /*
			background:#222;
            background:-moz-radial-gradient(center 45deg, circle closest-side, #222 40%, #000 100%);
            background:-webkit-gradient(
                radial, center 50%, 20, center 50%, 250, from(#333), to(#000)
            )
			*/
        }
    </style>
</head>
<body>
    <div id="galleria">
		<img src="/images/main/main_img/main_img01.jpg" />
		<img src="/images/main/main_img/main_img03.jpg" />
	</div>
	<script>
    // Load theme
    Galleria.loadTheme('../src/themes/dots/galleria.dots.js');
    $('#galleria').galleria();
    </script>
</body>
</html>
