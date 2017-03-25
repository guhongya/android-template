<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:19.+"/></#if>
    <merge from="res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

   
	<#if createPackage>
		<mkdir at="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}" />
	
		<instantiate from="root/src/app_package/BlankFragment.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/${className}.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/${className}.java" />
					
		<instantiate from="root/src/app_package/BlankContract.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/Contract.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/Contract.java" />
					
		
		<instantiate from="root/src/app_package/BlankPresenter.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/Presenter.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${escapeXmlAttribute(fragmentPackage)}/Presenter.java" />
	<#else>

		<instantiate from="root/src/app_package/BlankFragment.java.ftl"
					to="${escapeXmlAttribute(srcOut)}/${className}.java" />
		<open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
	</#if>
</recipe>
