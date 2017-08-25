<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
    <#if viewType=="Activity">
      <activity android:name=".${viewPath}.${viewName+viewType}"
            <#if isNewProject>
            android:label="@string/app_name"
            </#if>
            <#if buildApi gte 16 && parentActivityClass != "">android:parentActivityName="${parentActivityClass}"</#if>>
            <#if parentActivityClass != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${parentActivityClass}" />
            </#if>
            <#if isLauncher>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>
	</#if>
    </application>

</manifest>
