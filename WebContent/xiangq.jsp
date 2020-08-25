<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>    
 <jsp:include flush="true" page="Top.jsp"></jsp:include>
  <head>
 <link href="css/main.css" rel="stylesheet">
    <link href="css/Maste.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
       .table 
       {
           width: 100%;;
            border: 1px solid #ddd;
            border-collapse: collapse;
        }

        .table thead tr th,
        .table tbody tr td {
            padding: 8px 12px;
          
            color: #333;
            border: 1px solid #ddd;
            border-collapse: collapse;
            background-color: #fff;
        }
 
    </style> 
  </head>
  
  <body>    <div class="newcontain">
        
      <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
<b>帖子信息</b></h2>

</div>
  <table id="ctl00_ContentPlaceHolder1_dlTopic" cellspacing="0" border="0" style="border-collapse:collapse;WIDTH: 100%">
	<tr>
		<td>
 

    
            
            <table border="1px" bordercolor="#a9d46d" cellspacing="0px" style="border-collapse:collapse" width=100%>
			
			
			<tr>
			<td></td>
			<td></td>
			</tr>
                <tr>
                    <td style="width: 160px"  valign="top">
                     
                        <table width="100%" border="0">
                          <tr>
                            <td>   用户名： 	${tiezi.username}</td>
                          </tr>
                          <tr>
                            <td>   
 <img id="ctl00_ContentPlaceHolder1_dlTopic_ctl00_Image1" src="<%=path %>/${tiezi.touxing}" style="width:80px;border-width:0px;border-radius:50px 50px 50px 50px" /></td></td>
                          </tr>
                          <tr>
                            <td>发表于：  	${tiezi.shijian}</td>
                          </tr>
                            
                        </table></td>
                    <td rowspan="4" style="width: 500px" valign=top align=left>
                  <table style="width: 100%">
                            <tr>
                                <td style="border-bottom:1px dashed #CCC;}">
                                	${tiezi.biaoti}
                            </td>
                            </tr>
                            <tr>
                                <td> 
                                   	${tiezi.neirong}
                                   	
                                   	
                                   	
                                   	     <c:if test="${not empty tiezi.fujian}"> 
                                <%        
                       if(session.getAttribute("username")==null)
	{
	%>     	     
        <font color=red> 登录后下载</font>
	<%
	}
	else
	{
	%>
	   <a href="download?id=${tiezi.id}&ty=1">附件</a>  
   <%  
}
%>                	     

  
  
     <br>
    所需积分：${tiezi.jifen}
        </c:if>
        
        
        
                              </td>
                            </tr>
                      </table>
                    </td>
                </tr> 
            </table>
        </td>
	</tr>
</table>
  <c:forEach  items="${huifuList}"  var="v">
             <table border="1px" bordercolor="#a9d46d" cellspacing="0px" style="border-collapse:collapse" width=100%>
			<tr>
			<td></td>
			<td></td>
			</tr>
                <tr>
                    <td style="width: 160px"  valign="top">
                     
                        <table width="100%" border="0">
                          <tr>
                            <td>   用户名： 	${v.username}</td>
                          </tr>
                          <tr>
                            <td>   
 <img id="ctl00_ContentPlaceHolder1_dlTopic_ctl00_Image1" src="<%=path %>/${v.touxing}" style="width:80px;border-width:0px;border-radius:50px 50px 50px 50px" /></td></td>
                          </tr>
                          <tr>
                            <td>发表于：  	${v.shijian}</td>
                          </tr>
                            
                        </table></td>
                    <td rowspan="4" style="width: 500px" valign=top align=left>
<table style="width: 100%">
                            
                            <tr>
                                <td> 
                                   	${v.neirong}
                                   	      
                              </td>
                            </tr>
                      </table>
                    </td>
                </tr> 
            </table>
 </c:forEach>
 
 
 <center>
 <br>

             <table border="1px" bordercolor="#a9d46d" cellspacing="0px" style="border-collapse:collapse" width=100%>
			 
                <tr>
                    <td   valign="top"  >
                      <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/huifuAdd">		<div class="form-group">
		
 		
	   <script type="text/javascript" src="<%=path %>/ueditor/ueditor.config.js"></script>
       <script type="text/javascript" src="<%=path %>/ueditor/ueditor.all.js"></script>
		<div class="form-group">
		<label for="neirong" class="col-sm-2 control-label">内容</label>
 		 <div class="col-sm-3">
 <textarea name="neirong" id="neirong" ></textarea>
<script type="text/javascript">
UE.getEditor('neirong',{toolbars:[['FullScreen', 'Source','Undo', 'Redo','Bold','test']],wordCount:false,elementPathEnabled:false,
initialFrameHeight:200,initialFrameWidth:540})   </script>
  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  
  <%        
                       if(session.getAttribute("username")==null)
	{
	%>
 
   <button type="submit" class="btn  btn-success"  disabled>登录后留言</button>
	<%
	}
	else
	{
	%>
	 <input type="hidden" name="username" id="username" value="<%out.print(session.getAttribute("username").toString() );%>">  
 		 <input type="hidden" name="tid" id="tid"   value="${tiezi.id}"> 
 		 <input type="hidden" name="shijian" id="shijian"  value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>"> 
  		<input type="hidden" name="hstate" id="tstate"class="form-control"  value="0" >  
  <button type="submit" class="btn  btn-success" >保存</button>
   <%  
}
%> 
  		  </div>
		</div>    
  </form>
                       </td> 
                </tr> 
            </table>

   </center>
  </body>
</html>
