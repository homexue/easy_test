<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>
<div style="height:95%">
	<table id="menu_grid" class="easyui-datagrid" border="0" style="width:100%;height:100%"
		url="${ctx }/menu/getPage.action" toolbar="#menu_grid_toolbar"
		title="菜单管理" iconCls="icon-save" singleSelect="true" fitColumns="true" 
		idField="menuId" 
		rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="ck" checkbox="true"></th>
				<th field="menuId" width="80">菜单ID</th>
				<th field="menuCode" width="80">菜单Code</th>
				<th field="menuName" width="80" align="right">菜单名字</th>
			</tr>
		</thead>
	</table>
	
	<div id="menu_grid_toolbar">
		<div style="padding:3px">
			<span>Item ID:</span>
			<input id="itemid" style="line-height:26px;border:1px solid #ccc">
			<span>Product ID:</span>
			<input id="productid" style="line-height:26px;border:1px solid #ccc">
			<a href="#" class="easyui-linkbutton" plain="true" onclick="doSearch()">Search</a>
		</div>
		<div style="margin-bottom:5px;">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
		</div>
	</div>
	<script>
	function doSearch(){
		$('#menu_grid').datagrid('load',{
			itemid: $('#itemid').val(),
			productid: $('#productid').val()
		});
	}
	</script>

	
</div>