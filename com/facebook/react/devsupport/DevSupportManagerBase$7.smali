.class Lcom/facebook/react/devsupport/DevSupportManagerBase$7;
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

    .line 400
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSDevModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 404
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 406
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 407
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/react/R$string;->catalyst_hot_reloading_auto_disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 405
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setHotModuleReplacementEnabled(Z)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    return-void
.end method
