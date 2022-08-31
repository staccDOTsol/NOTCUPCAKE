.class public abstract Lcom/facebook/react/ReactNativeHost;
.super Ljava/lang/Object;
.source "ReactNativeHost.java"


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/react/ReactNativeHost;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->destroy()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    :cond_0
    return-void
.end method

.method protected createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 3

    .line 68
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_REACT_INSTANCE_MANAGER_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 70
    invoke-static {}, Lcom/facebook/react/ReactInstanceManager;->builder()Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/ReactNativeHost;->mApplication:Landroid/app/Application;

    .line 71
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setApplication(Landroid/app/Application;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getJSMainModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSMainModulePath(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setUseDeveloperSupport(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getDevSupportManagerFactory()Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setDevSupportManagerFactory(Lcom/facebook/react/devsupport/DevSupportManagerFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getShouldRequireActivity()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setRequireActivity(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getSurfaceDelegateFactory()Lcom/facebook/react/common/SurfaceDelegateFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setSurfaceDelegateFactory(Lcom/facebook/react/common/SurfaceDelegateFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getRedBoxHandler()Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setRedBoxHandler(Lcom/facebook/react/devsupport/RedBoxHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJavaScriptExecutorFactory(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getUIImplementationProvider()Lcom/facebook/react/uimanager/UIImplementationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setUIImplementationProvider(Lcom/facebook/react/uimanager/UIImplementationProvider;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getJSIModulePackage()Lcom/facebook/react/bridge/JSIModulePackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSIModulesPackage(Lcom/facebook/react/bridge/JSIModulePackage;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    .line 81
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setInitialLifecycleState(Lcom/facebook/react/common/LifecycleState;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getReactPackageTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setReactPackageTurboModuleManagerDelegateBuilder(Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackage;

    .line 86
    invoke-virtual {v0, v2}, Lcom/facebook/react/ReactInstanceManagerBuilder;->addPackage(Lcom/facebook/react/ReactPackage;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getJSBundleFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSBundleFile(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getBundleAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setBundleAssetName(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    .line 95
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManagerBuilder;->build()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v0
.end method

.method protected final getApplication()Landroid/app/Application;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method protected getBundleAssetName()Ljava/lang/String;
    .locals 1

    const-string v0, "index.android.bundle"

    return-object v0
.end method

.method protected getDevSupportManagerFactory()Lcom/facebook/react/devsupport/DevSupportManagerFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getJSBundleFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getJSIModulePackage()Lcom/facebook/react/bridge/JSIModulePackage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index.android"

    return-object v0
.end method

.method protected getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end method

.method public getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->GET_REACT_INSTANCE_MANAGER_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 42
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 43
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->GET_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object v0
.end method

.method protected getReactPackageTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRedBoxHandler()Lcom/facebook/react/devsupport/RedBoxHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldRequireActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSurfaceDelegateFactory()Lcom/facebook/react/common/SurfaceDelegateFactory;
    .locals 1

    .line 145
    new-instance v0, Lcom/facebook/react/ReactNativeHost$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactNativeHost$1;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    return-object v0
.end method

.method protected getUIImplementationProvider()Lcom/facebook/react/uimanager/UIImplementationProvider;
    .locals 1

    .line 126
    new-instance v0, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    return-object v0
.end method

.method public abstract getUseDeveloperSupport()Z
.end method

.method public hasInstance()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/facebook/react/ReactNativeHost;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
