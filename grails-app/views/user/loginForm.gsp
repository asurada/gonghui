<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <title>Arcade - 玩家社区</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <h1>Arcade - 玩家社区</h1>
    <g:form controller="user" action="login" method="post">
      <label>邮箱<input type="text" name="email"></label><br>
      <label>密码<input type="password" name="password"></label><br>
      <button id="btnLogin">登录</button>
    </g:form>
  </body>
</html>
