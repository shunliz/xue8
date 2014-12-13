<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<spring:url value="/" var="base" />

<footer id="base-footer" class="footer">
    <div class="container">
        <div class="row footer-top">
            <div class="col-sm-6 col-lg-6">
                <h4>
                    <img src="${base}/apple-touch-icon.png">
                </h4>
                <p>电话：029-85865500  传真：029-85865500-15  售前QQ:57575233  MSN:zsl6658@126.com  Email:zsl6658@126.com<br/>
                Copyright@经英网络科技有限公司  </p>
		      </div>
		      <div class="col-sm-6  col-lg-5 col-lg-offset-1">
		        <div class="row about">
		          <div class="col-xs-3">
		            <h4>关于</h4>
		            <ul class="list-unstyled">
		              <li><a href="/about/">关于我们</a></li>
		              <li><a href="/ad/">广告合作</a></li>
		              <li><a href="/links/">网站地图 </a></li>
		              <li><a href="/links/">网站搜索</a></li>
		              <li><a href="/links/">招贤纳士</a></li>
		            </ul>
		          </div>
		          <div class="col-xs-3">
		            <h4>联系方式</h4>
		            <ul class="list-unstyled">
		              <li><a href="" title="中文网官方微博" target="_blank">新浪微博</a></li>
		              <li><a href="mailto:zsl6658@126.com">电子邮件</a></li>
		              <li><a href="">汇款方式</a></li>
		            </ul>
		          </div>
		          <div class="col-xs-3">
		            <h4>旗下网站</h4>
		            <ul class="list-unstyled">
		              <li><a href="" target="_blank"><spring:message code="${title_code}"/>中文网</a></li>
		              <li><a href="" target="_blank"><spring:message code="${title_code}"/>中国</a></li>
		            </ul>
		          </div>
		          <div class="col-xs-3">
		            <h4>赞助商</h4>
		            <ul class="list-unstyled">
		              <li><a href="/links/">友情链接</a></li>
		              <li><a href="" target="_blank"><spring:message code="${title_code}"/>学大教育</a></li>
		              <li><a href="" target="_blank"><spring:message code="${title_code}"/>新东方</a></li>
		              <li><a href="" target="_blank"><spring:message code="${title_code}"/>搜提</a></li>
		            </ul>
		          </div>
		        </div>

      </div>

        </div>
        <div class="row footer-bottom">
	        <ul class="list-inline text-center">
	             <li><a href="http://www.miibeian.gov.cn/" target="_blank">陕ICP备11008151号</a></li><li>陕公网安备11010802014853</li>
	        </ul>
    </div>
    </div>
</footer>
<spring:message code="build.profile" var="build_profile"/>

<script type="text/javascript">
    window.R || (window.R = {
        registerResources: function (r) {
            r.get = window.R.get;
            window.R = r;
            stopWatch(R.get('build.name') + ' ' + R.get('build.version'));
        },
        get: function(key, args) {
            var msg = R[key];
            if (msg) {
                if (args) {
                    for (var name in args) {
                        //noinspection JSUnfilteredForInLoop
                        msg = msg.replace('{' + name + '}', args[name]);
                    }
                }
                return msg;
            } else {
                return key;
            }
        }
    });
</script>

<%-- see ResourcesController --%>
<util:js value="/resources.json"/>

<c:choose>
    <c:when test="${build_profile eq 'production'}">
        <util:js value="/resources/vendor/js/all.js" minify="false"/>
        <util:js value="/resources/js/all.js" minify="false"/>
    </c:when>
    <c:otherwise>
        <%-- should be included in the same order as in pom.xml in yui compression plugin --%>

        <util:js value="/resources/vendor/js/jquery-2.0.3.js"/>
        <util:js value="/resources/vendor/js/jquery.tinypubsub.js"/>
        <util:js value="/resources/vendor/js/jstorage-0.3.1.js"/>

        <%-- Backbone.js --%>
        <util:js value="/resources/vendor/js/lodash-1.3.1.js" />
        <util:js value="/resources/vendor/js/backbone-1.0.0.js" />

        <%-- Dust.js --%>
        <util:js value="/resources/vendor/js/dust-full-2.0.2.js" />
        <util:js value="/resources/vendor/js/dust-helpers-1.1.1.js" />

        <%-- Twitter Bootstrap --%>
        <util:js value="/resources/vendor/js/bootstrap-3.0.0.js" />

        <util:js value="/resources/js/compatibility.js"/>
        <util:js value="/resources/js/common.js"/>
    </c:otherwise>
</c:choose>

<%--
<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
    g.src='//www.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
</script>
--%>