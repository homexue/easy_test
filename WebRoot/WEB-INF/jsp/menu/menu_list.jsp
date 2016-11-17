<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>

<script>
	var $menu_grid = $('#menu_grid').datagrid({
	    height: '95%',
	    title:'菜单列表', //标题
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
	    pageSize: 10,
	    pageList: [10, 20, 50, 100, 150, 200],
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
	        
	    }
	});
	
	$menu_grid.datagrid({toolbar:[
	   	{
			text:'新增',
			iconCls:'icon-add',
			handler:function(){
				addrow();
			}
		},'-',{
			text:'更新',
			iconCls:'icon-edit',
			handler:function(){
				updaterow();
			}
		},'-',{
			text:'删除',
			iconCls:'icon-remove',
			handler:function(){
				deleterow();
			}
		}
	]})
	
	function doSearch(){
		$menu_grid.datagrid('load',{
			itemid: $('#itemid').val(),
			productid: $('#productid').val()
		});
	}
</script>
<div style="height:95%;width:100%">
	<table id="menu_grid" style="height:100%;width:100%; border-bottom:1px">
	</table>
</div>