<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>探矿管理系统</title>
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../js/jquery-easyui-1.4.4/demo/demo.css">
<script type="text/javascript" src="../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var login = $("#login").val();
		if("true" == login){
			addTab('列表','/tkxt/showListPage');
		}else{
			showLoginWindow();
		}
	});
	
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height: 60px; background: #B3DFDA; padding: 10px">探矿管理系统</div>
	<input type="hidden" id="login" value="<%=session.getAttribute("login")%>"></input>
	<div data-options="region:'west',split:true,title:'菜单'" style="width: 150px; padding: 10px;">
		<div class="easyui-accordion" data-options="fit:true,border:false" style="overflow:scroll">
				<a href="javascript:void(0)" onclick="addTab('列表','/tkxt/showListPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-chaxun',size:'large',iconAlign:'top'">探矿申请单列表</a> 
				<a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="addTab('新建','/tkxt/showXinjianPage')" style="width: 100%" 
					data-options="iconCls:'icon-large-xinli',size:'large',iconAlign:'top'">新立</a>
				<a href="javascript:void(0)" onclick="addTab('变更','/tkxt/showBianGengPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-biangeng',size:'large',iconAlign:'top'">变更</a> 
				<a href="javascript:void(0)" onclick="addTab('注销','/tkxt/showZhuXiaoPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-zhuxiao',size:'large',iconAlign:'top'">注销</a>
				<a href="javascript:void(0)" onclick="addTab('转让','/tkxt/showZhuanRangPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-zhuanrang',size:'large',iconAlign:'top'">转让</a>
				<a href="javascript:void(0)" onclick="addTab('地调','/tkxt/showDiDiaoPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-didiao',size:'large',iconAlign:'top'">地调</a>
				<a href="javascript:void(0)" onclick="addTab('年检','/tkxt/showNianJianPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-nianjian',size:'large',iconAlign:'top'">年检</a>
				<a href="javascript:void(0)" onclick="addTab('帮助','/tkxt/showBangZhuPage')" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-bangzhu',size:'large',iconAlign:'top'">帮助</a>
				<a href="javascript:void(0)" onclick="logout()" class="easyui-linkbutton" style="width: 100%"
					data-options="iconCls:'icon-large-tuichu ',size:'large',iconAlign:'top'">退出</a>
		</div>
	</div>

	<div data-options="region:'south',border:false" style="height: 50px; background: #A9FACD; padding: 10px;"></div>

	<div data-options="region:'center',title:' '">
		<div class="easyui-tabs" data-options="fit:true,border:false,plain:true" id="tt">
			
		</div>
	</div>
	
	<div id="dd">
         <form id="loginForm" method="POST" action="/login">
         <table>
             <tr>
                 <th>
                     用户名
                 </th>
                 <td>
                     <input name="username" type="text" />
                 </td>
             </tr>
             <tr>
                 <th>
                     密码
                 </th>
                 <td>
                     <input name="password" type="password" />
                 </td>
             </tr>
         </table>
         </form>
     </div>
</body>
</html>