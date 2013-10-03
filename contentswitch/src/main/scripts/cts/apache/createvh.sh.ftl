#!/bin/sh
<#include "/generic/templates/linuxExportEnvVars.ftl">
if ! -d "${container.sitesEnabledDir}/${deployed.name}.d"; then
	mkdir -p ${container.sitesEnabledDir}/${deployed.name}.d
end
