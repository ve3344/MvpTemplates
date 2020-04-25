<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${moduleName}Contract.java" />

    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/fragment/${moduleName}Fragment.java" />

    <instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${moduleName}Model.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${moduleName}Presenter.java" />


    <instantiate from="root/src/app_package/simple_fragment.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />


    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${moduleName}Fragment.java" />


</recipe>
