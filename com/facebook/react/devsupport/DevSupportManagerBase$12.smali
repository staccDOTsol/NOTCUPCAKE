.class Lcom/facebook/react/devsupport/DevSupportManagerBase$12;
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

    .line 502
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 506
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->setHotModuleReplacementEnabled(Z)V

    .line 507
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 509
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    const-class v3, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v2}, Lcom/facebook/react/devsupport/HMRClient;->enable()V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    const-class v3, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v2}, Lcom/facebook/react/devsupport/HMRClient;->disable()V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSDevModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 516
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 517
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading_auto_enable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setJSDevModeEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    :cond_2
    return-void
.end method
