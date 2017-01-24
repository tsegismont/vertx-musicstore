<#import "macros/page.ftl" as p>

<#assign title in p>Registration</#assign>

<@p.page>
<h1>Registration</h1>

<form id="registration-form" action="/add_user" method="post">
  <label>
    Username:
    <input name="username">
  </label>
  <label>
    Password:
    <input type="password" name="password">
  </label>
  <label>
    Confirm:
    <input type="password" name="password-confirm">
  </label>
  <input type="submit" value="Submit">
</form>
</@p.page>
