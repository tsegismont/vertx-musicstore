<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${context.genre.name}</title>
</head>
<body>
<h1>${context.genre.name}</h1>

<h2>Artists</h2>

<ul>
<#list context.artists as artist>
  <li><a href="/genres/${context.genre.id}/artists/${artist.id}">${artist.name}</a></li>
</#list>
</ul>

</body>
</html>