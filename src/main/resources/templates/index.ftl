<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Music Store</title>
</head>
<body>
<h1>Welcome to the Music Store!</h1>

<h2>Styles</h2>

<ul>
<#list context.genres as genre>
  <li><a href="genres/jazz.html">${genre.name}</a></li>
</#list>
</ul>

</body>
</html>