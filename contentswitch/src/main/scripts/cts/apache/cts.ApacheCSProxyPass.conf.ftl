ProxyRequests On

<#if deployed.ProxyVia?has_content>
ProxyVia ${deployed.ProxyVia}
</#if>

<#if deployed.ProxyTimeout?has_content>
ProxyTimeout ${deployed.ProxyTimeout}
</#if>

<#if deployed.ProxyReceiveBufferSize?has_content>
ProxyReceiveBufferSize ${deployed.ProxyReceiveBufferSize}
</#if>

<#if deployed.ProxyPreserveHost?has_content>
ProxyPreserveHost ${deployed.ProxyPreserveHost}
</#if>

<#if deployed.ProxyBlock?has_content>
ProxyBlock ${deployed.ProxyBlock}
</#if>


<#list deployed.ProxyPass?keys?sort as key>
ProxyPass ${key}  ${deployed.ProxyPass[key]} <#if deployed.connectionTimeOut?has_content> connectiontimeout=${deployed.connectionTimeOut} </#if> <#if deployed.timeOut?has_content>   timeout=${deployed.timeOut} </#if>
<#if (deployed.reverse)>
ProxyPassReverse ${key}  ${deployed.ProxyPass[key]}

</#if>
</#list>

<Proxy *>
	Order deny,allow
	Deny from all
	Allow from internal.example.com
</Proxy>


        
        