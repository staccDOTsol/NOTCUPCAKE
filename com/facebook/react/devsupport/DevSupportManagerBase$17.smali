.class Lcom/facebook/react/devsupport/DevSupportManagerBase$17;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V
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

    .line 738
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    return-void
.end method
