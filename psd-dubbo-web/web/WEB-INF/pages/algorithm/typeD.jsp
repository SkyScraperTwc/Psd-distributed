<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="signalSelectFormCss" id="typeD_box" style="height:500px;">
		<h4>
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">typeD算法<span/>
		</h4>
<div class="innerDiv">
		  <table id="signalDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择typeD算法参数：</span>
					</caption>
		  	     <tr>
		  	          <td width="30%">a参数:</td>
		  	     	  <td>
		  	     	        <input id="typeD_a_param" value="100"/>
					  </td>
					  <td><span></span>
					  </td>
		  	     </tr>
	  	        <tr >
		  	        <td width="30%">b参数:</td>
		  	     	  <td>
		  	     	         <input id="typeD_b_param" value="1000"/>
					  </td>
					  <td><span></span>
					  </td>
		  	     </tr>
     	  	      <tr >
		  	        <td width="30%">c参数:</td>
		  	     	  <td> 	
		  	     	         <input id="typeD_c_param" value="10000"/>
					  </td>
					  <td>
					  </td>
		  	     </tr>
		  	      <tr >
		  	     	  <td colspan="3" align="center">
					       <a href="javascript:void(0);" id="btn_typeD_confirm" class="btn_submit">
					       	            确认
					       </a>
					  </td>
		  	     </tr>
		  </table>
 </div> 
</div>

<script type="text/javascript">
    $(function(){
	    var $btnTypeDConfirm = $("#btn_typeD_confirm");
	    $btnTypeDConfirm.click(function(){
			easyDialog.close();
	    });
    });
	
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
