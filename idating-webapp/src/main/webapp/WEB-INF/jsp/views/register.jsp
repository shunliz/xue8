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

<div class="container" role="form">
    <div class="row">
        <div class="col-md-2">
           <span>有账号了?<a href="<spring:url value="/login" />">去登录</a></span>
        </div>
        <div class="col-md-8">
            <form action="<spring:url value="/register"/>" method="post" role="form">
                <legend>基本信息</legend>
                <div class="form-group row">
                    <label for="username" class="control-label col-lg-2" >邮箱：</label>
                    <div class="col-lg-4">
                        <input type='text' class="form-control" id="username" name="username" value='' placeholder="输入邮箱..." autofocus />
                    </div>
                </div>
            
                <div class="form-group row">
						        <label for="name" class="control-label col-lg-2" >用户名：</label>
					          <div class="col-lg-4">
					              <input type='text' class="form-control" id="name" name='name' value='' placeholder="输入用户名..." autofocus />
					          </div>
						    </div>
						    
						    <div class="form-group row">
			             <label for="password" class="control-label col-lg-2 ">密码:</label>
					          <div class="col-lg-4">
					             <input type='password' class="form-control" id="password" name='password' placeholder="输入密码..."/>
					          </div>
			          </div>
			          
			          <div class="form-group row">
                   <label for="confirmpassword" class="control-label col-lg-2 ">确认密码:</label>
                    <div class="col-lg-4">
                       <input type='password' class="form-control" id="confirmpassword" name='confirmpassword' placeholder="确认密码..."/>
                    </div>
                </div>
                <div class="form-group row">
                  <label for="confirmpassword" class="control-label col-lg-2 ">用户类型</label>
                  <div class="col-lg-4">
	                  <label class="checkbox-inline">
								      <input type="radio" name="usertype" id="usertype" value="1">学生
								   </label>
								   <label class="checkbox-inline">
								      <input type="radio" name="usertype" id="usertype" value="2">老师
								   </label>
								   <label class="checkbox-inline">
								      <input type="radio" name="usertype" id="usertype" value="3">家长
								   </label>
								   </div>
                </div>
                <div class="form-group">
				            <div class="col-sm-offset-2 col-md-4">
				                <button type="submit" class="btn btn-default">注册</button>
				            </div>
				        </div>
            </form>
        </div>
    </div>
</div>