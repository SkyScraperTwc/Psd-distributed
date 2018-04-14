<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>页面跳转</title>
	<style type="text/css">  
 			@import url("${pageContext.request.contextPath}/media/css/main.css");
	</style>
</head>
<body>
<div id="wrapper">
  <div id="main">
    <div id="header">
      <h1>Page Jump</h1>
    </div>
    <div id="content" align="center">
    
      <h2 style="color:black">${requestScope.global_message }</h2>
      
      <div class="utilities">
          <div class="input-container" style="font: 16px 'TeXGyreScholaRegular', Arial, sans-serif;color: #696969; text-shadow: 0 1px white;text-decoration: none;">
          <div align="center">
            <span id="totalSecond" style="color:red">30</span>秒后跳转到指定页面...
            <span>如果没有跳转,请 
				<a id="aTag" href="${requestScope.nextUrl }">点击这里</a>
			</span>			
			</div>
          </div>
        <div class="clear"></div>
      </div>
    </div>
  </div>
</div>

<script language="javascript" type="text/javascript">
		
</script>

 <!--定义js变量及方法-->
	<script language="javascript" type="text/javascript">
			var second = document.getElementById('totalSecond').textContent;
		    var nextUrl = "${requestScope.nextUrl }";
			
		    if(nextUrl=="BACKPAGE"){
		    	var aTag = document.getElementById("aTag");
		    	aTag.href = "javascript:void(0);";
		    	aTag.onclick = function() {
		    		window.history.back();
				};
		    	setInterval("redirectBack()",1000);
		    }else{
		     	setInterval("redirect()", 1000); 
		    }
		    
			if (navigator.appName.indexOf("Explorer") > -1)
			{
				second = document.getElementById('totalSecond').innerText; 
			} else
			{
				second = document.getElementById('totalSecond').textContent; 
			}
			
			function redirectBack()
		    {
				if (second < 0){
					window.history.back();
				} else{
					if (navigator.appName.indexOf("Explorer") > -1){
						document.getElementById('totalSecond').innerText = second--;
				} else{document.getElementById('totalSecond').textContent = second--; }
				 	 }
		    }
			
			function redirect()
			{
				if (second < 0){
					window.location.href = "${requestScope.nextUrl }";
				} else{
					if (navigator.appName.indexOf("Explorer") > -1){
						document.getElementById('totalSecond').innerText = second--;
				} else{document.getElementById('totalSecond').textContent = second--; }
				 	 }
			}
			
</script>
</html>