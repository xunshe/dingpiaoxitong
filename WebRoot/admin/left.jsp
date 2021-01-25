<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=utf-8" />
		<link href="<%=path%>/css/admin.css" type="text/css" rel="stylesheet" />
		<script language=javascript>
function expand(el) {
	childobj = document.getElementById("child" + el);

	if (childobj.style.display == 'none') {
		childobj.style.display = 'block';
	} else {
		childobj.style.display = 'none';
	}
	return;
}
</script>
	</head>
	<body>
		<table height="100%" cellspacing=0 cellpadding=0 width=170
			background=<%=path%> /img/menu_bg.jpg border=0>
			<tr>
				<td valign=top align=middle>
					<table cellspacing=0 cellpadding=0 width="100%" border=0>

						<tr>
							<td height=10></td>
						</tr>
					</table>
					<table cellspacing=0 cellpadding=0 width=150 border=0>

						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(1) href="javascript:void(0);">修改密码</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child1 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/admin/userinfo/userPw.jsp"
									target='main'>修改密码</a>
							</td>
						</tr>

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(2) href="javascript:void(0);">科室管理</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child2 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/admin/keshi/keshiAdd.jsp"
									target=main>科室添加</a>
							</td>
						</tr>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/keshiMana.action"
									target=main>科室管理</a>
							</td>
						</tr>

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child3 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/admin/yisheng/yishengAdd.jsp"
									target=main>医生添加</a>
							</td>
						</tr>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/yishengMana.action"
									target=main>医生管理</a>
							</td>
						</tr>

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(4) href="javascript:void(0);">预约信息</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child4 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/yuyueMana.action"
									target=main>预约信息</a>
							</td>
						</tr>
					 

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(8) href="javascript:void(0);">挂号管理</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child8 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/guahaoMana.action"
									target=main>挂号管理</a>
							</td>
						</tr>
					 

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(5) href="javascript:void(0);">病人管理</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child5 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/userMana.action"
									target=main>病人管理</a>
							</td>
						</tr>
					 

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(6) href="javascript:void(0);">留言管理</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child6 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/liuyanMana.action"
									target=main>留言管理</a>
							</td>
						</tr>
					 

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>
					
					<table cellspacing=0 cellpadding=0 width=150 border=0>
						<tr height=22>
							<td style="padding-left: 30px" background="<%=path%>
								/img/menu_bt.jpg">
								<a class=menuparent onclick=expand(7) href="javascript:void(0);">公告管理</a>
							</td>
						</tr>
						<tr height=4>
							<td></td>
						</tr>
					</table>
					<table id=child7 style="display: none" cellspacing=0 cellpadding=0
						width=150 border=0>
						<tr height=20>
							<td align=middle width=30>
								<img height=9 src="<%=path%>/img/menu_icon.gif" width=9>
							</td>
							<td>
								<a class=menuchild href="<%=path%>/gonggaoMana.action"
									target=main>公告管理</a>
							</td>
						</tr>
					 

						<tr height=4>
							<td colspan=2></td>
						</tr>
					</table>


				</td>
				<td width=1 bgcolor=#d1e6f7></td>
			</tr>
		</table>
	</body>
</html>