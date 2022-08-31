.class Lcom/facebook/react/ReactInstanceManager$2;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/ReactInstanceDevHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->createDevHelperInterface()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 336
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager$2;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 338
    new-instance v2, Lcom/facebook/react/ReactRootView;

    invoke-direct {v2, v0}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    .line 339
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableFabricRenderer:Z

    invoke-virtual {v2, v0}, Lcom/facebook/react/ReactRootView;->setIsFabric(Z)V

    .line 340
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v2, v0, p1, v1}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 2

    .line 350
    # getter for: Lcom/facebook/react/ReactInstanceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/ReactInstanceManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyRootView called"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    instance-of v0, p1, Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 354
    # getter for: Lcom/facebook/react/ReactInstanceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/ReactInstanceManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyRootView called, unmountReactApplication"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    check-cast p1, Lcom/facebook/react/ReactRootView;

    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->unmountReactApplication()V

    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # getter for: Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$400(Lcom/facebook/react/ReactInstanceManager;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # invokes: Lcom/facebook/react/ReactInstanceManager;->getJSExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$500(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public onJSBundleLoadedFromServer()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # invokes: Lcom/facebook/react/ReactInstanceManager;->onJSBundleLoadedFromServer()V
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$200(Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method

.method public onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # invokes: Lcom/facebook/react/ReactInstanceManager;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    invoke-static {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->access$100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # invokes: Lcom/facebook/react/ReactInstanceManager;->toggleElementInspector()V
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$300(Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method
