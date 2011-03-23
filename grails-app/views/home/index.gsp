
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
    <div id="status-update">
      <textarea id="status-update-input" cols="50" rows="4">随便说点什么吧。。。</textarea><br>
      <button id="status-update-submit" onclick="onSubmitStatusUpdate();">发表更新</button>
    </div>
    <hr>
    <button id="update-status" onclick="onUpdateStatus();">更新</button>
    <ul id="status-list">

    </ul>
  </div>
</body>
</html>
