#!/bin/sh
<#include "/generic/templates/linuxExportEnvVars.ftl">
${container.stopCommand}
if [ $? -ne 0 ]; then
    echo "Warning: Unable to stop httpd server. Starting now..."
else
    echo "Successfully stopped httpd."
fi

${container.startCommand}
exitVal=$?
if [ $exitVal -ne 0 ]; then
    echo "Error: Unable to start httpd server."
    exit $exitVal
else
    echo "Successfully started httpd."
fi

