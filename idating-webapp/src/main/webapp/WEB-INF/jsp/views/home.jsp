<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<util:js value="/resources/js/pages/home.js" />

<p>
<h3>
不为模糊不清的未来担忧，<br>
只为清清楚楚的现在努力。<br>
有些事情不是看到希望才去坚持，而是坚持了才看到希望。<br>
耐得住寂寞才能守得住繁华，该奋斗的年龄不要选择安逸。<br>
</h3>
<h3>
你所浪费的今天，是昨天死去的人奢望的明天；<br>
你所厌恶的现在，是未来的你回不去的曾经<br>
</h3>

<a href="<spring:url value="/user/update.do" />">/user/update</a>
<a href="<spring:url value="/user/2.do" />">/user/id</a>

<h1>洛神赋</h1>
<h3>
翩若惊鸿，宛若游龙。<br>
荣耀秋菊，华茂春松。<br>
仿佛兮，若轻云之闭月。<br>
飘摇兮，若流风之回雪。<br>
</h3>
</p>