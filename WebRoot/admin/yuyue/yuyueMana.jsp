<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" src="<%=path %>/js/popup.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
       function yuyueDelMy(id)
       {
            var url="<%=path %>/yuyueDelMy.action?id="+id;
            window.location.href=url;
       }
    </script>
  </head>
  
<body>
	<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
		<tr bgcolor="#E7E7E7">
		     <td height="14" colspan="100" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
		</tr>
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="5%">序号</td>
			<td width="15%">预约时间</td>
			<td width="15%">预约医生</td>
			<td width="15%">预约用户</td>
			<td width="45%">备注信息</td>
	       </tr>	
		<s:iterator value="#request.yuyueList" id="yuyue" status="ss">
		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
			<td bgcolor="#FFFFFF" align="center">
				 <s:property value="#ss.index+1"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				 <s:property value="#yuyue.shijian"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				 <s:property value="#yuyue.yishengName"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				 <s:property value="#yuyue.userName"/>
			</td>
			<td bgcolor="#FFFFFF" align="center">
				 <s:property value="#yuyue.beizhu"/>
			</td>
		</tr>
		</s:iterator>
	</table>
</body>
</html>
