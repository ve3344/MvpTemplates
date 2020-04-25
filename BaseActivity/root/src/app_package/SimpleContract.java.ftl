package ${packageName}.contract;


import ${libraryPackage}.mvp.base.IBaseModel;
import ${libraryPackage}.mvp.base.IBasePresenter;
import ${libraryPackage}.mvp.base.IBaseView;
import ${libraryPackage}.mvp.base.IActivityView;


public interface ${moduleName}Contract {
    interface Model extends IBaseModel {
    }

    interface View extends IActivityView {

    }

    interface Presenter extends IBasePresenter<View> {
    }
}
