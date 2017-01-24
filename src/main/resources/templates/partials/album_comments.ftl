<#list context.comments as comment>
<div>
  <p>
    <span style="font-style: italic;font-weight: bold">${comment.username}</span> on ${comment.timestamp?number_to_datetime}<br>
  ${comment.comment}
  </p>
</div>
</#list>
