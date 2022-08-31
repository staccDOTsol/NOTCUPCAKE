.class Lcom/facebook/react/devsupport/DevSupportManagerBase$28;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V
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

    .line 1121
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customCommandHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$2100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCaptureHeapCommand(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 1

    .line 1158
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$28;Lcom/facebook/react/packagerconnection/Responder;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagerConnected()V
    .locals 0

    return-void
.end method

.method public onPackagerDevMenuCommand()V
    .locals 1

    .line 1147
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$28;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagerDisconnected()V
    .locals 0

    return-void
.end method

.method public onPackagerReloadCommand()V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->disableDebugger()V

    .line 1136
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$28$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$28;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
