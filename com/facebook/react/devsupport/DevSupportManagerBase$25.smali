.class Lcom/facebook/react/devsupport/DevSupportManagerBase$25;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->setRemoteJSDebugEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$isRemoteJSDebugEnabled:Z


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput-boolean p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;->val$isRemoteJSDebugEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;->val$isRemoteJSDebugEnabled:Z

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->setRemoteJSDebugEnabled(Z)V

    .line 1053
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    return-void
.end method
