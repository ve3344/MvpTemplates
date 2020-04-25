package ${packageName}.view.adapter;

import ${packageName}.R;
import ${packageName}.bean.${beanName};

import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;

public class ${itemName}Adapter extends BaseQuickAdapter< ${beanName}, BaseViewHolder> {
    public ${itemName}Adapter() {
        super(R.layout.${itemLayoutName}, new ArrayList<>());
    }

    @Override
    protected void convert(BaseViewHolder helper,  ${beanName} item) {
        //TODO
    }

}
