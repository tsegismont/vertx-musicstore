<#import "macros/page.ftl" as p>

<#assign title in p>${context.genre.name}</#assign>

<@p.page>
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
</@p.page>
