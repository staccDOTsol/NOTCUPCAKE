.class Lcom/facebook/react/devsupport/DevSupportManagerBase$18;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$bundleFile:Ljava/io/File;

.field final synthetic val$bundleUrl:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleFile:Ljava/io/File;

    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$callback:Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 795
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleUrl:Ljava/lang/String;

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->showSplitBundleDevLoadingView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1500(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$18$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$18;)V

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleFile:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;->val$bundleUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    return-void
.end method
