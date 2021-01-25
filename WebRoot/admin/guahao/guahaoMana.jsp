<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function guahaoDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/guahaoDel.action?id="+id;
               }
           }
           
           function guahaoEditPre(id)
           {
                   window.location.href="<%=path %>/guahaoEditPre.action?id="+id;
           }
           
           function guahaoAdd()
           {
                 var url="<%=path %>/admin/guahao/guahaoAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="14" background="<%=path %>/img/tbg.gif">&nbsp;挂号管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="10%">姓名</td>
					<td width="10%">身份证</td>
					<td width="5%">年龄</td>
					<td width="5%">性别</td>
					<td width="5%">科室</td>
					<td width="5%">医生</td>
					<td width="5%">状态</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.guahaoList" id="guahao" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.name"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.card"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.age"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.sex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.keshi"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.yisheng"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#guahao.state"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="guahaoDel(<s:property value="#guahao.id"/>)" class="pn-loperator">删除</a>
					    <a href="#" onclick="guahaoEditPre(<s:property value="#guahao.id"/>)" class="pn-loperator">编辑</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="guahaoAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
