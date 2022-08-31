.class Lcom/facebook/react/animated/NativeAnimatedNodesManager;
.super Ljava/lang/Object;
.source "NativeAnimatedNodesManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcherListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeAnimatedNodesManager"


# instance fields
.field private final mActiveAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimationDriver;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedGraphBFSColor:I

.field private final mAnimatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDrivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/EventAnimationDriver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventListenerInitializedForFabric:Z

.field private mEventListenerInitializedForNonFabric:Z

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mRunUpdateNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWarnedAboutGraphTraversal:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    .line 68
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    .line 69
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    .line 71
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    .line 74
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$102(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    return p1
.end method

.method static synthetic access$202(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->handleEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private handleEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_0

    return-void

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 542
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/UIManager;->resolveCustomDirectEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/EventAnimationDriver;

    .line 550
    iget-object v2, v1, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {p0, v2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 551
    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 552
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    iget-object v1, v1, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_3
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 555
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method private stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimationDriver;

    .line 291
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v3, :cond_0

    .line 294
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v5, "finished"

    .line 295
    invoke-interface {v3, v5, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    iget-object v2, v2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateNodes(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;)V"
        }
    .end annotation

    .line 625
    iget v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v0, :cond_0

    add-int/2addr v0, v1

    .line 629
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 632
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 634
    iget v6, v5, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v6, v7, :cond_1

    .line 635
    iput v7, v5, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    add-int/lit8 v4, v4, 0x1

    .line 637
    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :cond_2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 642
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 643
    iget-object v5, v2, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 644
    :goto_1
    iget-object v6, v2, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 645
    iget-object v6, v2, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 646
    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    add-int/2addr v7, v1

    iput v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    .line 647
    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v7, v8, :cond_3

    .line 648
    iput v8, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    add-int/lit8 v4, v4, 0x1

    .line 650
    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 664
    :cond_4
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v2, :cond_5

    add-int/2addr v2, v1

    .line 667
    iput v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 672
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 673
    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    if-nez v7, :cond_6

    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v7, v8, :cond_6

    .line 674
    iput v8, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    add-int/lit8 v5, v5, 0x1

    .line 676
    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 682
    :cond_8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    const-string v7, "NativeAnimatedNodesManager"

    if-nez v6, :cond_d

    .line 683
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 685
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/react/animated/AnimatedNode;->update()V

    .line 686
    instance-of v8, v6, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v8, :cond_9

    .line 688
    move-object v8, v6

    check-cast v8, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-virtual {v8}, Lcom/facebook/react/animated/PropsAnimatedNode;->updateView()V
    :try_end_0
    .catch Lcom/facebook/react/bridge/JSApplicationCausedNativeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    const-string v9, "Native animation workaround, frame lost as result of race condition"

    .line 698
    invoke-static {v7, v9, v8}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    :cond_9
    :goto_3
    instance-of v7, v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v7, :cond_a

    .line 702
    move-object v7, v6

    check-cast v7, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v7}, Lcom/facebook/react/animated/ValueAnimatedNode;->onValueUpdate()V

    .line 704
    :cond_a
    iget-object v7, v6, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    .line 705
    :goto_4
    iget-object v8, v6, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 706
    iget-object v8, v6, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/react/animated/AnimatedNode;

    .line 707
    iget v9, v8, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    sub-int/2addr v9, v1

    iput v9, v8, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    .line 708
    iget v9, v8, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v9, v10, :cond_b

    iget v9, v8, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    if-nez v9, :cond_b

    .line 709
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v9, v8, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    add-int/lit8 v5, v5, 0x1

    .line 711
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 712
    :cond_b
    iget v8, v8, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-ne v8, v9, :cond_c

    add-int/lit8 v2, v2, 0x1

    :cond_c
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    if-eq v4, v5, :cond_13

    .line 727
    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    if-eqz v0, :cond_e

    return-void

    .line 730
    :cond_e
    iput-boolean v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    const-string v0, "Detected animation cycle or disconnected graph. "

    .line 733
    invoke-static {v7, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 735
    invoke-virtual {v0}, Lcom/facebook/react/animated/AnimatedNode;->prettyPrintWithChildren()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    if-lez v2, :cond_10

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cycles ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_10
    const-string p1, "disconnected regions"

    .line 745
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looks like animated nodes graph has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", there are "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but toposort visited only "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 753
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    if-eqz p1, :cond_11

    if-nez v2, :cond_11

    .line 756
    new-instance p1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_11
    if-eqz p1, :cond_12

    .line 760
    new-instance p1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 762
    :cond_12
    throw v0

    .line 765
    :cond_13
    iput-boolean v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    :goto_8
    return-void
.end method


# virtual methods
.method public addAnimatedEventToView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4

    const-string v0, "animatedValueTag"

    .line 458
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v1, :cond_3

    .line 464
    instance-of v0, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_2

    const-string v0, "nativeEventPath"

    .line 474
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p3

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 476
    :goto_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 477
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_0
    new-instance p3, Lcom/facebook/react/animated/EventAnimationDriver;

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {p3, v0, v1}, Lcom/facebook/react/animated/EventAnimationDriver;-><init>(Ljava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 482
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 483
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 486
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .line 465
    :cond_2
    new-instance p3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAnimatedEventToView: Animated node on view ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] connected to event ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") should be of type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 471
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 461
    :cond_3
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addAnimatedEventToView: Animated node with tag ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectAnimatedNodeToView(II)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_3

    .line 377
    instance-of v1, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v1, :cond_1

    .line 392
    invoke-static {v1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 394
    new-instance p1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAnimatedNodeToView: Animated node could not be connected to UIManager - uiManager disappeared for tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string p2, "NativeAnimatedNodesManager"

    invoke-static {p2, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 402
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 403
    invoke-virtual {v2, p2, v1}, Lcom/facebook/react/animated/PropsAnimatedNode;->connectToView(ILcom/facebook/react/bridge/UIManager;)V

    .line 404
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 385
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAnimatedNodeToView: Animated node could not be connected, no ReactApplicationContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_2
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAnimatedNodeToView: Animated node connected to view ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be of type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 382
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_3
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAnimatedNodeToView: Animated node with tag ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public connectAnimatedNodes(II)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    const-string v1, "] does not exist"

    if-eqz v0, :cond_1

    .line 338
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/AnimatedNode;->addChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 346
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 340
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAnimatedNodes: Animated node with tag (child) ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAnimatedNodes: Animated node with tag (parent) ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createAnimatedNode(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "type"

    .line 126
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "style"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Lcom/facebook/react/animated/StyleAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/StyleAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "value"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {v0, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "props"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    new-instance v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/PropsAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "interpolation"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    new-instance v0, Lcom/facebook/react/animated/InterpolationAnimatedNode;

    invoke-direct {v0, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "addition"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    new-instance v0, Lcom/facebook/react/animated/AdditionAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/AdditionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_4
    const-string v1, "subtraction"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    new-instance v0, Lcom/facebook/react/animated/SubtractionAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/SubtractionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_5
    const-string v1, "division"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    new-instance v0, Lcom/facebook/react/animated/DivisionAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/DivisionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_6
    const-string v1, "multiplication"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    new-instance v0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/MultiplicationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_7
    const-string v1, "modulus"

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    new-instance v0, Lcom/facebook/react/animated/ModulusAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/ModulusAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_8
    const-string v1, "diffclamp"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    new-instance v0, Lcom/facebook/react/animated/DiffClampAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/DiffClampAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_9
    const-string v1, "transform"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 149
    new-instance v0, Lcom/facebook/react/animated/TransformAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/TransformAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0

    :cond_a
    const-string v1, "tracking"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 151
    new-instance v0, Lcom/facebook/react/animated/TrackingAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/TrackingAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 155
    :goto_0
    iput p1, v0, Lcom/facebook/react/animated/AnimatedNode;->mTag:I

    .line 156
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 153
    :cond_b
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported node type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_c
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimatedNode: Animated node ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public disconnectAnimatedNodeFromView(II)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_1

    .line 416
    instance-of p1, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz p1, :cond_0

    .line 423
    check-cast v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 424
    invoke-virtual {v0, p2}, Lcom/facebook/react/animated/PropsAnimatedNode;->disconnectFromView(I)V

    return-void

    .line 417
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAnimatedNodeFromView: Animated node connected to view ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be of type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 421
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAnimatedNodeFromView: Animated node with tag ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public disconnectAnimatedNodes(II)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    const-string v1, "] does not exist"

    if-eqz v0, :cond_1

    .line 357
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/AnimatedNode;->removeChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 365
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 359
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectAnimatedNodes: Animated node with tag (child) ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectAnimatedNodes: Animated node with tag (parent) ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public dropAnimatedNode(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 163
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public extractAnimatedNodeOffset(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 232
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->extractOffset()V

    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractAnimatedNodeOffset: Animated node ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flattenAnimatedNodeOffset(I)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 220
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->flattenOffset()V

    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flattenAnimatedNodeOffset: Animated node ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/animated/AnimatedNode;

    return-object p1
.end method

.method public getValue(ILcom/facebook/react/bridge/Callback;)V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 430
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 434
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 431
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValue: Animated node with tag ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist or is not a \'value\' node"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hasActiveAnimations()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public initializeEventListenerForUIManagerType(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 86
    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/facebook/react/animated/NativeAnimatedNodesManager$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager$1;-><init>(Lcom/facebook/react/animated/NativeAnimatedNodesManager;ILcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 1

    .line 515
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->handleEvent(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedNodesManager$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager$2;-><init>(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/uimanager/events/Event;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public removeAnimatedEventFromView(ILjava/lang/String;I)V
    .locals 3

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 497
    iget-object p3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 499
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 500
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 501
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/animated/EventAnimationDriver;

    iget-object p2, p2, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget p2, p2, Lcom/facebook/react/animated/ValueAnimatedNode;->mTag:I

    if-ne p2, p3, :cond_1

    .line 502
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreDefaultValues(I)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/animated/AnimatedNode;

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    instance-of v0, p1, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v0, :cond_1

    .line 452
    check-cast p1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 453
    invoke-virtual {p1}, Lcom/facebook/react/animated/PropsAnimatedNode;->restoreDefaultValues()V

    return-void

    .line 448
    :cond_1
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node connected to view [?] should be of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public runUpdates(J)V
    .locals 7

    .line 574
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 577
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 579
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 585
    :goto_1
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 586
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/animated/AnimationDriver;

    .line 587
    invoke-virtual {v3, p1, p2}, Lcom/facebook/react/animated/AnimationDriver;->runAnimationStep(J)V

    .line 588
    iget-object v5, v3, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 589
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-boolean v3, v3, Lcom/facebook/react/animated/AnimationDriver;->mHasFinished:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 595
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 596
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_5

    .line 601
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_2
    if-ltz p1, :cond_5

    .line 602
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/animated/AnimationDriver;

    .line 603
    iget-boolean v1, p2, Lcom/facebook/react/animated/AnimationDriver;->mHasFinished:Z

    if-eqz v1, :cond_4

    .line 604
    iget-object v1, p2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v1, :cond_3

    .line 605
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "finished"

    .line 606
    invoke-interface {v1, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 607
    iget-object p2, p2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 609
    :cond_3
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public setAnimatedNodeOffset(ID)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 207
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 213
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 214
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 208
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAnimatedNodeOffset: Animated node ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAnimatedNodeValue(ID)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 193
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 200
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 201
    iget-object p2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAnimatedNodeValue: Animated node ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public startAnimatingNode(IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    const-string v1, "startAnimatingNode: Animated node ["

    if-eqz v0, :cond_5

    .line 249
    instance-of v2, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_4

    .line 257
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimationDriver;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1, p3}, Lcom/facebook/react/animated/AnimationDriver;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    :cond_0
    const-string v1, "type"

    .line 265
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "frames"

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    new-instance p2, Lcom/facebook/react/animated/FrameBasedAnimationDriver;

    invoke-direct {p2, p3}, Lcom/facebook/react/animated/FrameBasedAnimationDriver;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    const-string v2, "spring"

    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    new-instance p2, Lcom/facebook/react/animated/SpringAnimation;

    invoke-direct {p2, p3}, Lcom/facebook/react/animated/SpringAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_2
    const-string v2, "decay"

    .line 271
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    new-instance p2, Lcom/facebook/react/animated/DecayAnimation;

    invoke-direct {p2, p3}, Lcom/facebook/react/animated/DecayAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 277
    :goto_0
    iput p1, p2, Lcom/facebook/react/animated/AnimationDriver;->mId:I

    .line 278
    iput-object p4, p2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    .line 279
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-object v0, p2, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 280
    iget-object p3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 274
    :cond_3
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startAnimatingNode: Unsupported animation type ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_4
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] should be of type "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 254
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_5
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] does not exist"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startListeningToAnimatedNodeValue(ILcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 169
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    return-void

    .line 170
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListeningToAnimatedNodeValue: Animated node ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public stopAnimation(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimationDriver;

    .line 312
    iget v3, v2, Lcom/facebook/react/animated/AnimationDriver;->mId:I

    if-ne v3, p1, :cond_1

    .line 313
    iget-object p1, v2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz p1, :cond_0

    .line 315
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v3, "finished"

    .line 316
    invoke-interface {p1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    iget-object v2, v2, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public stopListeningToAnimatedNodeValue(I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    if-eqz v0, :cond_0

    .line 181
    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListeningToAnimatedNodeValue: Animated node ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
