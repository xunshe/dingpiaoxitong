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
		<link href="<%=path %>/css/admin.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<table cellspacing=0 cellpadding=0 width="100%"
			background="<%=path %>/img/header_bg.jpg" border=0>
			<tr height=56>
				<td width=260>
					<img height=56 src="<%=path %>/img/header_left.jpg" width=260>
				</td>
				<td style="font-weight: bold; color: #fff; padding-top: 20px"
					align=middle>
					&nbsp;&nbsp;
					
					<a style="color: #fff"
						onclick="if (confirm('确定要退出吗？')) return true; else return false;"
						href="<%=path %>/login.jsp" target=_top>退出系统</a>
				</td>
				<td align=right width=268>
					<img height=56 src="<%=path %>/img/header_right.jpg" width=268>
				</td>
			</tr>
		</table>
		<table cellspacing=0 cellpadding=0 width="100%" border=0>
			<tr bgcolor=#1c5db6 height=4>
				<td></td>
			</tr>
		</table>
	</body>
</html>