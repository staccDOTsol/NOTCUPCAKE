.class Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule$1;
.super Ljava/lang/Object;
.source "NativeDevSplitBundleLoaderModule.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule;->loadBundle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule$1;->this$0:Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule;

    iput-object p2, p0, Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 45
    instance-of v0, p2, Lcom/facebook/react/common/DebugServerException;

    if-eqz v0, :cond_0

    .line 46
    move-object p1, p2

    check-cast p1, Lcom/facebook/react/common/DebugServerException;

    invoke-virtual {p1}, Lcom/facebook/react/common/DebugServerException;->getOriginalMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error fetching \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "E_BUNDLE_LOAD_ERROR"

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/facebook/react/modules/bundleloader/NativeDevSplitBundleLoaderModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
