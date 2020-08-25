<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="css/main.css" rel="stylesheet"> <link href="css/dhang.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
        .style1
        {
            width: 1026px;text-align:center;  
        }
        
        		
    </style> <link href="css/video-js.min.css" rel="stylesheet">
<script src="js/video.min.js"></script>
	</head>

	<body>
		<jsp:include flush="true" page="Top.jsp"></jsp:include>
		
		  <div class="newcontain">
        
  <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>

  <div class="BiaoTi"><h2> 
新闻信息</h2></div>

	  <table class="style1"  Align="center"> 
          
		<tr>
			<td>
				<ul>
 
					<p class="a_title">
					${notice.title}
					</p>
					<p class="box_p">
						<span>发布时间：	${notice.shijian}
						</span><span>发布人：	${notice.faburen} </span> 
					</p>

				  <ul class="a_content" style="text-align:left">
                      
                            
                        	${notice.neirong}
                                   
                         
       </ul>  
 			</ul>
 
    </ul>
						 
 		  </div>    
                   </td>
		</tr>   
		
		
		
		
		
  <tr>
                <td align=left>  
 
    </td>
    </tr>
        </table>
        	 
</div>
</div>


			   <script type="text/javascript">
     var myPlayer = videojs('example_video_1');
     videojs("example_video_1").ready(function() {
         var myPlayer = this;
         myPlayer.play();
     });
</script>
	</body>
</html>
