<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/demo/demo.css">
<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../../js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<table id="tt" class="easyui-datagrid" style="width: 80%; height: auto;" url="/tkxt/list" rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="id" width="80">申请单号</th>
				<th field="userName" width="100">申请人</th>
				<th field="name" width="150">勘查单位</th>
				<th field="sex" width="200">勘查资格证号</th>
				<th field="email" width="200">勘查单位地址</th>
				<th field="content" width="100">申请时间</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>