<?xml version="1.0"?>
<recipe>
 	 
    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${moduleName}Contract.java" />

    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentName}.java" />

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

    <instantiate from="root/src/app_package/simple_fragment.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

<#if generateItemLayout>
    <instantiate from="root/src/app_package/simple_item.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentName}.java" />

</recipe>