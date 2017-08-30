<?xml version="1.0"?>
<recipe>
  

 	<merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


	<#if generateLayout>
    <instantiate from="root/res/layout/layout_mvvm.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName?lower_case}.xml" />
	</#if>

	<instantiate from="root/src/app_package/view/${viewType?lower_case}/Mvvm${viewType}.java.ftl"
                   to="${escapeXmlAttribute(mysrcout)}/${slashedPackageName(viewPath)}/${viewName+viewType}.java" />
    <open file="${escapeXmlAttribute(mysrcout)}/${slashedPackageName(viewPath)}/${viewName+viewType}.java" />

	<#if hasListView>
	<instantiate from="root/src/app_package/bean/Bean.java.ftl"
                   to="${escapeXmlAttribute(mysrcout)}/bean/${entityName}.java" />
    <instantiate from="root/src/app_package/view/adapter/ListViewAdapter.java.ftl"
                   to="${escapeXmlAttribute(mysrcout)}/view/adapter/${adapterName}.java" />      
    <instantiate from="root/res/layout/item_listview.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${itemlayout?lower_case}.xml" />         
	</#if>

    
    <instantiate from="root/src/app_package/viewmodel/MvvmViewModel.java.ftl"
                   to="${escapeXmlAttribute(mysrcout)}/${slashedPackageName(viewModelPath)}/${viewName+VM}.java" />
    <open file="${escapeXmlAttribute(mysrcout)}/viewmodel${slashedPackageName(viewModelPath)}/${viewName+VM}.java" />
</recipe>
