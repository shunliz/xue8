<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<spring:url value="/j_spring_security_check" var="security_check_url" />

<c:set var="authException" value="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION']}" />

<div class="col-md-2">
  <div class="thumbnail">
      <img alt="" src="<spring:url value="/apple-touch-icon.png" />">
      <div class="caption">
	    <div class="col-sm-offset-3">
	      <a href="#" class="btn btn-primary btn-xs" role="button">个人设置</a>
	    </div>
  </div>
  </div>
  <a href="#" class="list-group-item active">我的首页</a>
  <a href="#" class="list-group-item">我的资料</a>
  <a href="#" class="list-group-item">好友动态</a>
  <a href="#" class="list-group-item">博客</a>
  <a href="#" class="list-group-item">消息</a>
  <a href="#" class="list-group-item">相册</a>
  <a href="#" class="list-group-item">我的粉丝</a>
  <a href="#" class="list-group-item">我的关注</a>
</div>
<div class="col-md-9">
  <div class="panel panel-primary">
   <div class="panel-heading">
      <h3 class="panel-title">基本信息</h3>
      <a href="<spring:url value="/user/3" />">test-rest</a>
   </div>
   <div class="panel-body">
          个人基本信息
   </div>
  </div>
  
  <div class="panel panel-primary">
   <div class="panel-heading">
      <h3 class="panel-title">详细信息</h3>
   </div>
   <div class="panel-body">
          个人详细信息
   </div>
  </div>
</div>
