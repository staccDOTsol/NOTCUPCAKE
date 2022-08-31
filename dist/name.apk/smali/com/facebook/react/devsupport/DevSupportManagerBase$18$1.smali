.class Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$18;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 828
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 835
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$callback:Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1700(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevLoadingViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevLoadingViewController;->updateProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 800
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 808
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleFile:Ljava/io/File;

    .line 815
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/JSBundleLoader;->createCachedSplitBundleFromNetworkLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$callback:Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;->onSuccess(Lcom/facebook/react/bridge/JSBundleLoader;)V

    :cond_1
    :goto_0
    return-void
.end method
