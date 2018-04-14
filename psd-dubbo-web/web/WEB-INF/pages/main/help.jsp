<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="helpCss" id="usinghelp_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">软件说明</span>
		</h4>
<div class="innerDiv">
		  <table id="helpTable">
		  	        <caption id="cap">
						<span style="font-weight: bold;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					本软件为基于分布式的信号算法可视化数据检测系统，使用Spring MVC + Dubbo + Zookeeper技术，实现分布式环境下算法数据可视化检测。
					前端使用EasyDialog/JavaScript完成算法与信号参数配置，Ajax与后端进行动态交互，后端采用面向服务治理的分布式体系架构。体系架构一共分为三个节点:
					（Web，Service，Algorithm） 之间采取RPC进行通信，Zookeeper作为服务协调中心；基于AOP实现日志记录，策略／工厂模式优化算法选择模型选择功能；
					定义并发线程安全集合实现本地缓存，成功解决算法数据服用问题；采用线程池ThreadPoolExecutor控制管理多线程资源，并解决Matlab画图线程阻塞问题。
					    </span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="help_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
 </div>
</div>
<!-- 应用帮助 -->
<script type="text/javascript">
	  $(function(){
		    var $helpConfirm = $("#help_confirm");
		    $helpConfirm.click(function(){
				easyDialog.close();
		    });
	    });
	  
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
