.class public Lcom/facebook/react/animated/NativeAnimatedModule;
.super Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;
.source "NativeAnimatedModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "NativeAnimatedModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANIMATED_MODULE_DEBUG:Z = false

.field public static final NAME:Ljava/lang/String; = "NativeAnimatedModule"


# instance fields
.field private final mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

.field private mBatchingControlledByJS:Z

.field private volatile mCurrentBatchNumber:J

.field private volatile mCurrentFrameNumber:J

.field private mInitializedForFabric:Z

.field private mInitializedForNonFabric:Z

.field private final mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mNumFabricAnimations:I

.field private mNumNonFabricAnimations:I

.field private final mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

.field private mUIManagerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 122
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    .line 123
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    const/4 v1, 0x1

    .line 124
    iput v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    .line 125
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    .line 126
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 131
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 132
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$1;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/modules/core/ReactChoreographer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/uimanager/GuardedFrameCallback;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/react/animated/NativeAnimatedModule;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/react/animated/NativeAnimatedModule;Ljava/util/Queue;J)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->executeAllOperations(Ljava/util/Queue;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/react/animated/NativeAnimatedModule;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 177
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPreOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 187
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUnbatchedOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 181
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 182
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFrameCallback()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method private decrementInFlightAnimationsForViewTag(I)V
    .locals 3

    .line 403
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 405
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    goto :goto_0

    .line 407
    :cond_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 415
    :goto_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    if-nez p1, :cond_1

    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-eq v2, v0, :cond_1

    .line 418
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    goto :goto_1

    .line 419
    :cond_1
    iget v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    if-nez v0, :cond_2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-eq p1, v1, :cond_2

    .line 422
    iput v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    :cond_2
    :goto_1
    return-void
.end method

.method private enqueueFrameCallback()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method private executeAllOperations(Ljava/util/Queue;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;",
            ">;J)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v0

    .line 237
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    if-nez v1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->getBatchNumber()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_1

    return-void

    .line 254
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    if-nez v1, :cond_2

    return-void

    .line 258
    :cond_2
    invoke-virtual {v1, v0}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->execute(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_0
.end method

.method private getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-direct {v3, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    return-object v0
.end method

.method private initializeLifecycleEventListenersForViewTag(I)V
    .locals 3

    .line 357
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 359
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    goto :goto_0

    .line 361
    :cond_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 366
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    invoke-virtual {p1, v2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->initializeEventListenerForUIManagerType(I)V

    goto :goto_1

    .line 368
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "initializeLifecycleEventListenersForViewTag could not get NativeAnimatedNodesManager"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "NativeAnimatedModule"

    invoke-static {v2, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :goto_1
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-eq p1, v0, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-ne p1, v1, :cond_4

    :cond_3
    return-void

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 383
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    invoke-static {p1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 385
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/UIManager;->addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    .line 386
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-ne p1, v0, :cond_5

    .line 387
    iput-boolean v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    goto :goto_2

    .line 389
    :cond_5
    iput-boolean v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public addAnimatedEventToView(DLjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    double-to-int p1, p1

    .line 815
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    .line 817
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$20;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$20;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectAnimatedNodeToView(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 728
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    .line 730
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$17;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$17;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public connectAnimatedNodes(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 669
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$15;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$15;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public createAnimatedNode(DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    double-to-int p1, p1

    .line 446
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$4;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 6

    .line 200
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 207
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    if-nez p1, :cond_1

    .line 217
    iget-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    .line 218
    iget-wide v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    iget-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 219
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 220
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->executeAllOperations(Ljava/util/Queue;J)V

    .line 225
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->executeAllOperations(Ljava/util/Queue;J)V

    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 4

    .line 193
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    return-void
.end method

.method public disconnectAnimatedNodeFromView(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 758
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->decrementInFlightAnimationsForViewTag(I)V

    .line 760
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$18;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$18;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public disconnectAnimatedNodes(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 697
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$16;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$16;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public dropAnimatedNode(D)V
    .locals 0

    double-to-int p1, p1

    .line 525
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$8;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$8;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public extractAnimatedNodeOffset(D)V
    .locals 0

    double-to-int p1, p1

    .line 601
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$12;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$12;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public finishOperationBatch()V
    .locals 4

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 435
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    return-void
.end method

.method public flattenAnimatedNodeOffset(D)V
    .locals 0

    double-to-int p1, p1

    .line 582
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$11;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$11;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeAnimatedModule"

    return-object v0
.end method

.method public getValue(DLcom/facebook/react/bridge/Callback;)V
    .locals 0

    double-to-int p1, p1

    .line 886
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$22;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$22;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->clearFrameCallback()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->clearFrameCallback()V

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->enqueueFrameCallback()V

    return-void
.end method

.method public removeAnimatedEventFromView(DLjava/lang/String;D)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p4

    .line 852
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->decrementInFlightAnimationsForViewTag(I)V

    .line 854
    new-instance p4, Lcom/facebook/react/animated/NativeAnimatedModule$21;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$21;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILjava/lang/String;I)V

    invoke-direct {p0, p4}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public removeListeners(D)V
    .locals 0

    return-void
.end method

.method public restoreDefaultValues(D)V
    .locals 0

    double-to-int p1, p1

    .line 785
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$19;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$19;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addPreOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setAnimatedNodeOffset(DD)V
    .locals 0

    double-to-int p1, p1

    .line 563
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$10;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$10;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ID)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setAnimatedNodeValue(DD)V
    .locals 0

    double-to-int p1, p1

    .line 544
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$9;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$9;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ID)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setNodesManager(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public startAnimatingNode(DDLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 6

    double-to-int v2, p1

    double-to-int v3, p3

    .line 625
    new-instance p1, Lcom/facebook/react/animated/NativeAnimatedModule$13;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/animated/NativeAnimatedModule$13;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->addUnbatchedOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public startListeningToAnimatedNodeValue(D)V
    .locals 1

    double-to-int p1, p1

    .line 470
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$5;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$5;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    .line 487
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$6;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/animated/AnimatedNodeValueListener;)V

    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public startOperationBatch()V
    .locals 4

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 429
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    return-void
.end method

.method public stopAnimation(D)V
    .locals 0

    double-to-int p1, p1

    .line 647
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$14;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$14;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public stopListeningToAnimatedNodeValue(D)V
    .locals 0

    double-to-int p1, p1

    .line 506
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$7;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$7;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 273
    :cond_1
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 275
    new-instance v2, Lcom/facebook/react/animated/NativeAnimatedModule$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$2;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;J)V

    .line 283
    new-instance v3, Lcom/facebook/react/animated/NativeAnimatedModule$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$3;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;J)V

    .line 292
    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 293
    invoke-virtual {p1, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 294
    invoke-virtual {p1, v3}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method
