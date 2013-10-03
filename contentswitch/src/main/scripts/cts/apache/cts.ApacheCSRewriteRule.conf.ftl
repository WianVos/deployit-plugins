RewriteEngine On

<#list deployed.rewriteConditions as rwc>
RewriteCond ${rwc}
</#list>
<#list deployed.rewriteRules as rwr>
RewriteRule ${rwr}
</#list>



        
        