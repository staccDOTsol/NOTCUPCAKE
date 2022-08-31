.class public Lcom/facebook/react/uimanager/events/TouchEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/uimanager/events/TouchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/facebook/react/uimanager/events/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TouchEvent"

.field private static final TOUCH_EVENTS_POOL_SIZE:I = 0x3

.field public static final UNSET:J = -0x8000000000000000L


# instance fields
.field private mCoalescingKey:S

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

.field private mViewX:F

.field private mViewY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(IILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V
    .locals 3

    .line 99
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/events/Event;->init(IIJ)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Gesture start time must be initialized"

    .line 101
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 104
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    const/4 p1, 0x6

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unhandled MotionEvent action: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {p9, p5, p6}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->incrementCoalescingKey(J)V

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p9, p5, p6}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->removeCoalescingKey(J)V

    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {p9, p5, p6}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->getCoalescingKey(J)S

    move-result p2

    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p9, p5, p6}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->removeCoalescingKey(J)V

    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {p9, p5, p6}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 125
    :goto_2
    iput-object p3, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 126
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 127
    iput-short p2, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mCoalescingKey:S

    .line 128
    iput p7, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewX:F

    .line 129
    iput p8, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewY:F

    return-void
.end method

.method public static obtain(IILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)Lcom/facebook/react/uimanager/events/TouchEvent;
    .locals 11

    .line 64
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEvent;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/facebook/react/uimanager/events/TouchEvent;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/events/TouchEvent;-><init>()V

    .line 72
    :cond_0
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/MotionEvent;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 68
    invoke-direct/range {v1 .. v10}, Lcom/facebook/react/uimanager/events/TouchEvent;->init(IILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    return-object v0
.end method

.method public static obtain(ILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)Lcom/facebook/react/uimanager/events/TouchEvent;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/MotionEvent;

    const/4 v1, -0x1

    move v2, p0

    move-object v3, p1

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 44
    invoke-static/range {v1 .. v9}, Lcom/facebook/react/uimanager/events/TouchEvent;->obtain(IILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)Lcom/facebook/react/uimanager/events/TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method private verifyMotionEvent()Z
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot dispatch a TouchEvent that has no MotionEvent; the TouchEvent has been recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 3

    .line 165
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent$1;->$SwitchMap$com$facebook$react$uimanager$events$TouchEventType:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/events/TouchEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touch event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->verifyMotionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p1, p0}, Lcom/facebook/react/uimanager/events/TouchesHelper;->sendTouchesLegacy(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V

    :cond_0
    return-void
.end method

.method public dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->verifyMotionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {p1, p0}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveTouches(Lcom/facebook/react/uimanager/events/TouchEvent;)V

    :cond_0
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 179
    iget-short v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mCoalescingKey:S

    return v0
.end method

.method protected getEventCategory()I
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    sget-object v2, Lcom/facebook/react/uimanager/events/TouchEvent$1;->$SwitchMap$com$facebook$react$uimanager$events$TouchEventType:[I

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 214
    invoke-super {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventCategory()I

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getTouchEventType()Lcom/facebook/react/uimanager/events/TouchEventType;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    return-object v0
.end method

.method public getViewX()F
    .locals 1

    .line 238
    iget v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewX:F

    return v0
.end method

.method public getViewY()F
    .locals 1

    .line 242
    iget v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewY:F

    return v0
.end method

.method public onDispose()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 149
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/facebook/react/uimanager/events/TouchEvent;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
