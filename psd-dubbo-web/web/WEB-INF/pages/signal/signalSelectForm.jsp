<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="signalSelectFormCss" id="signal_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">信号设置<span/>
		</h4>
<div class="innerDiv">
	  <form id="signalDataForm" method="post">
		  <table id="signalDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择信号参数：<span>
					</caption>
		  	     <tr > 
		  	          <td width="30%">x频率:</td>
		  	     	  <td> 	
		  	     	         <input id="x_frequency" placeholder="" value="10000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
	  	        <tr >
		  	        <td width="30%">y频率:</td>
		  	     	  <td>
		  	     	         <input id="y_frequency" placeholder="" value="20000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
     	  	      <tr >
		  	        <td width="30%">z频率:</td>
		  	     	  <td> 	
		  	     	         <input id="z_frequency" placeholder="" value="30000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
   	  	         <tr >
		  	        <td width="30%" >k频率:</td>
		  	     	  <td>
		  	     	         <input id="k_frequency" placeholder="" value="40000"/>
					  </td>
					  <td><span>(/V)</span>
					  </td>
		  	     </tr>
		  	     
      	  	      <tr>
		  	        <td width="30%">m频率:</td>
		  	     	  <td> 	
		  	     	         <input id="m_frequency" placeholder="" value="50000"/>
					  </td>
					  <td><span>(/ms)</span>
					  </td>
		  	     </tr>
	  			<tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="btn_signal_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
    </form>
 </div> 
</div>
<script type="text/javascript">
	  $(function(){
		    var $btnSignalConfirm = $("#btn_signal_confirm");
		    $btnSignalConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
