.class public final Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\t2\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0006H\u0002J \u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u00020\u00122\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\t2\n\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002J \u0010\u001f\u001a\u00020\u00122\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\t2\n\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\rH\u0002J0\u0010#\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;",
        "",
        "()V",
        "DEFAULT_MIN_ALPHA_FOR_TRAVERSAL",
        "",
        "SIMULTANEOUS_GESTURE_HANDLER_LIMIT",
        "",
        "handlersComparator",
        "Ljava/util/Comparator;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "inverseMatrix",
        "Landroid/graphics/Matrix;",
        "matrixTransformCoords",
        "",
        "tempCoords",
        "tempPoint",
        "Landroid/graphics/PointF;",
        "canRunSimultaneously",
        "",
        "a",
        "b",
        "isFinished",
        "state",
        "isTransformedTouchPointInView",
        "x",
        "y",
        "child",
        "Landroid/view/View;",
        "shouldHandlerBeCancelledBy",
        "handler",
        "other",
        "shouldHandlerWaitForOther",
        "shouldHandlerlessViewBecomeTouchTarget",
        "view",
        "coords",
        "transformTouchPointToViewCoords",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "outLocalPoint",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isFinished(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;I)Z
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isFinished(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTransformedTouchPointInView(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;FFLandroid/view/View;)Z
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$transformTouchPointToViewCoords(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 0

    .line 506
    invoke-direct/range {p0 .. p5}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

.method private final canRunSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_1

    .line 577
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final isFinished(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_0

    .line 569
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    cmpg-float p1, v0, p2

    if-gtz p1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private final shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 581
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->hasCommonPointers(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 585
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->canRunSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eq p1, p2, :cond_3

    .line 591
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 594
    :cond_2
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private final shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_1

    .line 572
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z
    .locals 3

    .line 542
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 543
    aget v0, p2, v1

    aget p2, p2, v2

    invoke-direct {p0, v0, p2, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 2

    .line 553
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 554
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    .line 555
    invoke-virtual {p4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 556
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p4

    if-nez p4, :cond_0

    .line 557
    # getter for: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->matrixTransformCoords:[F
    invoke-static {}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->access$getMatrixTransformCoords$cp()[F

    move-result-object p4

    const/4 v0, 0x0

    .line 558
    aput p1, p4, v0

    const/4 p1, 0x1

    .line 559
    aput p2, p4, p1

    .line 560
    # getter for: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->access$getInverseMatrix$cp()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 561
    # getter for: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->access$getInverseMatrix$cp()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 562
    aget p2, p4, v0

    .line 563
    aget p1, p4, p1

    move v1, p2

    move p2, p1

    move p1, v1

    .line 565
    :cond_0
    invoke-virtual {p5, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
