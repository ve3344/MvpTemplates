package ${packageName}.view;


import ${packageName}.R;
import ${packageName}.contract.${moduleName}Contract;
import ${packageName}.presenter.${moduleName}Presenter;

import ${libraryPackage}.mvp.ann.PresenterDef;
import ${libraryPackage}.mvp.view.BaseActivity;
import ${libraryPackage}.utils.autils.ToolbarUtils;
import ${libraryPackage}.app.SplashActivityDef;

import android.os.Handler;
import android.Manifest;
import butterknife.BindView;
import com.tbruyelle.rxpermissions2.RxPermissions;
import androidx.appcompat.app.AlertDialog;
import io.reactivex.disposables.Disposable;

@SplashActivityDef
public class ${moduleName}Activity extends BaseActivity implements ${moduleName}Contract.View {

    @PresenterDef(${moduleName}Presenter.class)
    ${moduleName}Contract.Presenter presenter;

    String[] permissions = {
            Manifest.permission.WRITE_EXTERNAL_STORAGE
    };
    @Override
    protected int getLayout() {
        return R.layout.${layoutName};
    }

    @Override
    protected void init() {
        <#if withToolbar>
        ToolbarUtils.setBackToolBar(this,R.id.${layoutName}_toolbar);
        </#if>
        requestPermissions();
    }

    private void requestPermissions() {
        Disposable subscribe = new RxPermissions(this)
                .request(permissions)
                .subscribe(grant -> {
                    if (grant) {
                        //presenter.start();
                    } else {
                        showPermissionNeedDialog();
                    }

                });
    }

    private void showPermissionNeedDialog() {
        new AlertDialog.Builder(SplashActivity.this)
                .setTitle("缺少权限将导致功能无法正常运行")
                .setCancelable(false)
                .setNegativeButton("退出", (dialog, which) -> {
                    dialog.cancel();
                    finish();
                })
                .setPositiveButton("授权", (dialog, which) -> {
                    dialog.cancel();
                    new Handler().postDelayed(() -> requestPermissions(), 200);
                }).show();
    }

}
