.class Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "LockFreeEventDispatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleDispatchFrameCallback"
.end annotation


# instance fields
.field private volatile mIsPosted:Z

.field private mShouldStop:Z

.field final synthetic this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;

    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    .line 171
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;-><init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V

    return-void
.end method

.method private post()V
    .locals 3

    .line 198
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;

    .line 199
    # getter for: Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;
    invoke-static {v2}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->access$300(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 175
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 177
    iget-boolean p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->post()V

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;

    # invokes: Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->driveEventBeats()V
    invoke-static {p1}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->access$200(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)V

    return-void
.end method

.method public maybePost()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    .line 193
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->post()V

    :cond_0
    return-void
.end method

.method public maybePostFromNonUI()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mIsPosted:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->access$400(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isOnUiQueueThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->maybePost()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->this$0:Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;

    # getter for: Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;->access$400(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback$1;-><init>(Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/LockFreeEventDispatcherImpl$ScheduleDispatchFrameCallback;->mShouldStop:Z

    return-void
.end method
