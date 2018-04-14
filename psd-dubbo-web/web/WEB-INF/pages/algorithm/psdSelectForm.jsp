<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="psdSelectFormCss" id="psd_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">算法设置</span>
		</h4>
	<div class="innerDiv" id="signals">
			  <table id="psdDataTable">
						<caption id="cap">
							<span style="font-weight: bold">请选择算法：</span>
						</caption>
					 <tr>
						  <td width="30%">
							<a href="javascript:void(0);" id="typeA" class="btn_submit">
								typeA算法
						   </a>
						  </td>
					 </tr>
					<tr>
						<td width="30%">
						   <a href="javascript:void(0);" id="typeB" class="btn_submit">
							   typeB算法
						   </a>
						</td>
					 </tr>
					  <tr>
						 <td width="30%">
						  <a href="javascript:void(0);" id="typeC" class="btn_submit">
								  typeC算法
						   </a>
						</td>
					 </tr>
					 <tr>
						 <td width="30%">
						  <a href="javascript:void(0);" id="typeD" class="btn_submit">
								   typeD算法
						   </a>
						</td>
					 </tr>
			  </table>
	 </div>
</div>

<jsp:include page="/WEB-INF/pages/algorithm/typeB.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/typeA.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/typeC.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/typeD.jsp"/>

<script type="text/javascript">
    var algorithmJudge = null;
    $(function(){
    	var $typeA = $("#typeA");
    	$typeA.click(function(){
            algorithmJudge = "typeAAlgorithm";
    		openDialogBox('typeA_box');
    	});

    	var $typeB = $("#typeB");
    	$typeB.click(function(){
    		algorithmJudge = "typeBAlgorithm";
    		openDialogBox('typeB_box');
    	});

    	var $typeC = $("#typeC");
    	$typeC.click(function(){
    		algorithmJudge = "typeCAlgorithm";
    		openDialogBox('typeC_box');
    	});

    	var $typeD = $("#typeD");
    	$typeD.click(function(){
    		algorithmJudge = "typeDAlgorithm";
    		openDialogBox('typeD_box');
    	});

    });
</script>
               
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
