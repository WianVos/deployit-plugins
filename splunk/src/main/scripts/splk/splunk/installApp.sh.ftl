<#include "/generic/templates/linuxExportEnvVars.ftl">
${deployed.container.splunkHome}/bin/splunk install app ${step.uploadedArtifactPath} -auth ${deployed.container.adminUser}:${deployed.container.adminPassword}