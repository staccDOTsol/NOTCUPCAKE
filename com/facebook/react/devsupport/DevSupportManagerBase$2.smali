.class Lcom/facebook/react/devsupport/DevSupportManagerBase$2;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundleStatus()Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    move-result-object v0

    return-object v0
.end method
