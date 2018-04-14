	    //打开对话框
		function openDialogBox(boxId){
			easyDialog.open({
				container:boxId,
			}); 
	   }
		//关闭对话框
		function closeDialogBox(){
			params = "";
			easyDialog.close();
		}
		var params = "";
		//全局变量
		function deleteChecked(checkboxName) {
			var checkboxObjs = document.getElementsByName(checkboxName);
			var vals = [];
			for (var i = 0; i < checkboxObjs.length; i++) {
				var chObjs = checkboxObjs[i];
				if (chObjs.checked == true) {
					vals.push(chObjs.value);
					params+=chObjs.value+",";
				} 
			} 
			if(params.length>0){
				params = params.substring(0, params.length-1);
			}
			if (vals.length==0){   
				alert("请选择要删除的记录！");
			}else{
				openDialogBox('dataDelMsg_box');	
			}
		}
		//全选	
		function checkAll(checkboxName){
			var checkboxObjs = document.getElementsByName(checkboxName);
			for(var i = 0;i<checkboxObjs.length;i++){
				checkboxObjs[i].checked = true;
			}
		}
	    //取消选择	
	    function cancelCheck(checkboxName){
			var checkboxObjs = document.getElementsByName(checkboxName);
			for(var i = 0;i<checkboxObjs.length;i++){
				checkboxObjs[i].checked = false;
			}
		}
	    //反选   
	    function reverseCheck(checkboxName){
			var checkboxObjs = document.getElementsByName(checkboxName);
			for(var i = 0;i<checkboxObjs.length;i++){
			if(checkboxObjs[i].checked==true){
					checkboxObjs[i].checked = false ;
				}else{
					checkboxObjs[i].checked = true;
				}
			}
		}
	    //定义
	    function hightLightShow(){
	    	var listTb = document.getElementById("list_tb");
	    	var trs = listTb.rows;
	    	for(var i = 0;i<trs.length;i++){
		    		if(i>0 && i<trs.length-2){
		    		var tr = trs[i];
		    		//鼠标悬停
		    		tr.onmouseover = function(){
		    			this.style.backgroundColor = "#FFFFBB";
		    		}
		    		//鼠标离开
		    		tr.onmouseout = function(){
		    			this.style.backgroundColor = "";
		    		}
	    		}
	    	}
	    }
