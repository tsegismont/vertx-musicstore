<#import "macros/page.ftl" as p>

<#assign title in p>${context.artist.name}</#assign>
<#assign links in p>
<link href="/css/base.css" rel="stylesheet">
</#assign>

<@p.page>
<h1>${context.artist.name}</h1>

<h2>Albums</h2>

<ul>
  <#list context.albums as album>
    <li><a href="/albums/${album.id}">${album.title}</a></li>
  </#list>
</ul>
</@p.page>
