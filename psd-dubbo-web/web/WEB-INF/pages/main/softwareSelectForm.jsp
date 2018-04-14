<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="softwareSelectFormCss" id="software_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">软件设置</span>
		</h4>
<style type="text/css">
	.select{
		border:1px solid;	
		width: 245px;
	}
</style>
<div class="innerDiv">
	  <form id="softwareDataForm" method="post">
		  <table id="softwareDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择软件参数：<span>
					</caption>
		  	     <tr > 
		  	          <td width="30%">x参数:</td>
		  	     	  <td> 	
						<select class="select">
						  <option value="">x1</option>
						  <option value="">x2</option>
						  <option value="">x3</option>
						  <option value="">x4</option>
						  <option value="">x5</option>
						  <option value="">x6</option>
						  <option value="">x7</option>
						  <option value="">x8</option>
						  <option value="">x9</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
	  	        <tr >
		  	        <td width="30%">y参数:</td>
		  	     	  <td>
		  	     	  	<select class="select">
						  <option value="">y1</option>
						  <option value="">y2</option>
						  <option value="">y3</option>
						  <option value="">y4</option>
    					  <option value="">y5</option>
						  <option value="">y6</option>
						  <option value="">y7</option>
						  <option value="">y8</option>
						  <option value="">y9</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
     	  	      <tr >
		  	        <td width="30%">z参数:</td>
		  	     	  <td> 	
	  	     	        <select class="select">
						  <option value="">z1</option>
						  <option value="">z2</option>
						  <option value="">z3</option>
						  <option value="">z4</option>
						  <option value="">z5</option>
						  <option value="">z6</option>
						  <option value="">z7</option>
						  <option value="">z8</option>
						  <option value="">z9</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
   	  	         <tr >
		  	        <td width="30%" >k参数:</td>
		  	     	  <td>
		  	     	   <select class="select">
						  <option value="">k1</option>
						  <option value="">k2</option>
						  <option value="">k3</option>
						  <option value="">k4</option>
    					  <option value="">k5</option>
					      <option value="">k6</option>
					      <option value="">k7</option>
					      <option value="">k8</option>
					      <option value="">k9</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
      	  	      <tr>
		  	        <td width="30%">m参数:</td>
		  	     	  <td> 	
  	     	            <select class="select">
							<option value="">m1</option>
							<option value="">m2</option>
							<option value="">m3</option>
							<option value="">m4</option>
							<option value="">m5</option>
							<option value="">m6</option>
							<option value="">m7</option>
							<option value="">m8</option>
							<option value="">m9</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
	  			<tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="btn_software_confirm" class="btn_submit">
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
		    var $btnSoftWareConfirm = $("#btn_software_confirm");
		    $btnSoftWareConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
