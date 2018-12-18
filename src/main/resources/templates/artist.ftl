<#import "macros/page.ftl" as p>

<#assign title in p>${artist.name}</#assign>
<#assign links in p>
<link href="/css/base.css" rel="stylesheet">
</#assign>

<@p.page>

<div class="container">
  <div class="title">
    <h1>${artist.name}</h1>
  </div>
</div>

<div class="container">
  <div class="title">
    <h2>Albums</h2>
  </div>
  <div class="row">
    <#list albums as album>
      <div class="col-md-4">
        <h2>${album.title}</h2>
        <p>Donec id elit non mi porta gravida at eget metus.</p>
        <p><a class="btn btn-primary" href="/albums/${album.id}" role="button">Select &raquo;</a></p>
      </div>
    </#list>
  </div>
</div>

</@p.page>
