<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <title>Arcade - 玩家社区</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${resource(dir:'css',file:'devarts.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
  </head>
  <body>
    <h1 class="center-logo">
      <span>Arcade - 玩家社区</span>
    </h1>
    
    <div id="login-form" align="center">
      <g:form controller="user" action="login" method="post">
        <h2>登录</h2>
        <label>邮箱<input class="textbox"  type="text" name="email"></label><br>
        <label>密码<input class="textbox"  type="password" name="password"></label><br>
        <button class="textbox"  id="btnLogin">登录</button>
      </g:form>
    </div>
  </body>
</html>
