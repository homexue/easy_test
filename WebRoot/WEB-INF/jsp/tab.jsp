<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="comm/tag.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>easy超级模板</title>
	
	<c:import url="comm/script.jsp"></c:import>
    </head>
  <body class="easyui-layout">  
<script type="text/javascript">  
        var index = 0;  
        function addPanel(url,title){  
            if(!$('#tt').tabs('exists', title)){  
                $('#tt').tabs('add',{  
                    title: title,  
                    content: '<iframe src="'+url+'" frameBorder="0" border="0"  style="width: 100%; height: 100%;"/>',  
                    closable: true 
                    
                });  
            }else{  
                $('#tabs').tabs('select', title);  
            }  
        }  
        
        
        function removePanel(){  
            var tab = $('#tt').tabs('getSelected');  
            if (tab){  
                var index = $('#tt').tabs('getTabIndex', tab);  
                $('#tt').tabs('close', index);  
            }  
        }  
    </script>  
    
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>  
    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>  
    <div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>  
    <div data-options="region:'west',title:'West',split:true" style="width:150px;">  
    <ul id="tt1" class="easyui-tree">  
    <li>  
        <span>Folder</span>  
        <ul>  
            <li>  
                <span>Sub Folder 1</span>  
                <ul>  
                    <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab1')">File 11</a></span></li>  
                    <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab2')">File 11</a></span></li>  
                    <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab3')">File 11</a></span></li>  
                </ul>  
            </li>  
            <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab4')">File 11</a></span></li>  
            <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab5')">File 11</a></span></li>  
        </ul>  
    </li>  
    <li><span><a href="javascript:void(0)" onclick="addPanel('tab1.jsp','tab6')">File 11</a></span></li>  
</ul>  
          
    </div>  
    <div id="tt" data-options="region:'center',title:'center title'"  class="easyui-tabs" style="padding:5px;background:#eee;">  
  
    <div title="Tab1" style="padding:20px;display:none;">  
        tab1  
    </div>  
    </div>  
      
  </body>  
</html>  