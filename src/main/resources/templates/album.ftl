<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${context.album.title}</title>
  <script src="//code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
  <script src="/js/album.js"></script>
</head>
<body>
<h1>${context.album.title}</h1>

<img src="/covers/${context.album.id}">

<h2>Tracks</h2>

<table>
  <thead>
  <tr>
    <th>#</th>
    <th>Artist</th>
    <th>Title</th>
  </tr>
  </thead>
  <tbody>
  <#list context.tracks as track>
  <tr>
    <td>${track.track_number}</td>
    <td><a href="/artists/${track.artist.id}">${track.artist.name}</a></td>
    <td>${track.title}</td>
  </tr>
  </#list>
  </tbody>
</table>

<h2>Comments</h2>
<input type="hidden" id="album-id" value="${context.album.id}"/>
<textarea id="new-album-comment"></textarea>
<button id="add-album-comment">Add comment</button>

<div id="album-comments"></div>

</body>
</html>