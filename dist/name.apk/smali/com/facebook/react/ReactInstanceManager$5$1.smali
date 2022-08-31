.class Lcom/facebook/react/ReactInstanceManager$5$1;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/ReactInstanceManager$5;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager$5;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$5$1;->this$1:Lcom/facebook/react/ReactInstanceManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1128
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5$1;->this$1:Lcom/facebook/react/ReactInstanceManager$5;

    iget-object v0, v0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # getter for: Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$1400(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5$1;->this$1:Lcom/facebook/react/ReactInstanceManager$5;

    iget-object v0, v0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$5$1;->this$1:Lcom/facebook/react/ReactInstanceManager$5;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    # getter for: Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$1400(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    move-result-object v1

    # invokes: Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    invoke-static {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->access$1500(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    .line 1130
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$5$1;->this$1:Lcom/facebook/react/ReactInstanceManager$5;

    iget-object v0, v0, Lcom/facebook/react/ReactInstanceManager$5;->this$0:Lcom/facebook/react/ReactInstanceManager;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    invoke-static {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->access$1402(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    :cond_0
    return-void
.end method
