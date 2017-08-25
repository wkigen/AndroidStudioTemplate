<?xml version="1.0"?>
<globals>
    <global id="baseLibPath" value="com.vicky.android.baselib" />
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="VM" value="VM"/>
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="userName" value="vicky" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="appCompat" type="boolean" value="${(hasDependency('com.android.support:appcompat-v7'))?string}" />
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <global id="Support" value="${(hasDependency('com.android.support:appcompat-v7'))?string('Support','')}" />
 
    <global id="mysrcout" value="app/src/main/java/${slashedPackageName(rootPackage)}" />

    <global id="resOut" value="${resDir}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${rootPackage}</#if>" />
</globals>
