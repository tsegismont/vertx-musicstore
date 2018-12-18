<#import "macros/page.ftl" as p>

<#assign title in p>Music Store</#assign>
<#assign links in p>
<link href="/css/base.css" rel="stylesheet">
</#assign>

<@p.page>

<div class="jumbotron">
  <div class="container">
    <h1>Welcome to the Music Store!</h1>
    <p>A showcase for building reactive web applications with Eclipse
      <a href="http://vertx.io">Vert.x</a> and
      <a href="https://github.com/ReactiveX/RxJava">RxJava</a>.
    </p>
    <p>
      <a class="btn btn-primary btn-lg" href="https://github.com/tsegismont/vertx-musicstore" role="button">Source code &raquo;</a>
    </p>
  </div>
</div>


<div class="container">
  <div class="row">
    <#list genres as genre>
      <div class="col-md-4">
        <h2>${genre.name}</h2>
        <p>Donec id elit non mi porta gravida at eget metus.</p>
        <p><a class="btn btn-primary" href="/genres/${genre.id}" role="button">Explore &raquo;</a></p>
      </div>
    </#list>
  </div>
</div>

</@p.page>
