<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>XXX系统</title>
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/demo/demo.css">
<script type="text/javascript" src="../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function(){  
		addTab('列表','/tkxt/showListPage');
	});  
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height: 60px; background: #B3DFDA; padding: 10px">north region</div>

	<div data-options="region:'west',split:true,title:'West'" style="width: 150px; padding: 10px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<div title="探矿管理系统" data-options="selected:true" style="padding: 10px;">
				<a href="javascript:void(0)" onclick="addTab('列表','/tkxt/showListPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-picture',size:'large',iconAlign:'top'">探矿申请单列表</a> 
				<a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="addTab('新建','/tkxt/showXinjianPage')" style="width: 100%" data-options="iconCls:'icon-large-shapes',size:'large',iconAlign:'top'">Shapes</a>
				<a href="javascript:void(0)" onclick="addTab('变更','/tkxt/showBianGengPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-smartart',size:'large',iconAlign:'top'">SmartArt</a> 
				<a href="javascript:void(0)"
					class="easyui-linkbutton" style="width: 100%" data-options="iconCls:'icon-large-chart',size:'large',iconAlign:'top'">Chart</a>
			</div>

		</div>
	</div>

	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width: 100px; padding: 10px;">east region</div>

	<div data-options="region:'south',border:false" style="height: 50px; background: #A9FACD; padding: 10px;">south region</div>

	<div data-options="region:'center',title:'Center'">
		<div class="easyui-tabs" data-options="fit:true,border:false,plain:true" id="tt">
			
		</div>
	</div>
</body>
</html>