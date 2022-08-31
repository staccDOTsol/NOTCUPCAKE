.class public final Lcom/swmansion/gesturehandler/PinchGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "PinchGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0017H\u0014J\u0008\u0010\u001e\u001a\u00020\u0017H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "()V",
        "focalPointX",
        "",
        "getFocalPointX",
        "()F",
        "focalPointY",
        "getFocalPointY",
        "gestureListener",
        "Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;",
        "<set-?>",
        "",
        "scale",
        "getScale",
        "()D",
        "scaleGestureDetector",
        "Lcom/swmansion/gesturehandler/ScaleGestureDetector;",
        "spanSlop",
        "startingSpan",
        "velocity",
        "getVelocity",
        "activate",
        "",
        "force",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "onReset",
        "resetProgress",
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


# instance fields
.field private final gestureListener:Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;

.field private scale:D

.field private scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

.field private spanSlop:F

.field private startingSpan:F

.field private velocity:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 20
    new-instance v0, Lcom/swmansion/gesturehandler/PinchGestureHandler$gestureListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler$gestureListener$1;-><init>(Lcom/swmansion/gesturehandler/PinchGestureHandler;)V

    check-cast v0, Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;

    return-void
.end method

.method public static final synthetic access$getSpanSlop$p(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F
    .locals 0

    .line 7
    iget p0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->spanSlop:F

    return p0
.end method

.method public static final synthetic access$getStartingSpan$p(Lcom/swmansion/gesturehandler/PinchGestureHandler;)F
    .locals 0

    .line 7
    iget p0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->startingSpan:F

    return p0
.end method

.method public static final synthetic access$setScale$p(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scale:D

    return-void
.end method

.method public static final synthetic access$setStartingSpan$p(Lcom/swmansion/gesturehandler/PinchGestureHandler;F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->startingSpan:F

    return-void
.end method

.method public static final synthetic access$setVelocity$p(Lcom/swmansion/gesturehandler/PinchGestureHandler;D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->velocity:D

    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->resetProgress()V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate(Z)V

    return-void
.end method

.method public final getFocalPointX()F
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/ScaleGestureDetector;->getFocusX()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getFocalPointY()F
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/ScaleGestureDetector;->getFocusY()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getScale()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scale:D

    return-wide v0
.end method

.method public final getVelocity()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->velocity:D

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->resetProgress()V

    .line 54
    new-instance v1, Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v0, v2}, Lcom/swmansion/gesturehandler/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/swmansion/gesturehandler/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    .line 55
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->spanSlop:F

    .line 57
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->begin()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->end()V

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->fail()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/ScaleGestureDetector;

    .line 81
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->resetProgress()V

    return-void
.end method

.method public resetProgress()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->velocity:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 86
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/PinchGestureHandler;->scale:D

    return-void
.end method
