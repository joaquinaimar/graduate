<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%-- JSTL TLDs --%>
<%@ taglib prefix="c"   uri="/WEB-INF/tld/c.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt.tld" %>
<%@ taglib prefix="fn"  uri="/WEB-INF/tld/fn.tld" %>
<%@ taglib prefix="cl"	uri="/WEB-INF/tld/club.tld" %>
<%-- struts2 TLDs --%>
<%@ taglib prefix="s"	uri="/struts-tags" %>

<%@ page contentType="text/html; charset=utf-8" %>
<%-- This is so that you can conveniently refer to the context path with ${contextPath} --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="request"/>