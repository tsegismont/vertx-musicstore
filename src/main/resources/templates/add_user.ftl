<#import "macros/loginpage.ftl" as p>

<#assign title in p>Registration</#assign>
<#assign links in p>
<link href="css/login.css" rel="stylesheet">
</#assign>

<@p.page>

<div class="container">

  <div class="container">

    <form class="form-login" action="/add_user" method="post">
      <h2 class="form-login-heading">Registration</h2>
      <label for="inputUsername" class="sr-only">Username</label>
      <input name="username" type="text" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <label for="inputPasswordConfirm" class="sr-only">Confirm Password</label>
      <input name="password-confirm" type="password" id="inputPasswordConfirm" class="form-control form-last-input" placeholder="Confirm Password" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
    </form>

  </div>

</div>

</@p.page>
