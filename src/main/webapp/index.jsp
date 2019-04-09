<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>
<!--
	Eventually by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<h1>Notification</h1>
				<p>Notify you , When you receiving ELA Coin<br />
				</p>
			</header>
			<!-- Signup Form -->

				<c:choose>
					<c:when test="${step == 1}">
						<input type="submit" onclick="submit()" value="subscribe" />
					</c:when>
					<c:when test="${step == 2}">
						<form id="signup-form" method="post"  action="${action}">
							<input type="text" name="email_code" placeholder="Email verification code" required>
							<input type="text" style="visibility: hidden" value="${uuid}" name="uuid">
							<input type="submit" value="Submit"/>
						</form>
					</c:when>
				</c:choose>
			<script src="/assets/js/main.js"></script>
	</body>
	<script type="text/javascript">
		function submit() {
            window.location.href = '${elephant_auth}';
        }
	</script>
</html>