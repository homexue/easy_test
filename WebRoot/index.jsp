<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>easy超级模板</title>
	
	<script type="text/javascript">  
		  var fulls = "left=-2,screenX=-5,top=-2,screenY=0,scrollbars=1";    //定义弹出窗口的参数  
		  if (window.screen) {  
			  var ah = screen.availHeight - 50;  
			     var aw = screen.availWidth - 10;  
		     fulls += ",height=" + ah;  
		   //  fulls += ",innerHeight=" + ah;  
		     fulls += ",width=" + aw;  
		    // fulls += ",innerWidth=" + aw;  
		     fulls += ",resizable"  
		 } else {  
		     fulls += ",resizable"; // 对于不支持screen属性的浏览器，可以手工进行最大化。 manually  
		 }  
		 function openNewWindow(){  
		  	window.open('toMain.do','呵呵',fulls);  
		 }  
</script>  
	
  </head>
  <body >
    	<a href="javascript:void(0)" onclick="openNewWindow()">未来的登陆, 先这样吧</a>
  </body>
</html>
