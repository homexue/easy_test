<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>

<script>
	$('#menu_grid_js').datagrid({
	    height: 340,
	    url: '${ctx}/menu/getPage.do',
	    method: 'POST',
	    //queryParams: { 'id': id },
	    idField: 'menuId',
	    striped: true,
	    fitColumns: true,
	    singleSelect: true,
	    rownumbers: true,
	    pagination: true,
	    nowrap: false,
	    pageSize: 10,
	    pageList: [10, 20, 50, 100, 150, 200],
	    showFooter: true,
	    columns: [[
	        { field: 'ck', checkbox: true },
	        { field: 'menuId', title: '菜单ID',align: 'center' },
	        { field: 'menuCode', title: '菜单代码',align: 'center' },
	        { field: 'menuName', title: '菜单名称', width: 100, align: 'left' }
	       
	    ]],
	    onBeforeLoad: function (param) {
	    	
	    },
	    onLoadSuccess: function (data) {
	        
	    },
	    onLoadError: function () {
	        
	    },
	    onClickCell: function (rowIndex, field, value) {
	        
	    }
	});
	
	function doSearch(){
		$('#menu_grid_js').datagrid('load',{
			itemid: $('#itemid').val(),
			productid: $('#productid').val()
		});
	}
</script>
<div style="height:95%;width:100%">
	<table id="menu_grid_js" style="height:100%;width:100%">
		
	</table>
	
	<div id="menu_grid_js_toolbar">
		
	</div>
</div>