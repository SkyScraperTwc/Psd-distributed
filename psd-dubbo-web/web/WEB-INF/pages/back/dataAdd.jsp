<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="dataAddMsgCss" id="dataAddMsg_box">
		<h4>
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">数据导出<span/>
		</h4>
<div class="innerDiv">
		  <table id="dataAddMsgTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">数据导出成功！<span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center">
				       <a href="javascript:void(0);" id="dataAddMsg_confirm" class="btn_submit">
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
		    var $dataAddMsgConfirm = $("#dataAddMsg_confirm");
		    $dataAddMsgConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
