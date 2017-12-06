<jsp:root
  xmlns:jsp="http://java.sun.com/JSP/Page"
  xmlns:c="http://java.sun.com/jstl/core"
  version="2.2">
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"/>
<jsp:scriptlet>request.setCharacterEncoding("UTF-8");</jsp:scriptlet>

<jsp:text><![CDATA[<!DOCTYPE html>]]></jsp:text>
<html>
<body>
<h2>GET</h2>
<form action="form.jsp" method="GET">
  <input type="text" name="test"/>
</form>
<h2>POST</h2>
<form action="form.jsp" method="POST">
  <input type="text" name="test"/>
</form>
<h2>Result</h2>
<p>${param.test}</p>
<jsp:scriptlet>System.out.println(request.getParameter("test"));</jsp:scriptlet>
</body>
</html>
</jsp:root>

 