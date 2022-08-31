.class public final Lcom/swmansion/gesturehandler/PanGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "PanGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/PanGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u0000 O2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001OB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u000fH\u0016J\u0008\u00103\u001a\u000201H\u0014J\u0010\u00104\u001a\u0002012\u0006\u00105\u001a\u000206H\u0014J\u0008\u00107\u001a\u000201H\u0014J\u0008\u00108\u001a\u000201H\u0016J\u0008\u00109\u001a\u000201H\u0016J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0006J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010=\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010>\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010@\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010A\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010B\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010D\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\nJ\u000e\u0010H\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\nJ\u0008\u0010M\u001a\u00020\u000fH\u0002J\u0008\u0010N\u001a\u00020\u000fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010&R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010&R\u001e\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010&\u00a8\u0006P"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/PanGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "activateAfterLongPress",
        "",
        "activateDelayed",
        "Ljava/lang/Runnable;",
        "activeOffsetXEnd",
        "",
        "activeOffsetXStart",
        "activeOffsetYEnd",
        "activeOffsetYStart",
        "averageTouches",
        "",
        "defaultMinDistSq",
        "failOffsetXEnd",
        "failOffsetXStart",
        "failOffsetYEnd",
        "failOffsetYStart",
        "handler",
        "Landroid/os/Handler;",
        "lastX",
        "lastY",
        "maxPointers",
        "",
        "minDistSq",
        "minPointers",
        "minVelocitySq",
        "minVelocityX",
        "minVelocityY",
        "offsetX",
        "offsetY",
        "startX",
        "startY",
        "translationX",
        "getTranslationX",
        "()F",
        "translationY",
        "getTranslationY",
        "velocityTracker",
        "Landroid/view/VelocityTracker;",
        "<set-?>",
        "velocityX",
        "getVelocityX",
        "velocityY",
        "getVelocityY",
        "activate",
        "",
        "force",
        "onCancel",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "onReset",
        "resetConfig",
        "resetProgress",
        "setActivateAfterLongPress",
        "time",
        "setActiveOffsetXEnd",
        "setActiveOffsetXStart",
        "setActiveOffsetYEnd",
        "setActiveOffsetYStart",
        "setAverageTouches",
        "setFailOffsetXEnd",
        "setFailOffsetXStart",
        "setFailOffsetYEnd",
        "setFailOffsetYStart",
        "setMaxPointers",
        "setMinDist",
        "minDist",
        "setMinPointers",
        "setMinVelocity",
        "minVelocity",
        "setMinVelocityX",
        "setMinVelocityY",
        "shouldActivate",
        "shouldFail",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;

.field private static final DEFAULT_ACTIVATE_AFTER_LONG_PRESS:J = 0x0L

.field private static final DEFAULT_MAX_POINTERS:I = 0xa

.field private static final DEFAULT_MIN_POINTERS:I = 0x1

.field private static final MAX_VALUE_IGNORE:F = 1.4E-45f

.field private static final MIN_VALUE_IGNORE:F = 3.4028235E38f


# instance fields
.field private activateAfterLongPress:J

.field private final activateDelayed:Ljava/lang/Runnable;

.field private activeOffsetXEnd:F

.field private activeOffsetXStart:F

.field private activeOffsetYEnd:F

.field private activeOffsetYStart:F

.field private averageTouches:Z

.field private final defaultMinDistSq:F

.field private failOffsetXEnd:F

.field private failOffsetXStart:F

.field private failOffsetYEnd:F

.field private failOffsetYStart:F

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field private maxPointers:I

.field private minDistSq:F

.field private minPointers:I

.field private minVelocitySq:F

.field private minVelocityX:F

.field private minVelocityY:F

.field private offsetX:F

.field private offsetY:F

.field private startX:F

