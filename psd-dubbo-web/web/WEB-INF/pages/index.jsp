<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>
<meta http-equiv="Content-Type" 
	  content="text/html; charset=utf-8">
	  </meta>
<meta name="viewport" 
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      </meta>
<title>主界面</title>
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
      type="text/css" />
<link href="${pageContext.request.contextPath}/media/css/mc.css"
      rel="stylesheet" 
      type="text/css" />
<script src="${pageContext.request.contextPath}/media/js/jquery-1.8.3.min.js">
        </script>
<script type="text/javascript"
	    src="${pageContext.request.contextPath}/media/easydialog/js/easydialog.js">
	    </script>
<link href="${pageContext.request.contextPath}/media/css/jquery.bxslider.css"
	  rel="stylesheet"
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/css/font-awesome.min.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
 <link href="${pageContext.request.contextPath}/media/easydialog/css/signalSelect.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/algorithmSelect.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/check.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/quit.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/usinghelp.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/psdSelect.css"
	  rel="stylesheet" 
	  type="text/css">
</link>
<link href="${pageContext.request.contextPath}/media/easydialog/css/softwareSelect.css"
	  rel="stylesheet" 
	  type="text/css">
</link>
</head>
<body>
<div class="header">
  <div class="topper">
    <div class="wrap cl">
     <div class="t-left">
     	<span style="font-size: 20px;">
     			基于分布式的信号算法可视化数据检测系统
     	</span>
     </div>
      <div class="t-right">
        <ul class="cl">
          <li class="user-list">
            <div class="top-user">
            		<img src="${pageContext.request.contextPath}/media/images/head.png" />
            			<span style="font-size:20px; ">${sessionScope.username }</span>
            </div>
          </li>
          <li>
          	<div class="top-user">
          	  <a href="javascript:location.reload();">
          	  	<span style="font-size:20px; ">
          	  		刷新页面
          	  	</span>
          	  </a>
          	</div>
          </li>
          <li>
  	  	     <div class="top-user">
          	   <a href="${pageContext.request.contextPath}/user/logOut">
          	   <span style="font-size:20px; ">
          	  		退出登录
          	  	</span>
          	   </a>
  	   	     </div>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="wrap" style="background:url(${pageContext.request.contextPath}/media/images/index-body.jpg);">
  <div class="zp-upload">
  	<div align="middle" class="txt">
  		   <span style="font-size: 25px;">

  		   </span>
  	</div>
    <a href="javascript:void(0)" class="sc"  onclick="openDialogBox('software_box')">
    		<i class="fa fa-hand-paper-o"></i>
				软件设置
    </a>
    <a href="javascript:void(0)" class="sc" onclick="openDialogBox('signal_box')">
    		<i class="fa fa-hand-o-right"></i>
				信号设置
    </a>
    <a href="javascript:void(0)" class="sc" onclick="openDialogBox('psd_box')">
    		<i class="fa fa-hand-paper-o"></i>
    	         算法设置
    </a>
    <a  id="visualDetection" href="javascript:void(0)" class="sc">
    		<i class="fa fa-hand-o-right"></i>
    	         检测运行
    </a>
    <a href="${pageContext.request.contextPath}/handle/list" class="sc">
      <i class="fa fa-hand-paper-o"></i>
		         数据查询
    </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('usinghelp_box')">
      <i class="fa fa-hand-o-right"></i>
				 我的帮助
    </a>
    </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('checkUpdate_box')">
      <i class="fa fa-hand-paper-o"></i>
			     更新检查
    </a>
      </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('quit_box')" >
      <i class="fa fa-hand-o-right"></i>
				 应用退出
    </a>
  </div>
</div>

<jsp:include page="/WEB-INF/pages/main/hiddenForm.jsp"/>
<jsp:include page="/WEB-INF/pages/signal/signalSelectForm.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/psdSelectForm.jsp"/>
<jsp:include page="/WEB-INF/pages/main/updateCheck.jsp"/>
<jsp:include page="/WEB-INF/pages/main/quit.jsp"/>
<jsp:include page="/WEB-INF/pages/main/help.jsp"/>
<jsp:include page="/WEB-INF/pages/main/softwareSelectForm.jsp"/>

<script type="text/javascript">
    //打开对话框
	function openDialogBox(boxId){
		easyDialog.open({
			container:boxId,
		}); 
    }
	//关闭对话框
	function closeDialogBox(){
		easyDialog.close();
	}
</script>

<!-- 可视化检测 -->
<script type="text/javascript">
        $(function(){
        	$("#visualDetection").click(function(){

				var signal = {"x_frequency":$("#x_frequency").val(),
						      "y_frequency":$("#y_frequency").val(),
						      "z_frequency":$("#z_frequency").val(),
						      "k_frequency":$("#k_frequency").val(),
						      "m_frequency":$("#m_frequency").val()
				};
					switch(algorithmJudge)
					{
						case "typeAAlgorithm":
							　typeAMethod(signal);
							  break;
						  
						case "typeBAlgorithm":
                              typeBMethod(signal);
						      break;
						      
						case "typeCAlgorithm":
                              typeCMethod(signal);
						      break;
						  
						case "typeDAlgorithm":
                              typeDMethod(signal);
						      break;
					}
        	});
        	
        });
        
			function typeAMethod(signal){
				var algorithm = {"a_param":$("#typeA_a_param").val(),
						   	     "b_param":$("#typeA_b_param").val(),
						   	     "c_param":$("#typeA_c_param").val(),
						   	     "algorithmType":"typeA"};
				submitForm(signal, algorithm);
				return true;
			}
			
			function typeBMethod(signal){
				var algorithm = {"a_param":$("#typeB_a_param").val(),
						   	     "b_param":$("#typeB_b_param").val(),
						   	     "c_param":$("#typeB_c_param").val(),
						   	     "algorithmType":"typeB"};
				submitForm(signal, algorithm);
				return true;
			}
            
			function typeCMethod(signal){
				var algorithm = {"a_param":$("#typeC_a_param").val(),
						   	     "b_param":$("#typeC_b_param").val(),
						   	     "c_param":$("#typeC_c_param").val(),
						   	     "algorithmType":"typeC"};
				submitForm(signal, algorithm);
				return true;
			}
			
			function typeDMethod(signal){
				var algorithm = {"a_param":$("#typeD_a_param").val(),
						   	     "b_param":$("#typeD_b_param").val(),
						   	     "c_param":$("#typeD_c_param").val(),
						   	     "algorithmType":"typeD"};
				submitForm(signal, algorithm);
				return true;
			}

			 function submitForm(signal, algorithm){
                 $("#x_frequency_input").val(signal["x_frequency"]);
                 $("#y_frequency_input").val(signal["y_frequency"]);
                 $("#z_frequency_input").val(signal["z_frequency"]);
                 $("#k_frequency_input").val(signal["k_frequency"]);
                 $("#m_frequency_input").val(signal["m_frequency"]);

                 $("#a_param_input").val(algorithm["a_param"]);
                 $("#b_param_input").val(algorithm["b_param"]);
                 $("#c_param_input").val(algorithm["c_param"]);

                 $("#algorithmTypeInput").val(algorithm["algorithmType"])

                 var $hiddenForm = $("#hiddenForm");
                 var url = "${pageContext.request.contextPath}/handle/compute";
                 $hiddenForm.attr("action",url);
                 $hiddenForm.submit();

                 return true;
             }
	        
</script>
</body>
</html>
