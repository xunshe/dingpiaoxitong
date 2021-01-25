<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=utf-8" />
		<link href="<%=path%>/css/admin.css" type="text/css" rel="stylesheet" />
	</head>
	<body  background='<%=path %>/img/allbg.gif'>
		<table cellspacing=0 cellpadding=0 width="100%" align=center border=0>
			<tr height=28>
				<td background=<%=path%> /img/title_bg1.jpg>
					欢迎进入医院挂号预约系统！&nbsp;时间: <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
				</td>
			</tr>
			<tr>
				<td bgcolor=#b1ceef height=1></td>
			</tr>
			<tr height=20>
				<td background=<%=path%> /img/shadow_bg.jpg></td>
			</tr>
		</table>
		<table cellspacing=0 cellpadding=0 width="90%" align=center border=0>
			<tr height=100>
				<td align=middle width=100>
					<img src="<%=path%>/img/admin_p.gif" >
				</td>
				<td width=60>
					&nbsp;
				</td>
				<td>
					<table height=100 cellspacing=0 cellpadding=0 width="100%" border=0>

						<tr>
							<td>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan=3 height=10></td>
			</tr>
		</table>

	</body>
</html>