.class Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "EventDispatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/events/EventDispatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleDispatchFrameCallback"
.end annotation


# instance fields
.field private volatile mIsPosted:Z

.field private mShouldStop:Z

.field final synthetic this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    .line 277
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;Lcom/facebook/react/uimanager/events/EventDispatcherImpl$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)V

    return-void
.end method

.method private post()V
    .locals 3

    .line 318
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    .line 319
    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;
    invoke-static {v2}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$800(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    .line 281
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 283
    iget-boolean p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 284
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->post()V

    :goto_0
    const-wide/16 p1, 0x0

    const-string v0, "ScheduleDispatchFrameCallback"

    .line 289
    invoke-static {p1, p2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # invokes: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->moveStagedEventsToDispatchQueue()V
    invoke-static {v1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$300(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)V

    .line 293
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mHasDispatchScheduled:Z
    invoke-static {v1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$400(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    const/4 v2, 0x1

    # setter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mHasDispatchScheduled:Z
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$402(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;Z)Z

    .line 295
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    .line 298
    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mHasDispatchScheduledCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$500(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 295
    invoke-static {p1, p2, v0, v1}, Lcom/facebook/systrace/Systrace;->startAsyncFlow(JLjava/lang/String;I)V

    .line 299
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$700(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mDispatchEventsRunnable:Lcom/facebook/react/uimanager/events/EventDispatcherImpl$DispatchEventsRunnable;
    invoke-static {v1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$600(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Lcom/facebook/react/uimanager/events/EventDispatcherImpl$DispatchEventsRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1, p2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 303
    throw v0
.end method

.method public maybePost()V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    .line 313
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->post()V

    :cond_0
    return-void
.end method

.method public maybePostFromNonUI()V
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$700(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isOnUiQueueThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->maybePost()V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;->access$700(Lcom/facebook/react/uimanager/events/EventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback$1;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    return-void
.end method
