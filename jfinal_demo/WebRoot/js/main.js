/**
 * add tab to main.jsp center region
 * 
 * @param title
 * @param url
 */
function addTab(title, url) {
	if("新建" != title && "列表" != title){
		var id = $("iframe")[0].contentWindow.$("#selectedId").val();
		if(null == id){
			$.messager.alert('警告', '请选择要操作的申请单!', 'error');
			return false;
		}
		url += "?id=" + id;
	}
	if ($('#tt').tabs('exists', title)) {
		$('#tt').tabs('select', title);
	} else {
		var content = '<iframe scrolling="auto" id=\"'+ title +'\" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
		var closable = true;
		if( "列表" == title){
			closable = false;
		}
		$('#tt').tabs('add', {
			title : title,
			content : content,
			closable : closable
		});
	}
}

/**
 * 弹出操作窗口
 * 
 * @param title
 * @param option
 * @param url
 */
function showFormPage(title, option, url) {
	var iconCls;
	if ("edit" == option) {
		var row = $("#tt").datagrid('getSelected');
		url += "?id=" + row.id;
	}
	$('#dlg').window({
		title : title,
		href : url,
		width : '700',
		height : '400',
		left : '100px',
		top : '70px',
		iconCls : 'icon-edit',
		modal : true,
		closed : true
	}).window('open');
}

function submitForm() {
	$('#fm').form('submit', {
		dataType : 'json',
		success : function(data) {
			data = $.parseJSON(data);
			if (data.success) {
				parent.$.messager.show({
					title : '成功 ',
					msg : '提交表单成功'
				});
				clearForm();
				var id = $("iframe")[0].contentWindow.$("#selectedId").click();
			} else {
				parent.$.messager.alert('警告', '提交表单失败!', 'error');
			}
		}
	});
}

function clearForm() {
	$('#fm').form('clear');
}

function deleteRecord(url) {
	var row = $("#tt").datagrid('getSelected');
	if(null == row){
		$.messager.alert('警告', '请选择需要删除的记录!', 'error');
		return false;
	}
	$.messager.confirm("操作提示", "您确定要删除记录吗？", function(data) {
		if(data){
			$.ajax({
				type : "Post",
				data : {
					id : row.id
				},
				url : url,
				dataType : "json",
				success : function(data) {
					if (data.success) {
						$.messager.show({
							title : '成功 ',
							msg : '删除数据成功！'
						});
						$('#tt').datagrid('reload');
					} else {
						$.messager.alert('警告', '删除数据失败!', 'error');
					}
				},
				error : function(err) {
					$.messager.alert('警告', '删除数据失败!', 'error');
				}
			});
		}
	});
}