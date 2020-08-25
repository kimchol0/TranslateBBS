<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>     <jsp:include flush="true" page="Top.jsp"></jsp:include>
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
        
 

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
<b>在线充值</b></h2>

</div>
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/jifenAdd?ty=1">		

 <table class="table" cellspacing="0" cellpadding="0" align="left"> 
             <tr>
                 
                 <td class="style5">
                    用户名：	 <input type="text" name="username" id="username"  value="<%out.print(session.getAttribute("username").toString() );%>"
                 </td>
             </tr>
           
             <tr>
                 <td class="style5">
              时&nbsp;&nbsp;&nbsp;&nbsp;间：<input type="text" name="shijian" id="shijian"  value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>">  
                 </td>
             </tr>
           
             <tr>
                 <td class="style5">
                     金&nbsp;&nbsp;&nbsp;&nbsp;额：<input type="text" name="jine" id="jine" >  
                 </td>
             </tr>
           
             <tr>
                 <td class="style5">
               支付方式： 		    <select name="fangshi" style="height:30px" >
 
              <option value="微信">微信</option>
       <option value="支付宝">支付宝</option>
		 </select>   	  <button type="submit" class="btn  btn-success" >确定</button>
                 </td>
             </tr>
           
             <tr>
                 <td colspan="2" class="style5" align=left>
                   <img src="images/WX.png" style="width: 349px; height: 428px" />
                   <img src="images/ZFB.png" style="width: 349px; height: 428px" />
                 </td>
             </tr>
</table>
  </form>
  </body>
</html>
