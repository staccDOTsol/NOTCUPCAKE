.class Lcom/facebook/react/devsupport/BridgeDevSupportManager$2;
.super Ljava/lang/Object;
.source "BridgeDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/BridgeDevSupportManager;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/BridgeDevSupportManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/BridgeDevSupportManager;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/react/devsupport/BridgeDevSupportManager$2;->this$0:Lcom/facebook/react/devsupport/BridgeDevSupportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/facebook/react/devsupport/BridgeDevSupportManager$2;->this$0:Lcom/facebook/react/devsupport/BridgeDevSupportManager;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/BridgeDevSupportManager;->getDevSettings()Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/BridgeDevSupportManager$2;->this$0:Lcom/facebook/react/devsupport/BridgeDevSupportManager;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/BridgeDevSupportManager;->getDevSettings()Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setRemoteJSDebugEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/facebook/react/devsupport/BridgeDevSupportManager$2;->this$0:Lcom/facebook/react/devsupport/BridgeDevSupportManager;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/BridgeDevSupportManager;->handleReloadJS()V

    return-void
.end method
