package ${rootPackage}.${viewPath};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import ${rootPackage}.R;
import ${rootPackage}.${viewModelPath}.${viewName+VM};
import ${baseLibPath}.mvvm.IView;
import ${rootPackage}.view.activity.base.BaseActivity;
<#if hasListView>
import ${rootPackage}.view.adapter.${subModule}.${adapterName};
import ${baseLibPath}.adapter.core.OnItemChildClickListener;
</#if>
<#if hasRefresh>
import ${baseLibPath}.refreshlayout.RefreshLayout;
import ${baseLibPath}.refreshlayout.RefreshHolderUtil;
</#if>
import butterknife.Bind;

/**
 * Author:  ${userName}
 * Description:               
 * Date:
 */
public class ${viewName+viewType} extends BaseActivity<${viewName+viewType}, ${viewName+VM}> implements IView {
	<#if hasRefresh>
	@Bind(R.id.rl_refresh)
	RefreshLayout mRefreshLayout;
	</#if>
	<#if hasListView>
	@Bind(R.id.lv_listview)
    ListView mListview;
    
    private ${adapterName} mAdapter;
	</#if>
	
	<#if generateLayout>
    @Override
    protected int tellMeLayout() {
        return R.layout.${layoutName};
    }
	<#else>
	@Override
    protected int tellMeLayout() {
        return 0;
    }
	</#if>
   
    @Override
    public Class<${viewName+VM}> getViewModelClass() {
        return ${viewName+VM}.class;
    }

    @Override
    protected void initView(Bundle savedInstanceState) {
      super.initView(savedInstanceState);
    	<#if hasListView>
		 mAdapter = new ${adapterName}(this);
		 /**
         * 对item的child添加点击事件
         */
        mAdapter.setOnItemChildClickListener(new OnItemChildClickListener() {
            @Override
            public void onItemChildClick(ViewGroup parent, View childView, int position) {
                /**if (childView.getId() == R.id.tv_item_normal_title) {
                }*/
            }
        });
        /**
         * Add clickevent for the item
         */
        mListview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            }
        });
		mListview.setAdapter(mAdapter);
		</#if>
		<#if hasRefresh>
        mRefreshLayout.setRefreshViewHolder(RefreshHolderUtil.getHolder(this));//getHolder(Context ctx, boolean loadMoreEnable)定制loadMore的话调用这个方法
		mRefreshLayout.setDelegate(new RefreshLayout.RefreshLayoutDelegate() {
		    @Override
		    public void onRefreshLayoutBeginRefreshing(RefreshLayout refreshLayout) {
		  
		    }
		    //如果要开始加载更多则返回true，否则返回false。（返回false的场景：没有网络、一共只有x页数据并且已经加载了x页数据了）
		    @Override
		    public boolean onRefreshLayoutBeginLoadingMore(RefreshLayout refreshLayout) {
		        return false;
		    }
		});
		</#if>
    }

    @Override
    protected void getBundleExtras(@NonNull Bundle extras) {
    }

    @Override
    protected View getStatusTargetView() {
        return null;
    }
 

}
