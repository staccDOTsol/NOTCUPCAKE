.class public Lcom/facebook/react/uimanager/UIImplementation;
.super Ljava/lang/Object;
.source "UIImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;
    }
.end annotation


# instance fields
.field protected final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mLastCalculateLayoutTime:J

.field protected mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

.field private final mMeasureBuffer:[I

.field private final mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

.field private final mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

.field protected final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field protected final mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field private volatile mViewOperationsEnabled:Z

.field protected uiImplementationThreadLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 48
    iput-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    .line 111
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 112
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 113
    iput-object p3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 114
    new-instance p1, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-direct {p1, p3, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ShadowNodeRegistry;)V

    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .line 116
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 2

    .line 96
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;

    new-instance v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    invoke-direct {v0, p1, v1, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;I)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerResolver;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 1

    .line 72
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Lcom/facebook/react/uimanager/ViewManagerResolver;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Lcom/facebook/react/uimanager/events/EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V

    return-void
.end method

.method private assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 885
    instance-of v1, v0, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v1, :cond_2

    .line 886
    check-cast v0, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v0, :cond_1

    .line 893
    invoke-interface {v0}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to measure a view using measureLayout/measureLayoutRelativeToParent relative to an ancestor that requires custom layout for it\'s children ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "). Use measure instead."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 888
    :cond_2
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to use view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a parent, but its Manager doesn\'t extends ViewGroupManager"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertViewExists(ILjava/lang/String;)V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 872
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on view with tag: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", since the view does not exists"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchViewUpdatesIfNeeded()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 647
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    :cond_0
    return-void
.end method

.method private measureLayout(II[I)V
    .locals 4

    .line 812
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    const-string v2, "Tag "

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_2

    .line 820
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    :goto_0
    if-eq v3, v1, :cond_2

    if-eqz v3, :cond_1

    .line 826
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    goto :goto_0

    .line 823
    :cond_1
    new-instance p3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not an ancestor of tag "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 830
    :cond_2
    invoke-direct {p0, v0, v1, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    return-void

    .line 815
    :cond_3
    :goto_1
    new-instance p3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move p1, p2

    .line 816
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private measureLayoutRelativeToParent(I[I)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 838
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 843
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    return-void

    .line 840
    :cond_0
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have a parent!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 836
    :cond_1
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No native view for tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V
    .locals 5

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    .line 850
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 852
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 853
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    :goto_0
    if-eq v3, p2, :cond_0

    .line 855
    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-direct {p0, v3}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 857
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    .line 858
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 859
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    goto :goto_0

    .line 861
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 864
    :goto_1
    aput v1, p3, v0

    const/4 p2, 0x1

    .line 865
    aput v2, p3, p2

    const/4 p2, 0x2

    .line 866
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v0

    aput v0, p3, p2

    const/4 p2, 0x3

    .line 867
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result p1

    aput p1, p3, p2

    return-void
.end method

.method private notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2

    .line 903
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 906
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 907
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V

    return-void
.end method

.method private removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2

    .line 803
    invoke-static {p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleRemoveNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 804
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeNode(I)V

    .line 805
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 806
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 808
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeAndDisposeAllChildren()V

    return-void
.end method


# virtual methods
.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method protected applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V
    .locals 10

    .line 934
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 938
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayoutOnChildren()Ljava/lang/Iterable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 940
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 942
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v2

    add-float/2addr v2, p2

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v3

    add-float/2addr v3, p3

    .line 941
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V

    goto :goto_0

    .line 946
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v5

    .line 947
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, v5}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .line 949
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispatchUpdates(FFLcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 955
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->shouldNotifyOnLayout()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 956
    iget-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    const/4 v4, -0x1

    .line 960
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenX()I

    move-result v6

    .line 961
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenY()I

    move-result v7

    .line 962
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v8

    .line 963
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result v9

    .line 957
    invoke-static/range {v4 .. v9}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object p3

    .line 956
    invoke-interface {p2, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 966
    :cond_2
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdateSeen()V

    .line 967
    iget-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {p2, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->onViewUpdatesCompleted(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    return-void
.end method

.method protected calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 8

    const-wide/16 v0, 0x0

    const-string v2, "cssRoot.calculateLayout"

    .line 913
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 914
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    const-string v4, "rootTag"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 915
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 918
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getWidthMeasureSpec()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 919
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getHeightMeasureSpec()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 921
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x7fc00000    # NaNf

    if-nez v6, :cond_0

    const/high16 v4, 0x7fc00000    # NaNf

    goto :goto_0

    .line 923
    :cond_0
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 924
    :goto_0
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 926
    :cond_1
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v7, v5

    .line 920
    :goto_1
    invoke-interface {p1, v4, v7}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayout(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    return-void

    :catchall_0
    move-exception p1

    .line 928
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 930
    throw p1
.end method

.method public clearJSResponder()V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueClearJSResponder()V

    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueConfigureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method protected createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 3

    .line 120
    new-instance v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    .line 121
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLayoutDirection(Lcom/facebook/yoga/YogaDirection;)V

    :cond_0
    const-string v1, "Root"

    .line 125
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ViewManager;->createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object p1

    return-object p1
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5

    .line 243
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v2, p3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 252
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    .line 253
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setRootTag(I)V

    .line 254
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 256
    iget-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->addNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 260
    new-instance p1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {p1, p4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 261
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 264
    :cond_1
    invoke-virtual {p0, v1, p3, p1}, Lcom/facebook/react/uimanager/UIImplementation;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 265
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dismissPopupMenu()V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDismissPopupMenu()V

    return-void
.end method

.method public dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchViewManagerCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public dispatchViewManagerCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchViewManagerCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public dispatchViewUpdates(I)V
    .locals 9

    const-wide/16 v0, 0x0

    const-string v2, "UIImplementation.dispatchViewUpdates"

    .line 626
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "batchId"

    .line 628
    invoke-virtual {v2, v3, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 629
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->updateViewHierarchy()V

    .line 633
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->onBatchComplete()V

    .line 634
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-wide v7, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->dispatchViewUpdates(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 637
    throw p1
.end method

.method public findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueFindTargetForTouch(IFFLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getProfiledBatchPerfCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getProfiledBatchPerfCounters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getUIViewOperationQueue()Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    return-object v0
.end method

.method protected handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1

    .line 270
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result p2

    if-nez p2, :cond_0

    .line 271
    iget-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_0
    return-void
.end method

.method protected handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1

    .line 310
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_0
    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 331
    iget-boolean v7, v1, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v7, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v7, v1, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v7

    .line 336
    :try_start_0
    iget-object v8, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v8, v0}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v8

    if-nez v2, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    :goto_0
    if-nez v4, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    .line 339
    :cond_2
    invoke-interface/range {p4 .. p4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v11

    :goto_1
    if-nez v6, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    .line 340
    :cond_3
    invoke-interface/range {p6 .. p6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v12

    :goto_2
    if-eqz v10, :cond_5

    if-eqz v3, :cond_4

    .line 342
    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v13

    if-ne v10, v13, :cond_4

    goto :goto_3

    .line 343
    :cond_4
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "Size of moveFrom != size of moveTo!"

    invoke-direct {v0, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    if-eqz v11, :cond_7

    if-eqz v5, :cond_6

    .line 346
    invoke-interface/range {p5 .. p5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v13

    if-ne v11, v13, :cond_6

    goto :goto_4

    .line 347
    :cond_6
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "Size of addChildTags != size of addAtIndices!"

    invoke-direct {v0, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    add-int v13, v10, v11

    .line 351
    new-array v14, v13, [Lcom/facebook/react/uimanager/ViewAtIndex;

    add-int v15, v10, v12

    .line 352
    new-array v9, v15, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    new-array v1, v15, [I

    move/from16 v16, v13

    .line 354
    new-array v13, v12, [I

    if-lez v10, :cond_8

    .line 357
    invoke-static/range {p2 .. p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static/range {p3 .. p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v10, :cond_8

    move/from16 v17, v15

    .line 360
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v15

    .line 361
    invoke-interface {v8, v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v2

    move-object/from16 v18, v13

    .line 362
    new-instance v13, Lcom/facebook/react/uimanager/ViewAtIndex;

    move-object/from16 v19, v8

    invoke-interface {v3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v8

    invoke-direct {v13, v2, v8}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v13, v14, v0

    .line 363
    aput v15, v9, v0

    .line 364
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p2

    move/from16 v15, v17

    move-object/from16 v13, v18

    move-object/from16 v8, v19

    goto :goto_5

    :cond_8
    move-object/from16 v19, v8

    move-object/from16 v18, v13

    move/from16 v17, v15

    if-lez v11, :cond_9

    .line 369
    invoke-static/range {p4 .. p4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static/range {p5 .. p5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_9

    .line 372
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 373
    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    add-int v8, v10, v0

    .line 374
    new-instance v13, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-direct {v13, v2, v3}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v13, v14, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    if-lez v12, :cond_a

    .line 379
    invoke-static/range {p6 .. p6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v12, :cond_a

    .line 381
    invoke-interface {v6, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    move-object/from16 v3, v19

    .line 382
    invoke-interface {v3, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v4

    add-int v5, v10, v0

    .line 383
    aput v2, v9, v5

    .line 384
    aput v4, v1, v5

    .line 385
    aput v4, v18, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v3

    goto :goto_7

    :cond_a
    move-object/from16 v3, v19

    .line 398
    sget-object v0, Lcom/facebook/react/uimanager/ViewAtIndex;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 399
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v15, v17, -0x1

    const/4 v0, -0x1

    :goto_8
    if-ltz v15, :cond_c

    .line 404
    aget v2, v9, v15

    if-eq v2, v0, :cond_b

    .line 409
    aget v0, v9, v15

    invoke-interface {v3, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 411
    aget v0, v9, v15

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 406
    :cond_b
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeated indices in Removal list for view tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    :goto_9
    move/from16 v10, v16

    if-ge v0, v10, :cond_e

    .line 415
    aget-object v2, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    move-object/from16 v1, p0

    .line 416
    :try_start_2
    iget-object v5, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    iget v6, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v5, v6}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 421
    iget v2, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-interface {v3, v5, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    add-int/lit8 v0, v0, 0x1

    move-object v1, v4

    move/from16 v16, v10

    goto :goto_9

    .line 418
    :cond_d
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to add unknown view tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v4, v1

    move-object/from16 v1, p0

    .line 424
    iget-object v0, v1, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v9

    move-object/from16 p4, v4

    move-object/from16 p5, v14

    move-object/from16 p6, v18

    invoke-virtual/range {p1 .. p6}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleManageChildren(Lcom/facebook/react/uimanager/ReactShadowNode;[I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v12, :cond_f

    .line 428
    iget-object v0, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    aget v2, v18, v9

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 430
    :cond_f
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_b

    :catchall_1
    move-exception v0

    :goto_b
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasure(ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasureInWindow(ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7

    .line 587
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 592
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(II[I)V

    .line 593
    iget-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget p1, p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    .line 594
    iget-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget p2, p2, v1

    int-to-float p2, p2

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    .line 595
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 596
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 597
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-interface {p4, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 599
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 608
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, v2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(I[I)V

    .line 614
    iget-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget p1, p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    .line 615
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 616
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 617
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 618
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v7, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v7, v6

    invoke-interface {p3, v7}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p3, v1, [Ljava/lang/Object;

    .line 620
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCatalystInstanceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->pauseFrameCallback()V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->resumeFrameCallback()V

    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public profileNextBatch()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->profileNextBatch()V

    return-void
.end method

.method public registerRootView(Landroid/view/View;ILcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;I",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ")V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 175
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 176
    invoke-interface {v1, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 178
    new-instance v2, Lcom/facebook/react/uimanager/UIImplementation$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/react/uimanager/UIImplementation$1;-><init>(Lcom/facebook/react/uimanager/UIImplementation;Lcom/facebook/react/uimanager/ReactShadowNode;)V

    invoke-virtual {p3, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 187
    iget-object p3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {p3, p2, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->addRootView(ILandroid/view/View;)V

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLayoutUpdateListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1001
    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    return-void
.end method

.method public removeRootShadowNode(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeRootNode(I)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeRootView(I)V
    .locals 1

    .line 193
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootShadowNode(I)V

    .line 194
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueRemoveRootView(I)V

    return-void
.end method

.method protected final removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 799
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispose()V

    return-void
.end method

.method public removeSubviewsFromContainerWithID(I)V
    .locals 8

    .line 503
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v7

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 511
    invoke-interface {v7, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 514
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 505
    :cond_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove subviews of an unknown view tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceExistingNonRootView(II)V
    .locals 9

    .line 465
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 474
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->indexOf(Lcom/facebook/react/uimanager/ReactShadowNode;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 484
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v6

    .line 485
    invoke-interface {v6, p2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 487
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v7

    .line 488
    invoke-interface {v7, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 490
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    .line 491
    invoke-interface {v8, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 493
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 481
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Didn\'t find child tag in parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_1
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node is not attached to a parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 471
    :cond_2
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to replace unknown view tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 466
    :cond_3
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string p2, "Trying to add or replace a root tag!"

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 983
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 986
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getRootTag()I

    move-result v1

    goto :goto_0

    .line 988
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning : attempted to resolve a non-existent react shadow node. reactTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public final resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object p1

    return-object p1
.end method

.method protected final resolveViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->getViewManagerIfExists(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    return-object p1
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSendAccessibilityEvent(II)V

    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    .line 441
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object p1

    const/4 v1, 0x0

    .line 448
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 454
    invoke-interface {p1, v2, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_1
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleSetChildren(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 458
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setJSResponder(IZ)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getNativeKind()Lcom/facebook/react/uimanager/NativeKind;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/uimanager/NativeKind;->NONE:Lcom/facebook/react/uimanager/NativeKind;

    if-ne v1, v2, :cond_1

    .line 733
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetJSResponder(IIZ)V

    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetLayoutAnimationEnabled(Z)V

    return-void
.end method

.method public setLayoutUpdateListener(Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    return-void
.end method

.method public setViewLocalData(ILjava/lang/Object;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to set local data for view with unknown tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLocalData(Ljava/lang/Object;)V

    .line 230
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    return-void
.end method

.method public showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "showPopupMenu"

    .line 766
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueShowPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1

    .line 304
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 305
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void
.end method

.method public updateNodeSize(III)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to update size of non-existent tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    int-to-float p1, p2

    .line 214
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleWidth(F)V

    int-to-float p1, p3

    .line 215
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleHeight(F)V

    .line 217
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    return-void
.end method

.method public updateRootView(III)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to update non-existent root tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V

    return-void
.end method

.method public updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V
    .locals 0

    .line 165
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setMeasureSpecs(II)V

    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 291
    new-instance p1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {p1, p3}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 292
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 293
    invoke-virtual {p0, v0, p2, p1}, Lcom/facebook/react/uimanager/UIImplementation;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_1
    return-void

    .line 287
    :cond_2
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to update non-existent view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 283
    :cond_3
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got unknown view type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateViewHierarchy()V
    .locals 7

    const-string v0, "rootTag"

    const-wide/16 v1, 0x0

    const-string v3, "UIImplementation.updateViewHierarchy"

    .line 652
    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    const/4 v3, 0x0

    .line 655
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootNodeCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 656
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v4, v3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootTag(I)I

    move-result v4

    .line 657
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v5, v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v4

    .line 659
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->getWidthMeasureSpec()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->getHeightMeasureSpec()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "UIImplementation.notifyOnBeforeLayoutRecursive"

    .line 660
    invoke-static {v1, v2, v5}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v5

    .line 663
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v5

    .line 664
    invoke-virtual {v5}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 666
    :try_start_1
    invoke-direct {p0, v4}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 671
    invoke-virtual {p0, v4}, Lcom/facebook/react/uimanager/UIImplementation;->calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    const-string v5, "UIImplementation.applyUpdatesRecursive"

    .line 672
    invoke-static {v1, v2, v5}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v5

    .line 674
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v5

    .line 675
    invoke-virtual {v5}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v5, 0x0

    .line 677
    :try_start_3
    invoke-virtual {p0, v4, v5, v5}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    :try_start_4
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 682
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    if-eqz v5, :cond_0

    .line 683
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v6, v4, v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueLayoutUpdateFinished(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 679
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 680
    throw v0

    :catchall_1
    move-exception v0

    .line 668
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 669
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 689
    throw v0
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 547
    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNode;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 544
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
