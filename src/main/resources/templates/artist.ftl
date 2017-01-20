<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${context.artist.name}</title>
</head>
<body>
<h1>${context.artist.name}</h1>

<h2>Albums</h2>

<ul>
<#list context.albums as album>
  <li><a href="/albums/${album.id}">${album.title}</a></li>
</#list>
</ul>

</body>
</html>