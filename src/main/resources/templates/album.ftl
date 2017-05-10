<#import "macros/page.ftl" as p>

<#assign title in p>${context.album.title}</#assign>
<#assign scripts in p>
<script src="/js/jquery/jquery.min.js"></script>
<script src="/js/sockjs-client/sockjs.min.js"></script>
<script src="/js/vertx-web-client.js"></script>
<script src="/js/album.js"></script>
</#assign>

<@p.page>
<h1>${context.album.title}</h1>

<img width="600" src="/covers/${context.album.id}">

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
</@p.page>
