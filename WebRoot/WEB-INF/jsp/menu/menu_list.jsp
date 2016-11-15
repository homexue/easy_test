<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/tag.jsp" %>
<div>
	菜单列表页面
	<c:forEach items="${menuList }" var="m">
		${m.menuName} <br/>
	</c:forEach>
</div>