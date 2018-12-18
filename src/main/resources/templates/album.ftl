<#import "macros/page.ftl" as p>

<#assign title in p>${album.title}</#assign>
<#assign links in p>
<link href="/css/base.css" rel="stylesheet">
<style>
  .album-cover {
    padding-top: 50px;
  }

  .album-comment-user {
    font-style: italic;
    font-weight: bold;
  }

  .album-comment-content {
    background: none;
    border: none;
  }
</style>
</#assign>
<#assign scripts in p>
<script src="/sockjs-client/sockjs.min.js"></script>
<script src="/vertx-web-client.js"></script>
<script src="/js/notify.min.js"></script>
<script src="/js/album.js"></script>
</#assign>

<@p.page>

<div class="container">
  <div class="title">
    <h1>${album.title}</h1>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-6 col-md-push-6">
      <div class="title">
        <h2>Tracks</h2>
      </div>
      <div>
        <table class="table table-condensed table-hover">
          <thead>
          <tr>
            <th>#</th>
            <th>Artist</th>
            <th>Title</th>
          </tr>
          </thead>
          <tbody>
            <#list tracks as track>
            <tr>
              <td>${track.track_number}</td>
              <td><a href="/artists/${track.artist.id}">${track.artist.name}</a></td>
              <td>${track.title}</td>
            </tr>
            </#list>
          </tbody>
        </table>
      </div>
    </div>
    <div class="col-md-6 col-md-pull-6">
      <div class="album-cover">
        <img width="400" src="/covers/${album.id}">
      </div>
    </div>
  </div>
</div>

<div class="container">
  <h2>Comments</h2>
  <form>
    <input type="hidden" id="album-id" value="${album.id}"/>
    <div class="form-group">
      <textarea id="new-album-comment" class="form-control" rows="3" placeholder="New comment"></textarea>
    </div>
    <button id="add-album-comment" class="btn btn-default" type="button">Add</button>
  </form>
  <div id="album-comments"></div>
</div>

</@p.page>
