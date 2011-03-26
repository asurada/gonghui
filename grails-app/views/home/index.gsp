
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>玩家社区</title>
    <meta name="layout" content="footer" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'devarts.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />

  <g:javascript library="jquery-1.5.min" />
  <g:javascript library="arcade" />
  <g:javascript>jQuery(document).ready(function() {bootstrap('${user.nickname}')});</g:javascript>
</head>
<body>
  <div id="body-wrapper">

    <h1 class="home-logo"><span>玩家社区</span></h1>

    <div id="column-profile" class="column">
      <div id="profile">
        <div id="avatar"></div>
        <span id="nickname"></span>
        <ul class="toolbox">
          <li><g:link controller="user" action="logout" title="退出登录">退出登录</g:link></li>
          <li><a id="update-status" onclick="onUpdateStatus();" href="#" title="更新">更新</a></li>
        </ul>
      </div>
    </div>

    <div id="column-content" class="column">
      <div id="status-update">
        <textarea id="status-update-input" cols="30" rows="3">随便说点什么吧。。。</textarea>
        <button id="status-update-submit" onclick="onSubmitStatusUpdate();">发表更新</button>
      </div>
      <ul id="status-list">
      </ul>
    </div>

  </div>
</body>
</html>
