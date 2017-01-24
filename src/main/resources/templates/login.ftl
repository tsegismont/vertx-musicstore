<#import "macros/page.ftl" as p>

<#assign title in p>Login</#assign>

<@p.page>
<h1>Login</h1>

<form id="login-form" action="/login" method="post">
  <label>
    Username:
    <input name="username" value="${context.username!}">
  </label>
  <label>
    Password:
    <input type="password" name="password">
  </label>
  <input type="hidden" name="return_url" value="${context.return_url!}">
  <input type="submit" value="Submit">
</form>

Create a
<a href="/add_user<#if context.return_url??>?return_url=${context.return_url?url('ISO-8859-1')}</#if>">new user</a>.
</@p.page>
