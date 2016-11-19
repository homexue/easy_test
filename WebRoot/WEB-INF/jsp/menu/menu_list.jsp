<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>

<script>
	var $menu_grid = $('#menu_grid').datagrid({
		title:'菜单管理',
	    iconCls:'icon-edit', //图标
	    url: '${ctx}/menu/getPage.do',
	    method: 'POST',
	    //queryParams: { 'id': id },
	    idField: 'menuId',
	    striped: true,
	    fitColumns: true,
	    loadMsg:'数据加载中......',
	    singleSelect: true,
	    rownumbers: true,
	    pagination: true,
	    nowrap: false,
	    pageSize: 15,
	    pageList: [15,30, 50, 100, 150, 200],
	    showFooter: true,
	    columns: [[
	        { field: 'ck', checkbox: true },
	        { field: 'menuId', title: '菜单ID',align: 'center' },
	        { field: 'menuCode', title: '菜单代码',align: 'center' },
	        { field: 'menuName', title: '菜单名称', width: 100, align: 'left' }
	    ]],
		onLoadSuccess:function(){
			$('#menuTable').datagrid('clearSelections'); //一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
		},
	    onBeforeLoad: function (param) {
	    	
	    },
	    onLoadError: function () {
	        
	    },
	    onClickCell: function (rowIndex, field, value) {
	        
	    },
	    toolbar:'#menu_tool_bar'
	});
	
	function doSearch(){
		$menu_grid.datagrid('load',{
			itemid: $('#itemid').val(),
			productid: $('#productid').val()
		});
	}
</script>
<div style="height:100%;width:100%;border-bottom:1px" >
	<div id="menu_tool_bar" class="easyui-layout" style="width:30%;height:40%">
		<div region="north" style="height:60%;padding:10px;" >
			Date From: <input class="easyui-textbox" style="width:80px">
			To: <input class="easyui-textbox" style="width:80px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search">Search</a>
		</div>
		<div region="sourth" style="height:40%;position:relative; bottom:10px;" >
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
		</div>
	</div>
	<table id="menu_grid" border="false" style="height:100%;width:100%; border-bottom:1px">
		
	</table>
	
</div>