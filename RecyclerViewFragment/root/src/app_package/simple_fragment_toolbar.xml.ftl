<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${packageName}.view.fragment.${fragmentName}"
    android:orientation="vertical"
    >

    <androidx.appcompat.widget.Toolbar
        android:id="@+id/${layoutName}_toolbar"
        android:layout_width="match_parent"
        android:layout_height="?actionBarSize"/>
    <androidx.recyclerview.widget.RecyclerView
        android:id="@+id/${layoutName}_list"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        />

</LinearLayout>