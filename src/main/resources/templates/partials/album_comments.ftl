<#list comments as comment>
<div>
  <hr>
  <p>
    <span class="album-comment-user">${comment.username}</span> on ${comment.timestamp?number_to_datetime}
  </p>
  <pre class="album-comment-content">${comment.comment}</pre>
</div>
</#list>
