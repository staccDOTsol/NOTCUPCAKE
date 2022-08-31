.class Lcom/facebook/react/devsupport/DevSupportManagerBase$8;
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

    .line 428
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 432
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 434
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/react/R$string;->catalyst_open_flipper_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flipper://null/Hermesdebuggerrn?device=React%20Native"

    .line 431
    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->openUrl(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
