.class public Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;
.super Ljava/lang/Object;
.source "LockFreeEventDispatcherImpl.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcher;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;
    }
.end annotation


# instance fields
.field private final DEBUG_MODE:Z

.field private final TAG:Ljava/lang/String;

.field private final mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/uimanager/events/EventDispatcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private volatile mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->DEBUG_MODE:Z

    const-string v0, "LockFreeEventDispatcherImpl"

    .line 56
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    new-instance v0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;-><init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    .line 69
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 70
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 71
    new-instance v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->stopFrameCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->driveEventBeats()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method private driveEventBeats()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;

    .line 233
    invoke-interface {v1}, Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;->onBatchEventDispatched()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybePostFrameCallbackFromNonUI()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->maybePostFromNonUI()V

    :cond_0
    return-void
.end method

.method private stopFrameCallback()V
    .locals 1

    .line 152
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 153
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->stop()V

    return-void
.end method


# virtual methods
.method public addBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchAllEvents()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->maybePostFrameCallbackFromNonUI()V

    return-void
.end method

.method public dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->isInitialized()Z

    move-result v0

    const-string v1, "Dispatched event hasn\'t been initialized"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/EventDispatcherListener;

    .line 84
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherListener;->onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/events/Event;->dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->dispose()V

    return-void
.end method

.method public onCatalystInstanceDestroyed()V
    .locals 1

    .line 142
    new-instance v0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$1;-><init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->stopFrameCallback()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->stopFrameCallback()V

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->maybePostFrameCallbackFromNonUI()V

    return-void
.end method

.method public registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->register(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    return-void
.end method

.method public registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->register(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V

    return-void
.end method

.method public removeBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterEventEmitter(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->unregister(I)V

    return-void
.end method
