<%@ page language="java" pageEncoding="UTF-8"%>
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

  </head>
  
  <body>    <div class="newcontain">
        
 

  <div class="BiaoTi"><h2> 
	       
<b>游记信息 </b>
 </h2>
					        </div>
      <center>
     <div class="tit1">
      <ul> 
<c:forEach  items="${youjiList}"  var="v3">
        
        <li class=Licss><a href='youjiInfo?id=${v3.id}'><img src='<%=path %>/${v3.pic}' style="height: 270px; width: 220px" /></a>
      <span class="TCspan">${v3.title}
      
      <br />
     </span>
      </li>  
       
	 </c:forEach>
 
	 
 
 
      </ul>       
 </div>
 

 </center>
    </div>

  </body>
</html>
