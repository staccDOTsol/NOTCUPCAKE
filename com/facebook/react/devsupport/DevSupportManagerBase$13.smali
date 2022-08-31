.class Lcom/facebook/react/devsupport/DevSupportManagerBase$13;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevOptionsDialog()V
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

    .line 530
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$900(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ReactNative"

    const-string v1, "Unable to get reference to react activity"

    .line 537
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {v0}, Lcom/facebook/react/devsupport/DebugOverlayController;->requestPermission(Landroid/content/Context;)V

    .line 542
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setFpsDebugEnabled(Z)V

    return-void
.end method
