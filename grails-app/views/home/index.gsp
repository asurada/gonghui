
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
  <div class="body-center">

    <h1 class="home-logo">玩家社区</h1>
    <div id="nav-top" class="body-center">
      <ul>
        <li><a href="#">工会</a></li>
        <li><a href="#">游戏</a></li>
        <li><a href="#">玩家</a></li>
        <li><a href="#">好友</a></li>
        <li><a href="#">应用</a></li>
      </ul>
    </div>

    <div id="column-profile" class="column">

      <div id="profile">
        <div id="avatar"></div>
        <span id="nickname"></span>
        <ul class="toolbox">
          <li><g:link controller="user" action="logout" title="退出登录">退出登录</g:link></li>
          <li><a id="update-status" onclick="onUpdateStatus();" href="#" title="更新">更新</a></li>
          <li><a href="#" title="个人设置">个人设置</a></li>
        </ul>
      </div>

      <div id="gamer-info">
        <p class="title">我加入的工会</p>
        <ul>
          <li><a href="#">魔兽世界菜鸟会</a></li>
          <li><a href="#">CS爆头俱乐部</a></li>
          <li><a href="#">休闲Flash游</a></li>
          <li><a href="#">什么都玩Club</a></li>
        </ul>

        <p class="title">我在玩的游戏</p>
        <ul>
          <li><a href="#">彩虹岛 Online</a></li>
          <li><a href="#">魔兽世界</a></li>
          <li><a href="#">尾行</a></li>
          <li><a href="#">下级生 II</a></li>
        </ul>

      </div>

    </div>

    <div id="column-content" class="column">
      <div id="status-update">
        <textarea id="status-update-input" class="textbox" cols="30" rows="3">随便说点什么吧。。。</textarea>
        <button id="status-update-submit" onclick="onSubmitStatusUpdate();">发表更新</button>
      </div>
      <ul id="status-list">
      </ul>
    </div>

  </div>
</body>
</html>
