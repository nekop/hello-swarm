<jsp:root
  xmlns:jsp="http://java.sun.com/JSP/Page"
  xmlns:c="http://java.sun.com/jstl/core"
  version="2.2">
<jsp:directive.page pageEncoding="UTF-8" contentType="text/plain; charset=UTF-8"/>
ENV:
<jsp:scriptlet>
<![CDATA[
java.util.Map<String, String> env = System.getenv();
for (String envName : env.keySet()) {
    out.print(String.format("%s=%s%n", envName, env.get(envName)));
}
]]>
</jsp:scriptlet>

HEADER:
<jsp:scriptlet>
<![CDATA[
for (java.util.Enumeration<String> e = request.getHeaderNames(); e.hasMoreElements();) {
   String headerName = e.nextElement();
   out.print(String.format("%s=%s%n", headerName, request.getHeader(headerName)));
}
]]>
</jsp:scriptlet>
</jsp:root>
