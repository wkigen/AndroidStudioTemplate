<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools" 
    android:layout_width="match_parent"
    android:layout_height="match_parent" 
    android:orientation="vertical" >
    <#if hasTitle>
    
    </#if>
    <#if hasRefresh>
	<com.vicky.android.baselib.refreshlayout.RefreshLayout
        android:id="@+id/rl_refresh"
        android:layout_width="match_parent"
        android:layout_height="match_parent">
    </#if>
	<#if hasListView>
		<ListView
	        android:id="@+id/lv_listview"
	        android:layout_width="match_parent"
	        android:layout_height="match_parent"
	        android:padding="5dp" />
	</#if>
  	<#if hasRefresh>
	 </com.vicky.android.baselib.refreshlayout.RefreshLayout>
    </#if>
</LinearLayout>
