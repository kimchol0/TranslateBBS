<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
<head>
    <title>图表</title> 
     <script src="<%=path %>/admin/echart/jquery-1.8.3.js"/>
     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
     <script src="<%=path %>/admin/echart/echarts.js"/>
     <script>
     console.log(1);
     </script>
</head>
<body>
	
		<!-- 显示Echarts图表 -->
		<div style="height:410px;min-height:100px;margin:0 auto;" id="main"></div>	
		
		<script type="text/javascript">
		
		// 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
    	
    	myChart.showLoading();//数据加载完之前显示一段Loading动画
     	var mingchengs = [];
    	var fangwenliangs = [];
    	$.ajax({
    		type:"post",//post请求方式
    		url:"<%=request.getContextPath()%>/ListEchart",
    		data:{},
    		dataType:"json",
    		 success : function(result) {
    			//请求成功时执行该函数内容，result即为服务器返回的json对象
     			 	if (result != null && result.length > 0) { 
	               		for(var i=0;i<result.length;i++){
	               				mingchengs.push(result[i].biaoti);
	               				fangwenliangs.push(result[i].dianji);
	               				console.log(mingchengs);
	               				console.log(fangwenliangs);
	               		}
	               	  myChart.hideLoading();	//隐藏加载动画
		              	// 指定图表的配置项和数据
		               	var option={
		              			
		              			title:{ // 图表标题
		              					text:'帖子点击量统计表'
		              			},
		              			tooltip:{
		              				trigger:'axis',//坐标轴触发提示框
		              			},
		              	legend:{//图表上方的类别显示
		              		show:true,
		              		data:['点击量']
		              	},
		              	color:[
		              	       		'#FF3333',
		              			],
		              	xAxis:{//x轴
		              		name:'名称',
		              		type:'category',
		              		data:mingchengs,
		              		axisLabel:{
  		              			interval:0,
		              			formatter:function(val){
		              			    return val.split("").join("\n");
		              			}
		              		}
		              	},
		              	dataZoom:[{
		              		type:'slider',
		              		show:true,
		              		xAxisIndex:[0],
		              		left:'9%',
		              		bottom:10,
		              		start:10,
		              		end:90 //初始化滚动条
		              	}],
		              	yAxis:{//y轴
		              		name:'点击量',
		              		data:fangwenliangs,
		              		type:'value'
		              	},
		          		series:[//系列（内容）列表
		              	        {
 		              	        	name:'点击量',
		              	        	type:'bar',
		              	        	data:fangwenliangs,
		              	        	barWidth:40,//设置柱状图宽度
		              	        }
		              	        ] 
		              	
		              	}; 
	    	   myChart.setOption(option);
    	 }
    		         else {
    		        	 //返回的数据为空时显示提示信息
    		        	 alert("图表请求数据为空，可能服务器暂未录入数据，您可以稍后再试！");
    		          	 myChart.hideLoading();
    		         }
    	},
     	error : function(errorMsg) {
     		//请求失败时执行该函数
         	alert("图表请求数据失败，可能是服务器开小差了");
         	myChart.hideLoading();    	
     	}
    	}
    	)

    	    </script>


</body>
</html>