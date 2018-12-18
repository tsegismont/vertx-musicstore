<#import "macros/loginpage.ftl" as p>

<#assign title in p>Login</#assign>
<#assign links in p>
<link href="css/login.css" rel="stylesheet">
</#assign>

<@p.page>

<div class="container">

  <form class="form-login" action="/login" method="post">
    <h2 class="form-login-heading">Please sign in</h2>
    <label for="inputUsername" class="sr-only">Username</label>
    <input name="username" type="text" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input name="password" type="password" id="inputPassword" class="form-control form-last-input" placeholder="Password" required>
    <input type="hidden" name="return_url" value="${return_url!}">
    <div>
      Create a
      <a href="/add_user<#if return_url??>?return_url=${return_url?url('ISO-8859-1')}</#if>">new user</a>.
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div>

</@p.page>
