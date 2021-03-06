<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
<%@ page import="org.springframework.security.authentication.UsernamePasswordAuthenticationToken" language="java"%>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" language="java"%>
<%@ page import="org.springframework.security.core.context.SecurityContextImpl" language="java"%>


<tiles:importAttribute name="view" toName="selectedView" />

<%--
This is the dynamic remake of http://getbootstrap.com/components/#navbar
--%>
<div id="base-top-navbar">
	<div class="container">
       <div class="row top-nav-down">
            <nav class="navbar">
	            <%-- Brand and toggle get grouped for better mobile display --%>
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="<spring:url value="/home" />"><spring:message code="project.name"/></a>
	            </div>
	        
	            <%-- Collect the nav links, forms, and other content for toggling --%>
	            <div class="collapse navbar-collapse navbar-ex1-collapse">
	                <ul class="nav navbar-nav">
	                   <li><a href="<spring:url value="/user" />"><spring:message code="user.page.home"/></a></li>
	                    <c:forEach var="item" items="home,about">
	                        <spring:message code="navbar.${item}.title" var="itemTitle"/>
	                        <c:choose>
	                            <c:when test="${item eq selectedView}">
	                                <li class="active"><a href="<spring:url value="/${item}" />">找老师</a></li>
	                            </c:when>
	                            <c:otherwise>
	                                <li><a href="<spring:url value="/${item}" />">找学生</a></li>
	                            </c:otherwise>
	                        </c:choose>
	                    </c:forEach>
	                </ul>
	                <div class="collapse navbar-collapse navbar-ex1-collapse">
			               <ul class="nav navbar-nav navbar-right">
			                   <%
			                   SecurityContextImpl ctx = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
			                   if (ctx != null){
			                       UsernamePasswordAuthenticationToken token = (UsernamePasswordAuthenticationToken)ctx.getAuthentication();
			                       if (token.isAuthenticated() == true){
			                           UserDetails user = (UserDetails)token.getPrincipal();
			                           String username = user.getUsername();
			                           username = username.split("@")[0];
			                   %>
			                   <li ><a href="<spring:url value="/user"/>"><%=username%></a></li>
			                   <li ><a href="<spring:url value="/logout" />">退出</a></li>
			                   <%} }
			                   else {
			                   %>
			                   <li><a href="<spring:url value="/login" />">登录</a></li>
			                   <li><a href="<spring:url value="/register" />">注册</a></li>
			                   <%} %>
			                   <li><a href="<spring:url value="/${item}" />">帮助</a></li>
			               </ul>
			           </div>
	            </div> <%-- /.navbar-collapse --%>
	        </nav>
       </div>
	</div>
</div>
