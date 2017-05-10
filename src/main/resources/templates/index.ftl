<#import "macros/page.ftl" as p>

<#assign title in p>Music Store</#assign>
<#assign links in p>
<link href="css/base.css" rel="stylesheet">
</#assign>

<@p.page>
<h1>Welcome to the Music Store!</h1>

<h2>Genres</h2>

<ul>
  <#list context.genres as genre>
    <li><a href="/genres/${genre.id}">${genre.name}</a></li>
  </#list>
</ul>
</@p.page>
