<%@ page contentType="text/html; charset=utf-8" language="java"
	%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<HTML>
	<HEAD>
		<title>医院挂号预约系统</title>
	</HEAD>

	<frameset border=0 framespacing=0 rows="60, *" frameborder=0>
		<frame name=head src="<%=path%>/admin/head.jsp" frameborder=0 noresize
			scrolling=no>
		<frameset cols="170, *" name="btFrame" frameborder="NO" border="0" framespacing="0">
			<frame name=left src="<%=path%>/admin/left.jsp" name="menu"
				frameborder=0 noresize />
			<frame name=main src="<%=path%>/admin/right.jsp" 
				id="mains" frameborder=0 noresize scrolling=yes />
		</frameset>
	</frameset>
	<noframes>
	</noframes>
</HTML>