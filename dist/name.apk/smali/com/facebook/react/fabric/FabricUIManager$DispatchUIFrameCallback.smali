.class Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
.super Lcom/facebook/react/fabric/GuardedFrameCallback;
.source "FabricUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/FabricUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchUIFrameCallback"
.end annotation


# instance fields
.field private volatile mIsMountingEnabled:Z

.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    .line 1136
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/GuardedFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 p1, 0x1

    .line 1133
    iput-boolean p1, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->mIsMountingEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/fabric/FabricUIManager$1;)V
    .locals 0

    .line 1131
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public doFrameGuarded(J)V
    .locals 2

    .line 1148
    iget-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->mIsMountingEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$400(Lcom/facebook/react/fabric/FabricUIManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mDriveCxxAnimations:Z
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$500(Lcom/facebook/react/fabric/FabricUIManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$600(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/Binding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$600(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/Binding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/fabric/Binding;->driveCxxAnimations()V

    .line 1162
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mMountItemDispatcher:Lcom/facebook/react/fabric/mounting/MountItemDispatcher;
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$000(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/mounting/MountItemDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->dispatchPreMountItems(J)V

    .line 1163
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mMountItemDispatcher:Lcom/facebook/react/fabric/mounting/MountItemDispatcher;
    invoke-static {p1}, Lcom/facebook/react/fabric/FabricUIManager;->access$000(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/mounting/MountItemDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->tryDispatchMountItems()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object p1

    sget-object p2, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    .line 1171
    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$700(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    move-result-object v0

    .line 1170
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1165
    :try_start_1
    sget-object p2, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception thrown when executing UIFrameGuarded"

    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1166
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->stop()V

    .line 1167
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    :goto_0
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    .line 1171
    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    invoke-static {v1}, Lcom/facebook/react/fabric/FabricUIManager;->access$700(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    move-result-object v1

    .line 1170
    invoke-virtual {p2, v0, v1}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 1172
    throw p1

    .line 1149
    :cond_2
    :goto_1
    sget-object p1, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    const-string p2, "Not flushing pending UI operations because of previously thrown Exception"

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1141
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->mIsMountingEnabled:Z

    return-void
.end method
