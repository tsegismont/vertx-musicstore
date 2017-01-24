<#macro page>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${title}</title>
  <#if header??>
  ${header}
  </#if>
</head>
<body>
  <#nested>
</body>
</html>
</#macro>