.field private startY:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$PP3SMq4fibj3JVG89IyB05Y20tY(Lcom/swmansion/gesturehandler/PanGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateDelayed$lambda-0(Lcom/swmansion/gesturehandler/PanGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minDistSq:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXStart:F

    .line 24
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXEnd:F

    .line 25
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXStart:F

    .line 26
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXEnd:F

    .line 27
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYStart:F

    .line 28
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYEnd:F

    .line 29
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYStart:F

    .line 30
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYEnd:F

    .line 31
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityX:F

    .line 32
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityY:F

    .line 33
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocitySq:F

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minPointers:I

    const/16 v0, 0xa

    .line 35
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->maxPointers:I

    .line 45
    new-instance v0, Lcom/swmansion/gesturehandler/PanGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/PanGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/PanGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int p1, p1, p1

    int-to-float p1, p1

    .line 63
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->defaultMinDistSq:F

    .line 64
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minDistSq:F

    return-void
.end method

.method private static final activateDelayed$lambda-0(Lcom/swmansion/gesturehandler/PanGestureHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->activate()V

    return-void
.end method

.method private final shouldActivate()Z
    .locals 8

    .line 155
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 156
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXStart:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v5, v1, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    return v4

    .line 159
    :cond_1
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXEnd:F

    const/4 v5, 0x1

    cmpg-float v6, v1, v5

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    return v4

    .line 162
    :cond_3
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v6

    .line 163
    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYStart:F

    cmpg-float v7, v6, v2

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    return v4

    .line 166
    :cond_5
    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYEnd:F

    cmpg-float v5, v6, v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    cmpl-float v5, v1, v6

    if-lez v5, :cond_7

    return v4

    :cond_7
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    .line 170
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minDistSq:F

    cmpg-float v5, v1, v2

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_9

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    return v4

    .line 173
    :cond_9
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityX:F

    .line 174
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityX:F

    cmpg-float v5, v1, v2

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    if-nez v5, :cond_e

    cmpg-float v5, v1, v6

    if-gez v5, :cond_b

    cmpg-float v5, v0, v1

    if-lez v5, :cond_d

    :cond_b
    cmpg-float v5, v6, v1

    if-gtz v5, :cond_c

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_e

    :cond_d
    return v4

    .line 178
    :cond_e
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityY:F

    .line 179
    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityY:F

    cmpg-float v7, v5, v2

    if-nez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_13

    cmpg-float v7, v5, v6

    if-gez v7, :cond_10

    cmpg-float v7, v0, v5

    if-lez v7, :cond_12

    :cond_10
    cmpg-float v6, v6, v5

    if-gtz v6, :cond_11

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_13

    :cond_12
    return v4

    :cond_13
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    .line 184
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocitySq:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_15

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_15

    const/4 v3, 0x1

    :cond_15
    return v3
.end method

.method private final shouldFail()Z
    .locals 8

    .line 188
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v2

    .line 191
    iget-wide v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateAfterLongPress:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->defaultMinDistSq:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return v4

    .line 195
    :cond_1
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXStart:F

    const/4 v3, 0x1

    const/4 v5, 0x0

    cmpg-float v6, v2, v3

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    return v4

    .line 198
    :cond_3
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXEnd:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v7, v2, v6

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    return v4

    .line 201
    :cond_5
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYStart:F

    cmpg-float v2, v0, v3

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    return v4

    .line 204
    :cond_7
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYEnd:F

    cmpg-float v2, v0, v6

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    return v4
.end method


# virtual methods
.method public activate(Z)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->resetProgress()V

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate(Z)V

    return-void
.end method

.method public final getTranslationX()F
    .locals 2

    .line 17
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getTranslationY()F
    .locals 2

    .line 19
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getVelocityX()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityX:F

    return v0
.end method

.method public final getVelocityY()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityY:F

    return v0
.end method

.method protected onCancel()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getState()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 221
    sget-object v4, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p1, v5}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    .line 222
    sget-object v4, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p1, v5}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    goto :goto_0

    .line 212
    :cond_0
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    .line 213
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    .line 216
    sget-object v4, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p1, v5}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    .line 217
    sget-object v4, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p1, v5}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    .line 218
    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iput v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    .line 219
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    :goto_0
    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minPointers:I

    if-lt v4, v5, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->resetProgress()V

    const/4 v4, 0x0

    .line 226
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetX:F

    .line 227
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->offsetY:F

    .line 228
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityX:F

    .line 229
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityY:F

    .line 230
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 231
    sget-object v5, Lcom/swmansion/gesturehandler/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;

    # invokes: Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;->addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    invoke-static {v5, v4, p1}, Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 232
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->begin()V

    .line 234
    iget-wide v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateAfterLongPress:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 235
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 236
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateAfterLongPress:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_3

    .line 241
    sget-object v5, Lcom/swmansion/gesturehandler/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;

    # invokes: Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;->addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    invoke-static {v5, v4, p1}, Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 242
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 243
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityX:F

    .line 244
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityY:F

    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v1, v4, :cond_5

    if-ne v0, v5, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->end()V

    goto :goto_2

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->fail()V

    goto :goto_2

    :cond_5
    if-ne v1, v3, :cond_7

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->maxPointers:I

    if-le v3, v4, :cond_7

    if-ne v0, v5, :cond_6

    .line 255
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->cancel()V

    goto :goto_2

    .line 257
    :cond_6
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->fail()V

    goto :goto_2

    :cond_7
    if-ne v1, v2, :cond_8

    if-ne v0, v5, :cond_8

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minPointers:I

    if-ge p1, v1, :cond_8

    .line 263
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->fail()V

    goto :goto_2

    :cond_8
    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    .line 265
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->shouldFail()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->fail()V

    goto :goto_2

    .line 267
    :cond_9
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->shouldActivate()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 268
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->activate()V

    :cond_a
    :goto_2
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 289
    iput-object v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    :goto_1
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->resetConfig()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 69
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXStart:F

    const/4 v1, 0x1

    .line 70
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXEnd:F

    .line 71
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXStart:F

    .line 72
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXEnd:F

    .line 73
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYStart:F

    .line 74
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYEnd:F

    .line 75
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYStart:F

    .line 76
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYEnd:F

    .line 77
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityX:F

    .line 78
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityY:F

    .line 79
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocitySq:F

    .line 80
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->defaultMinDistSq:F

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minDistSq:F

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minPointers:I

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->maxPointers:I

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateAfterLongPress:J

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    return-void
.end method

