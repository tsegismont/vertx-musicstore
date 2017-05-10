<#import "macros/page.ftl" as p>

<#assign title in p>${context.genre.name}</#assign>
<#assign links in p>
<link href="/css/base.css" rel="stylesheet">
</#assign>

<@p.page>

<div class="container">
  <div class="title">
    <h1>${context.genre.name}</h1>
  </div>
</div>

<div class="container">
  <div class="title">
    <h2>Albums</h2>
  </div>
  <div class="row">
    <#list context.albums as album>
      <div class="col-md-4">
        <h2>${album.title}</h2>
        <p>Donec id elit non mi porta gravida at eget metus.</p>
        <p><a class="btn btn-default" href="/albums/${album.id}" role="button">Go &raquo;</a></p>
      </div>
    </#list>
  </div>
</div>

<div class="container">
  <div class="title">
    <h2>Artists</h2>
  </div>
  <div class="row">
    <#list context.artists as artist>
      <div class="col-md-4">
        <h2>${artist.name}</h2>
        <p>Donec id elit non mi porta gravida at eget metus.</p>
        <p><a class="btn btn-default" href="/artists/${artist.id}" role="button">Go &raquo;</a></p>
      </div>
    </#list>
  </div>
</div>

</@p.page>
