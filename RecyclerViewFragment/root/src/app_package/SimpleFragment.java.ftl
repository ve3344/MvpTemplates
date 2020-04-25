package ${packageName}.view.fragment;


import ${packageName}.R;
import ${packageName}.bean.${beanName};
import ${packageName}.contract.${moduleName}Contract;
import ${packageName}.presenter.${moduleName}Presenter;
import ${packageName}.view.adapter.${itemName}Adapter;

import ${libraryPackage}.mvp.list.DynamicListView;
import ${libraryPackage}.mvp.list.ListView;
import ${libraryPackage}.mvp.list.Bqa;
import ${libraryPackage}.mvp.ann.PresenterDef;
import ${libraryPackage}.mvp.view.BaseFragment;


import butterknife.BindView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;	


public class ${fragmentName} extends BaseFragment implements ${moduleName}Contract.View {

    @PresenterDef(${moduleName}Presenter.class)
    ${moduleName}Contract.Presenter presenter;

    @BindView(R.id.${layoutName}_list)
    RecyclerView recyclerView;
    
    ${itemName}Adapter adapter;

    @Override
    protected int getLayout() {
        return R.layout.${layoutName};
    }

    @Override
    protected void init() {

        adapter=new ${itemName}Adapter();
        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        
        
		<#if dynamicList>
        adapter.setOnLoadMoreListener(() -> {
            
        },recyclerView);
        </#if>
        
    }
    <#if dynamicList>
    @Override
    public DynamicListView<${beanName}> getDynamicListView() {
        return new Bqa<>(adapter);
    }
    <#else>
    @Override
    public ListView<${beanName}> getListView() {
        return new Bqa<>(adapter);
    }
    </#if>
}
