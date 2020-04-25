package ${packageName}.presenter;


import ${packageName}.contract.${moduleName}Contract;
import ${packageName}.model.${moduleName}Model;
import ${libraryPackage}.mvp.base.BasePresenter;

public class ${moduleName}Presenter extends BasePresenter<${moduleName}Contract.View> implements ${moduleName}Contract.Presenter {
	${moduleName}Contract.Model model = new ${moduleName}Model();
}
