<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${context.genre.name}</title>
</head>
<body>
<h1>${context.genre.name}</h1>

<h2>Albums</h2>

<ul>
<#list context.albums as album>
  <li><a href="/albums/${album.id}">${album.title}</a></li>
</#list>
</ul>

<h2>Artists</h2>

<ul>
<#list context.artists as artist>
  <li><a href="/artists/${artist.id}">${artist.name}</a></li>
</#list>
</ul>

</body>
</html>