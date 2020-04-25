package ${packageName}.contract;


import ${libraryPackage}.mvp.base.IBaseModel;
import ${libraryPackage}.mvp.base.IBasePresenter;
import ${libraryPackage}.mvp.base.IBaseView;
import ${libraryPackage}.mvp.list.DynamicListContract;
import ${libraryPackage}.mvp.list.ListContract;
import ${libraryPackage}.mvp.base.IActivityView;
import ${packageName}.bean.${beanName};


public interface ${moduleName}Contract {
    <#if dynamicList>
    interface Model extends DynamicListContract.Model<${beanName}> {
    }

    interface View extends DynamicListContract.View<${beanName}> , IActivityView {

    }

	
    interface Presenter extends DynamicListContract.Presenter<View> {

    }
	<#else>
    interface Model extends ListContract.Model<${beanName}> {
    }

    interface View extends ListContract.View<${beanName}> , IActivityView {
    }

    interface Presenter extends ListContract.Presenter<View> {
    }
    </#if>
}
