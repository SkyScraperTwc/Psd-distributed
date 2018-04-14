<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="quitCss" id="quit_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">关闭应用</span>
		</h4>
<div class="innerDiv">
		  <table id="quitTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">您确定要关闭应用程序吗？</span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="quit_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
 </div>
</div>
<!-- 退出应用 -->
<script type="text/javascript">
	  $(function(){
		    var $quitConfirm = $("#quit_confirm");
		    $quitConfirm.click(function(){
		    	window.opener=null;
				window.open('','_self');
				window.close();
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
