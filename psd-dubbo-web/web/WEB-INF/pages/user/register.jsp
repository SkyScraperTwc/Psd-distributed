<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
      content="text/html; charset=utf-8">
<meta name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>用户注册</title>
<meta content="用户注册" 
      name="keywords">
      </meta>
<meta content="用户注册" 
      name="description">
      </meta>
<meta http-equiv="Cache-Control"
      content="max-age=180">
      </meta>
<meta name="apple-mobile-web-app-capable" 
      content="yes">
      </meta>
<meta name="apple-mobile-web-app-status-bar-style" 
      content="black">
      </meta>
<meta name="format-detection" 
      content="telephone=no">
      </meta>
<meta http-equiv="x-dns-prefetch-control" 
      content="on">
      </meta>
<link href="${pageContext.request.contextPath}/media/css/basestyle.css"
  	  rel="stylesheet" 
	  type="text/css" ></link>
<link href="${pageContext.request.contextPath}/media/css/mc.css"
	  rel="stylesheet" 
	  type="text/css" />
<link href="${pageContext.request.contextPath}/media/css/user_center.css"
      rel="stylesheet" 
      type="text/css" />
<script src="${pageContext.request.contextPath}/media/js/jquery-1.8.3.min.js"></script>
<link href="${pageContext.request.contextPath}/media/css/font-awesome.min.css"
      rel="stylesheet" 
      type="text/css"/>
</head>
<body>
<div class="login-head">
  <div class="wrap">
    <div class="logo">
         <a href="index.html"></a>
    </div>
    <div class="txt">
		基于分布式的信号算法可视化数据检测系统
    </div>
  </div>
</div>
<div class="login-body">
  <div class="loginbox">
    <div class="tit">
      	<span>
      		注册
      	</span>
      	<a href="${pageContext.request.contextPath}/user/toLogin">
            	已有账号？立即登陆
        </a>
    </div>
    <form id="register_form" action="${pageContext.request.contextPath}/user/register" method="post">
    	
	  <div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-user"></i></span>
	    <input type="text" name="username" placeholder="请输入账号" class="form-control">
	  </div>
	  
	  
    <div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-unlock-alt"></i></span>
	    <input type="password" name="password" placeholder="请设置密码" class="form-control">
	  </div>
	  
    <div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-unlock-alt"></i></span>
	    <input type="password" name="password2" placeholder="重复设置密码" class="form-control">
	  </div>
	  
  	<div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-mobile-phone"></i></span>
	    <input type="text" name="mobile" placeholder="请输入手机" class="form-control">
	  </div>
	  
    <div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-adjust"></i></span>
	    <input type="password" name="email" placeholder="请输入Email" class="form-control">
	  </div>
	  
    <div class="input-group">
	    <span class="input-group-addon"><i class="fa fa-get-pocket"></i></span>
	    <input type="text" name="authcode" maxlength="20" placeholder="请输入下侧验证码" class="form-control" >
	  </div>
	  
  	<div align="middle">
			<span><img id="authcodeImg" src="/HgShopSys/authcode.img" onclick="getAuthcode()" style = "vertical-align: middle"></span>
			<label>&nbsp;看不清？<a style="text-decoration:underline" onclick="getAuthcode()" href="javascript:void(0)">换一张</a></label>
    </div>
    
    <script type="text/javascript">
		function getAuthcode(){
			var $authcodeImg = $("#authcodeImg");
			$authcodeImg.attr("src","${pageContext.request.contextPath}/authcode.img?xx="+Math.random());
		}
	</script>
    
	  <div class="login-box-btn">
	    <a href="javascript:btnRegister();" class="btn-login">立即注册</a>
	  </div>
	  
    </form>
  </div>
</div>
<script>
	function btnRegister(){
		var registerForm = document.getElementById("register_form");
		registerForm.submit();
	}
</script>
</body>
</html>
            
                    
          
	   	
                
            
            
            			  
    
           
       	
				     
             		
            
           
        
    			 
        	
       
            
            
            
            
    	
                         
       
                                                     
                            
					      
                
        
       	
					     
           
            
             
        	
					
            
            
                
                           
                

        
                
                        
                
                
                    	
               
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
