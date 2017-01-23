<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Registration</title>
</head>
<body>
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

</body>
</html>