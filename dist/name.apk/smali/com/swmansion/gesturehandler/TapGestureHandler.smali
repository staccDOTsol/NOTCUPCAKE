.class public final Lcom/swmansion/gesturehandler/TapGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "TapGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/TapGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/TapGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 02\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0014J\u0008\u0010\"\u001a\u00020\u001aH\u0014J\u0008\u0010#\u001a\u00020\u001aH\u0016J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\nJ\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\nJ\u000e\u0010,\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u0008\u0010.\u001a\u00020\u001cH\u0002J\u0008\u0010/\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/TapGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "()V",
        "currentMaxNumberOfPointers",
        "",
        "failDelayed",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "lastX",
        "",
        "lastY",
        "maxDelayMs",
        "",
        "maxDeltaX",
        "maxDeltaY",
        "maxDistSq",
        "maxDurationMs",
        "minNumberOfPointers",
        "numberOfTaps",
        "offsetX",
        "offsetY",
        "startX",
        "startY",
        "tapsSoFar",
        "activate",
        "",
        "force",
        "",
        "endTap",
        "onCancel",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "onReset",
        "resetConfig",
        "setMaxDelayMs",
        "setMaxDist",
        "maxDist",
        "setMaxDurationMs",
        "setMaxDx",
        "deltaX",
        "setMaxDy",
        "deltaY",
        "setMinNumberOfPointers",
        "setNumberOfTaps",
        "shouldFail",
        "startTap",
        "Companion",
        "react-native-gesture-handler_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/gesturehandler/TapGestureHandler$Companion;

.field private static final DEFAULT_MAX_DELAY_MS:J = 0xc8L

.field private static final DEFAULT_MAX_DURATION_MS:J = 0x1f4L

.field private static final DEFAULT_MIN_NUMBER_OF_POINTERS:I = 0x1

.field private static final DEFAULT_NUMBER_OF_TAPS:I = 0x1

.field private static final MAX_VALUE_IGNORE:F = 1.4E-45f


# instance fields
.field private currentMaxNumberOfPointers:I

.field private final failDelayed:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field private maxDelayMs:J

.field private maxDeltaX:F

.field private maxDeltaY:F

.field private maxDistSq:F

.field private maxDurationMs:J

.field private minNumberOfPointers:I

.field private numberOfTaps:I

.field private offsetX:F

.field private offsetY:F

.field private startX:F

.field private startY:F

.field private tapsSoFar:I


# direct methods
.method public static synthetic $r8$lambda$Wq6k-fGts3J38MdkNa038kdcu6w(Lcom/swmansion/gesturehandler/TapGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->failDelayed$lambda-0(Lcom/swmansion/gesturehandler/TapGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/TapGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/TapGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->Companion:Lcom/swmansion/gesturehandler/TapGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaX:F

    .line 11
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaY:F

    .line 12
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDistSq:F

    const-wide/16 v0, 0x1f4

    .line 13
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDurationMs:J

    const-wide/16 v0, 0xc8

    .line 14
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDelayMs:J

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->numberOfTaps:I

    .line 16
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->minNumberOfPointers:I

    .line 17
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 26
    new-instance v1, Lcom/swmansion/gesturehandler/TapGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/gesturehandler/TapGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/TapGestureHandler;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    .line 29
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method private final endTap()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    :goto_0
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->tapsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->tapsSoFar:I

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->numberOfTaps:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->currentMaxNumberOfPointers:I

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->minNumberOfPointers:I

    if-lt v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->activate()V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private static final failDelayed$lambda-0(Lcom/swmansion/gesturehandler/TapGestureHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->fail()V

    return-void
.end method

.method private final shouldFail()Z
    .locals 7

    .line 94
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaX:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaX:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    return v4

    .line 98
    :cond_1
    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startY:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetY:F

    add-float/2addr v1, v5

    .line 99
    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaY:F

    cmpg-float v5, v5, v2

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    return v4

    :cond_3
    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    .line 103
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDistSq:F

    cmpg-float v2, v0, v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method private final startTap()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->end()V

    return-void
.end method

.method protected onCancel()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->getState()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 110
    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetX:F

    .line 111
    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetY:F

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startX:F

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startY:F

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 123
    sget-object v2, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    invoke-virtual {v2, p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastX:F

    .line 124
    sget-object v2, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    invoke-virtual {v2, p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastY:F

    goto :goto_0

    .line 116
    :cond_1
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetX:F

    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startX:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetX:F

    .line 117
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetY:F

    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startY:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->offsetY:F

    .line 118
    sget-object v2, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    invoke-virtual {v2, p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastX:F

    .line 119
    sget-object v2, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    invoke-virtual {v2, p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastY:F

    .line 120
    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->lastX:F

    iput v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startX:F

    .line 121
    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->startY:F

    .line 126
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->currentMaxNumberOfPointers:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->shouldFail()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->fail()V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    if-nez v1, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->begin()V

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->startTap()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ne v0, p1, :cond_8

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_1

    .line 138
    :cond_6
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->endTap()V

    goto :goto_1

    .line 140
    :cond_7
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->startTap()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->tapsSoFar:I

    .line 156
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 157
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->resetConfig()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaX:F

    .line 35
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaY:F

    .line 36
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDistSq:F

    const-wide/16 v0, 0x1f4

    .line 37
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDurationMs:J

    const-wide/16 v0, 0xc8

    .line 38
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDelayMs:J

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->numberOfTaps:I

    .line 40
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->minNumberOfPointers:I

    return-void
.end method

.method public final setMaxDelayMs(J)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 48
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDelayMs:J

    return-object v0
.end method

.method public final setMaxDist(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    mul-float p1, p1, p1

    .line 64
    iput p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDistSq:F

    return-object v0
.end method

.method public final setMaxDurationMs(J)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 51
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 52
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDurationMs:J

    return-object v0
.end method

.method public final setMaxDx(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 56
    iput p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaX:F

    return-object v0
.end method

.method public final setMaxDy(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 60
    iput p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->maxDeltaY:F

    return-object v0
.end method

.method public final setMinNumberOfPointers(I)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 67
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 68
    iput p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->minNumberOfPointers:I

    return-object v0
.end method

.method public final setNumberOfTaps(I)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 1

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/TapGestureHandler;

    .line 44
    iput p1, v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->numberOfTaps:I

    return-object v0
.end method
