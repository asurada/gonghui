
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>玩家社区</title>
  <g:javascript library="jquery-1.5.min" />
  <g:javascript library="arcade" />
  <g:javascript>jQuery(document).ready(function() {bootstrap('${user.nickname}')});</g:javascript>
</head>
<body>
  <div>
    <span>玩家社区 - </span><span id="nickname"></span>
    <g:link controller="user" action="logout" title="退出登录">退出登录</g:link>
  </div>
</body>
</html>
