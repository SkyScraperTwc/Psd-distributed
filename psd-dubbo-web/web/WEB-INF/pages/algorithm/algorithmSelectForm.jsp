<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="algorithmSelectFormCss" id="algorithm_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">算法选择</span> 
		</h4>
<div class="innerDiv" id="signals">
		  <table id="algorithmDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择算法种类：</span>
					</caption>
		  	     <tr>
		  	          <td width="30%">
		  	            <a href="javascript:void(0);" id="psd" class="btn_submit">
		  	          		 功率谱估计法
					   </a>
		  	          </td>
		  	     </tr>
		  </table>
 </div> 
</div>

<jsp:include page="/WEB-INF/pages/algorithm/psdSelectForm.jsp"/>

<script type="text/javascript">
    $(function(){
    	var $psd = $("#psd");
    	$psd.click(function(){
    		openDialogBox('psd_box');
    	});
    });
</script>
               
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
