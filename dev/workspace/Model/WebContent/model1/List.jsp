<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>   
<%@ page import ="java.util.*" %>   
<%@ page import ="Model1.*" %>   
    
    
 <!-- ��ȸ ��� ���� ��� ������ -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�۸��</title>
<!-- bootstrap�� ����ϱ� ���� CDN�ּ� -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<div class="container"> <!-- div�� ���� -->
<%
MemberDao md = new MemberDao(); // memberdao�� ���� ��ü ����
ArrayList<MemberVo>  list = md.getMemberList(); // membervoŸ�� ����Ʈ�� md = memberdao�� getmemberlist�� ����
%>

<table class="table table-striped table-bordered table-hover ">
<tr>
<td>ȸ����ȣ</td><td>�̸�</td><td>����</td> <!-- ���̺� ���� -->
</tr>
<% for (MemberVo mv : list) {  %> <!-- membervo�� ����Ʈ ���� -->
<tr>
<td><%=mv.getIdx() %></td><td><a href="<%=request.getContextPath()%>/model1/Content.jsp?idx=<%=mv.getIdx() %>"><%=mv.getName()%></a></td> <!-- ���η� �� ���̺� ��� -->
<td><%=mv.getAge() %></td>									<!-- �Ķ���͸� ���� get ������� idx ���� �ѱ� -->
</tr>
<% }%>
</table>

<div>
  <a class="btn btn-default" href="<%=request.getContextPath()%>/model1/Write.jsp">�Խñ� �Է�</a>
 </div>
 </div>
 </body>
</html>