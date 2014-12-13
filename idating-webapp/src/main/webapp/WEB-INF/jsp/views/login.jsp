<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<%-- 
<fmt:requestEncoding value="UTF-8" />
<fmt:setLocale value="zh_CN"/>
<fmt:setBundle basename="messages" var="rb" />
--%>

<spring:url value="/j_spring_security_check" var="security_check_url" />

<c:set var="authException" value="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION']}" />

<form action='${security_check_url}' method='post' class="form-horizontal col-lg-6" role="form">
    <fieldset>
        <legend><spring:message code="user.login.form.title"/></legend>
        <c:if test="${not empty authException}">
            <div class="form-group">
                <p class="text-info text-center col-lg-6">登录错误: ${fn:toLowerCase(authException.message)}</p>
            </div>
        </c:if>
        <div class="form-group">
            <label for="j_username" class="control-label col-lg-2 text-left" ><spring:message code="user.login.form.username"/></label>
            <div class="col-lg-4">
                <input type='text' class="form-control" id="j_username" name='j_username' value='' placeholder="输入用户名..." autofocus />
            </div>
        </div>
        <div class="form-group">
            <label for="j_password" class="control-label col-lg-2 text-left"><spring:message code="user.login.form.password"/></label>
            <div class="col-lg-4">
                <input type='password' class="form-control" id="j_password" name='j_password' placeholder="输入密码..."/>
            </div>
        </div>
        
        <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-10">
	         <div class="checkbox">
	            <label>
	               <input type="checkbox"> 请记住我
	            </label>
	         </div>
	      </div>
	     </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-md-4">
                <button type="submit" class="btn btn-default">登录</button>
                <a href="" class="btn btn-default">忘记密码？</a>
            </div>
        </div>
    </fieldset>
</form>