<?xml version="1.0"?>
<recipe>
 	<merge from="root/AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${moduleName}Contract.java" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${moduleName}Activity.java" />

    <instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${moduleName}Model.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${moduleName}Presenter.java" />


<#if withToolbar>
      <instantiate from="root/src/app_package/simple_activity_toolbar.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
        
     <#else>
      <instantiate from="root/src/app_package/simple_activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>
    

    <open file="${escapeXmlAttribute(srcOut)}/view/${moduleName}Activity.java" />


</recipe>
