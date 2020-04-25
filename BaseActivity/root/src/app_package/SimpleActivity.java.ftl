package ${packageName}.view;


import ${packageName}.R;
import ${packageName}.contract.${moduleName}Contract;
import ${packageName}.presenter.${moduleName}Presenter;

import ${libraryPackage}.mvp.ann.PresenterDef;
import ${libraryPackage}.mvp.view.BaseActivity;
import ${libraryPackage}.utils.autils.ToolbarUtils;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;

@Route(path = "/view/${moduleName}")
public class ${moduleName}Activity extends BaseActivity implements ${moduleName}Contract.View {

    @PresenterDef(${moduleName}Presenter.class)
    ${moduleName}Contract.Presenter presenter;

    @Override
    protected int getLayout() {
        return R.layout.${layoutName};
    }

    @Override
    protected void init() {
        <#if withToolbar>
        ToolbarUtils.setBackToolBar(this,R.id.${layoutName}_toolbar);
        </#if>
    }

}
