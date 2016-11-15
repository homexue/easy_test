<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>
	<script>
		var zTreeSetting_Menu = {
			data: {
				simpleData: {
					enable: true
				}
			}
		}
		var zTreeSetting_Nodes = [
				{id:1, pId:0, name:"系统管理", open:true, iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:2, pId:1, name:"菜单管理",click:"setmain('菜单管理','${ctx}/menu/getList.do')", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:3, pId:1, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:4, pId:1, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:5, pId:2, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:6, pId:2, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:7, pId:2, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:8, pId:3, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:9, pId:3, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:10, pId:3,click:"setmain('百度','${ctx}/baidu.do')",name:"百度", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:11, pId:3,click:"setmain('谷歌','${ctx}/google.do')",name:"谷歌", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:12, pId:4, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:13, pId:5, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:14, pId:8, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"},
				{id:15, pId:8, name:"父级菜单", iconOpen:"${ctx}/image/a.png",iconClose:"${ctx}/image/b.png"}
		];
		//菜单
		$(document).ready(function(){
			$.fn.zTree.init($("#model1"), zTreeSetting_Menu, zTreeSetting_Nodes);
			$.fn.zTree.init($("#model2"), zTreeSetting_Menu, zTreeSetting_Nodes);
			$.fn.zTree.init($("#model3"), zTreeSetting_Menu, zTreeSetting_Nodes);
		});
	</script>

  
   	 <div class="easyui-accordion" class="menudiv" style="overflow:hidden;height:100%">
		<div title="我是第一个菜单">
			<ul id="model1" class="ztree"></ul>
		</div>
		<div title="我是第二个菜单">
			<ul id="model2" class="ztree"></ul>
		</div>
		<div title="我是第三个菜单">
			<ul id="model3" class="ztree"></ul>
		</div>
 	</div>