.method public resetProgress()V
    .locals 1

    .line 294
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastX:F

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startX:F

    .line 295
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->lastY:F

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->startY:F

    return-void
.end method

.method public final setActivateAfterLongPress(J)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 136
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activateAfterLongPress:J

    return-object v0
.end method

.method public final setActiveOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 92
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXEnd:F

    return-object v0
.end method

.method public final setActiveOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 88
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetXStart:F

    return-object v0
.end method

.method public final setActiveOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 108
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYEnd:F

    return-object v0
.end method

.method public final setActiveOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 103
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 104
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->activeOffsetYStart:F

    return-object v0
.end method

.method public final setAverageTouches(Z)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 131
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 132
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->averageTouches:Z

    return-object v0
.end method

.method public final setFailOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 99
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 100
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXEnd:F

    return-object v0
.end method

.method public final setFailOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 95
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 96
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetXStart:F

    return-object v0
.end method

.method public final setFailOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 115
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 116
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYEnd:F

    return-object v0
.end method

.method public final setFailOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 112
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->failOffsetYStart:F

    return-object v0
.end method

.method public final setMaxPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 127
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 128
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->maxPointers:I

    return-object v0
.end method

.method public final setMinDist(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 119
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    mul-float p1, p1, p1

    .line 120
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minDistSq:F

    return-object v0
.end method

.method public final setMinPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 123
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 124
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minPointers:I

    return-object v0
.end method

.method public final setMinVelocity(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 142
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    mul-float p1, p1, p1

    .line 143
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocitySq:F

    return-object v0
.end method

.method public final setMinVelocityX(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 146
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 147
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityX:F

    return-object v0
.end method

.method public final setMinVelocityY(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 150
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    .line 151
    iput p1, v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->minVelocityY:F

    return-object v0
.end method
