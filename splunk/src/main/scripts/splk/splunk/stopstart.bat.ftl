<#include "/generic/templates/windowsSetEnvVars.ftl">
${container.stopCommand}
IF %ERRORLEVEL% NEQ 0 (
    ECHO Unable to stop httpd. Starting now...
) ELSE (
    ECHO Successfully stopped httpd.
)

${container.startCommand}
SET exitVal=%ERRORLEVEL%
IF %exitVal% NEQ 0 (
    ECHO Unable to start httpd.
    EXIT %exitVal%
) ELSE (
    ECHO Started httpd.
)

