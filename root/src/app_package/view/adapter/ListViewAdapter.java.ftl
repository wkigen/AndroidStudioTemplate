package ${rootPackage}.view.adapter;

import android.content.Context;
import ${rootPackage}.R;
import ${rootPackage}.bean.${entityName};
import ${baseLibPath}.adapter.core.AdapterViewAdapter;
import ${baseLibPath}.adapter.core.ViewHolderHelper;

/**
 * Author:  ${userName}
 * Description:               
 * Date:
 */
public class ${adapterName} extends AdapterViewAdapter<${entityName}> {

    public ${adapterName}(Context context) {
        super(context, R.layout.${itemlayout?lower_case});
    }

    @Override
    protected void fillData(ViewHolderHelper viewHolderHelper, int position, ${entityName} model) {
    	/**
    		viewHolderHelper.setText(R.id.tv_item_normal_title, model.title);*/
    }

    /**
     * 制定item子元素点击事件/长按事件
     */
    @Override
    protected void setItemChildListener(ViewHolderHelper viewHolderHelper) {
    	/**
    		viewHolderHelper.setItemChildClickListener(R.id.tv_item_normal_title);
            viewHolderHelper.setItemChildLongClickListener(R.id.tv_item_normal_title);*/
    }
}