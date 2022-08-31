.class Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;
.super Ljava/lang/Object;
.source "SurfaceMountingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->stopSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$400(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 270
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # invokes: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->onViewStateDeleted(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)V
    invoke-static {v2, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$500(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$400(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagSetForStoppedSurface:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$602(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Ljava/util/Set;)Ljava/util/Set;

    .line 275
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$402(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;
    invoke-static {v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$702(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Lcom/facebook/react/touch/JSResponderHandler;)Lcom/facebook/react/touch/JSResponderHandler;

    .line 277
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;
    invoke-static {v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$802(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Lcom/facebook/react/uimanager/RootViewManager;)Lcom/facebook/react/uimanager/RootViewManager;

    .line 278
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;
    invoke-static {v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$902(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;)Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    .line 279
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mOnViewAttachItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$1000(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
