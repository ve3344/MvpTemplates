package ${packageName}.presenter;



import ${packageName}.contract.${moduleName}Contract;
import ${packageName}.bean.${beanName};
import ${packageName}.model.${moduleName}Model;

import ${libraryPackage}.mvp.list.DynamicListView;
import ${libraryPackage}.mvp.list.DynamicListLoader;
import ${libraryPackage}.mvp.base.BasePresenter;

import com.uber.autodispose.ObservableSubscribeProxy;
import java.util.List;

public class ${moduleName}Presenter extends BasePresenter<${moduleName}Contract.View> implements ${moduleName}Contract.Presenter {
	${moduleName}Contract.Model model = new ${moduleName}Model();


    @Override
    public void reloadListData() {
        
    }

    @Override
    public void loadMoreListData() {

    }

}
