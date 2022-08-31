.class Lcom/facebook/react/fabric/FabricUIManager$MountItemDispatchListener;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/FabricUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountItemDispatchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$MountItemDispatchListener;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/fabric/FabricUIManager$1;)V
    .locals 0

    .line 1122
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/FabricUIManager$MountItemDispatchListener;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    return-void
.end method


# virtual methods
.method public didDispatchMountItems()V
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$MountItemDispatchListener;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    # getter for: Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$300(Lcom/facebook/react/fabric/FabricUIManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/UIManagerListener;

    .line 1126
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager$MountItemDispatchListener;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/UIManagerListener;->didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method
