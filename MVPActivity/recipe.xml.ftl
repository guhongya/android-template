<?xml version="1.0"?>
<recipe>
     <#include "../common/recipe_manifest.xml.ftl" />
	<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	</#if>

	<#if createPackage>
		<instantiate from="root/src/app_package/SimpleActivity.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${activityClass}.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${activityClass}.java" />
		
		
		<instantiate from="root/src/app_package/SimpleContract.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${contractName}.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${contractName}.java" />
					
		
		<instantiate from="root/src/app_package/SimplePresenter.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${presenterName}.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(activityPackage)}/${presenterName}.java" />
	<#else>
		<instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	</#if>
    
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
