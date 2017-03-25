<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="false" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="contractName" type="string" value="${activityClass?replace('Activity', '')}View"/>
    <global id="presenterName" type="string" value="${activityClass?replace('Activity', '')}Presenter"/>
    <#include "../common/common_globals.xml.ftl" />
</globals>
