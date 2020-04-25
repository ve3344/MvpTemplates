<?xml version="1.0"?>
<recipe>
 	<merge from="root/AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${moduleName}Contract.java" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${activityName}.java" />

    <instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${moduleName}Model.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${moduleName}Presenter.java" />



    <instantiate from="root/src/app_package/SimpleListAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/adapter/${itemName}Adapter.java" />

<#if generateItemBean>
    <instantiate from="root/src/app_package/SimpleBean.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/bean/${beanName}.java" />
</#if>


<#if withToolbar>
    <instantiate from="root/src/app_package/simple_activity_toolbar.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
        
     <#else>

    <instantiate from="root/src/app_package/simple_activity.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if generateItemLayout>

    <instantiate from="root/src/app_package/simple_item.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />
</#if>
    <open file="${escapeXmlAttribute(srcOut)}/view/${activityName}.java" />


</recipe>
