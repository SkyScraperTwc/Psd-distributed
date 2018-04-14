<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="dataDelMsgCss" id="dataDelMsg_box">
		<h4>
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">数据删除</span>
		</h4>
<div class="innerDiv">
		  <table id="dataDelMsgTable">
		  	        <caption id="caption">
						<span style="font-weight: bold;font-size: 20px">您确定要删除选中的记录吗？</span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center">
				       <a href="javascript:dataDelMsg();" id="dataDelMsg_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
 </div>
</div>

<script type="text/javascript">
	    function dataDelMsg(){
			var url = "${pageContext.request.contextPath}/handle/delete";
			//params在utils文件里面
			var object = {"id" : params};
			//发送ajax请求
			$.post(url, object, function(data){
				window.location.href = "${pageContext.request.contextPath}/handle/list";
			},"text");
			easyDialog.close();
	    }
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
