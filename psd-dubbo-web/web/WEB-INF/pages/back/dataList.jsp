<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
</meta>
<meta http-equiv="cache-control" content="no-cache">
</meta>
<meta http-equiv="expires" content="0">   
</meta>
<meta http-equiv="Content-Type" 
	  content="text/html; charset=utf-8">
	  </meta>
<meta name="viewport" 
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      </meta>
<title>数据查询</title>
<meta content="检测结果显示" 
      name="keywords">
      </meta>
<meta content="检测结果显示" 
      name="description">
      </meta>
<meta http-equiv="Cache-Control" 
      content="max-age=180">
      </meta>
<meta name="apple-mobile-web-app-capable" 
	  content="yes">
	  </meta>
<meta name="apple-mobile-web-app-status-bar-style" 
	  content="black">
	  </meta>
<meta name="format-detection" 
      content="telephone=no">
      </meta>
<meta http-equiv="x-dns-prefetch-control" 
	  content="on">
	  </meta>
<link href="${pageContext.request.contextPath}/media/css/basestyle.css"
      rel="stylesheet" 
      type="text/css" />
<link href="${pageContext.request.contextPath}/media/css/mc.css"
      rel="stylesheet" 
      type="text/css" />
<script src="${pageContext.request.contextPath}/media/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	    src="${pageContext.request.contextPath}/media/easydialog/js/easydialog.js">
	    </script>
<link href="${pageContext.request.contextPath}/media/css/jquery.bxslider.css"
	  rel="stylesheet"
	  type="text/css"></link>
<link href="${pageContext.request.contextPath}/media/css/font-awesome.min.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="${pageContext.request.contextPath}/media/css/list.css"
	  rel="stylesheet" 
	  type="text/css">
</link> 
<link href="${pageContext.request.contextPath}/media/easydialog/css/dataDel.css"
	  rel="stylesheet"
	  type="text/css">
</link>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/media/js/utils.js">
</script>

<jsp:include page="/WEB-INF/pages/back/dataDelete.jsp"/>

</head>
<body>
<!--header-->
<div class="header">
  <div class="topper">
    <div class="wrap cl">
     <div class="t-left">
     	<span style="font-size: 20px;">
     			基于分布式的信号算法可视化数据检测系统
     	</span>
     </div>
      <div class="t-right">
        <ul class="cl">
          <li class="user-list">
            <div class="top-user">
            	<img src="${pageContext.request.contextPath}/media/images/head.png" />
            			<span style="font-size:20px; ">${sessionScope.username }</span>
            </div>
          </li>
          <li>
          	<div class="top-user">
          	  <a href="javascript:location.reload();">
          	  	<span style="font-size:20px;">
          	  	       刷新页面
          	  	</span>
          	  </a>
          	</div>
          </li>
          <li>
  	  	     <div class="top-user">
          	   <a href="${pageContext.request.contextPath}/index">
          	   <span style="font-size:20px;">
				       回到首页
          	  	</span>
          	   </a>
  	   	     </div>
		  </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="wrap" style="background:url(${pageContext.request.contextPath}/media/images/index-body.jpg);">
		<div id="content">
			<table id="list_tb" align="center">
				<caption id="cap">数据列表</caption>
				<thead>
					<tr>
						<th width="6%">序号</th>
						<th width="4%">选择</th> 
						<th width="12%">检测算法</th>
						<th width="12%">数据保存时间</th>
						<th width="10%">操作</th>
					</tr>
				</thead> 

				<tbody class="tbody">
					
				<c:choose>	
					<c:when test = "${null==pagination.dataList or fn:length(pagination.dataList)==0}  ">
						<tr>
						   <td align="center" colspan="5">暂时没有数据！</td>
						</tr>
					</c:when> 
					
					<c:otherwise> 
					  <c:forEach items="${pagination.dataList }" var="calculateData" varStatus="stat">
								<tr align='center'> 
									<td>${(pagination.currentPage-1)*pagination.pageSize+stat.count}</td>
									<td>
										<input name="id" type="checkbox" value="${calculateData.id}"/>
									</td>   
					 				<td>${calculateData.algorithm.algorithmType}</td>
									<td>${calculateData.createTime}</td>
									<td>
										<a class="like_btn" href="${pageContext.request.contextPath}/handle/detail?id=${calculateData.id}">查看</a>
									</td>
							    </tr>
					    </c:forEach>
					</c:otherwise> 
				</c:choose>	

			<tr class="operation">
				<td align="left" colspan="9">&nbsp;
					<a href="javascript:void(0)" class="like_btn" onclick="checkAll('id')">全选</a>
					<a href="javascript:void(0)" class="like_btn" onclick="cancelCheck('id')">取消选择</a>
					<a href="javascript:void(0)" class="like_btn" onclick="reverseCheck('id')">反选</a>
					<a href="javascript:void(0)" class="like_btn" onclick="deleteChecked('id')">删除</a>
				</td>
			</tr>
			<tr class="page">
					<td align="right" colspan="9">
							<a href="${pageContext.request.contextPath}/handle/list?currentPage=${pagination.first }" class="like_btn">首页</a>
							<a href="${pageContext.request.contextPath}/handle/list?currentPage=${pagination.pre }" class="like_btn">上一页</a>
							<a href="${pageContext.request.contextPath}/handle/list?currentPage=${pagination.next }" class="like_btn">下一页</a>
							<a href="${pageContext.request.contextPath}/handle/list?currentPage=${pagination.last }" class="like_btn">尾页</a>
							共${pagination.totalRecords }条记录，当前第${pagination.currentPage }/${pagination.totalPages }页
					</td>
			</tr>
				</tbody>
			</table>
		</div>
</div>
</body>
</html>
