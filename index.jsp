<%@ page language="java" import="java.util.*,information.*,search.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	 <br>
  <table width="706" border="0" align="center" height="75">
    <tr>
      <td colspan="6" align="center" ><strong>ͼ���ѯϵͳ</strong></td>
    </tr>
     <tr>
      <td colspan="6" align="center" >&nbsp;</td>
    </tr>
    <tr>
      <td align="right" width="500"> <form  name="form" method="post" action="querybook"> ��������
      	<input type="text" name="name">
      	<input type="submit"  value="��ѯ" ></form></td>
      <td align="right" width="103"> <form  name="form" method="post" action="bookinput.jsp"> 
      	<input type="submit"  value="���" ></form></td>
    </tr>
  </table>
  </body>
</html>