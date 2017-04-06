<?xml version="1.0"?>
<globals>
    <global id="useSupport" type="boolean" value="${(minApiLevel lt 11)?string}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
    <global id="contractName" type="string" value="${className?replace('Fragment', '')}Contract"/>
    <global id="presenterName" type="string" value="${className?replace('Fragment', '')}Presenter"/>
</globals>
