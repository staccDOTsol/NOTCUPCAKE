.class public final Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;,
        Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureHandlerOrchestrator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureHandlerOrchestrator.kt\ncom/swmansion/gesturehandler/GestureHandlerOrchestrator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,604:1\n61#1,7:605\n61#1,7:612\n1#2:619\n*S KotlinDebug\n*F\n+ 1 GestureHandlerOrchestrator.kt\ncom/swmansion/gesturehandler/GestureHandlerOrchestrator\n*L\n86#1:605,7\n115#1:612,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0015\u0018\u0000 I2\u00020\u0001:\u0001IB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\u001e\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020\u001fH\u0002J\u0008\u0010%\u001a\u00020\u001fH\u0002J\u0008\u0010&\u001a\u00020\u001fH\u0002JS\u0010\'\u001a\u00020\n2\u0012\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r0\u000c2\u0006\u0010)\u001a\u00020\n2\'\u0010*\u001a#\u0012\u0019\u0012\u0017\u0012\u0002\u0008\u0003\u0018\u00010\r\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110+H\u0082\u0008\u00a2\u0006\u0002\u0010.J\u001c\u0010/\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u001f2\u0006\u00100\u001a\u000201H\u0002J \u00103\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\nH\u0002J\"\u00107\u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u00100\u001a\u0002012\u0006\u00108\u001a\u000205H\u0002J\u0010\u00109\u001a\u00020\u001f2\u0006\u00100\u001a\u000201H\u0002J \u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\nH\u0002J\u0014\u0010;\u001a\u00020\u00112\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\u0010\u0010<\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010=\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0010\u0010>\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J\u0014\u0010?\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002J\"\u0010@\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010A\u001a\u00020\n2\u0006\u0010B\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\u00112\u0006\u00100\u001a\u000201J\u001c\u0010D\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\"\u001a\u00020#H\u0002J \u0010E\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\nH\u0002J\u0008\u0010F\u001a\u00020\u001fH\u0002J \u0010G\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\nH\u0002J\u0014\u0010H\u001a\u00020\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;",
        "",
        "wrapperView",
        "Landroid/view/ViewGroup;",
        "handlerRegistry",
        "Lcom/swmansion/gesturehandler/GestureHandlerRegistry;",
        "viewConfigHelper",
        "Lcom/swmansion/gesturehandler/ViewConfigurationHelper;",
        "(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V",
        "activationIndex",
        "",
        "awaitingHandlers",
        "",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "[Lcom/swmansion/gesturehandler/GestureHandler;",
        "awaitingHandlersCount",
        "finishedHandlersCleanupScheduled",
        "",
        "gestureHandlers",
        "gestureHandlersCount",
        "handlersToCancel",
        "handlingChangeSemaphore",
        "isHandlingTouch",
        "minimumAlphaForTraversal",
        "",
        "getMinimumAlphaForTraversal",
        "()F",
        "setMinimumAlphaForTraversal",
        "(F)V",
        "preparedHandlers",
        "addAwaitingHandler",
        "",
        "handler",
        "canReceiveEvents",
        "view",
        "Landroid/view/View;",
        "cancelAll",
        "cleanupAwaitingHandlers",
        "cleanupFinishedHandlers",
        "compactHandlersIf",
        "handlers",
        "count",
        "predicate",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "([Lcom/swmansion/gesturehandler/GestureHandler;ILkotlin/jvm/functions/Function1;)I",
        "deliverEventToGestureHandler",
        "event",
        "Landroid/view/MotionEvent;",
        "deliverEventToGestureHandlers",
        "extractAncestorHandlers",
        "coords",
        "",
        "pointerId",
        "extractCoordsForView",
        "outputCoords",
        "extractGestureHandlers",
        "viewGroup",
        "hasOtherHandlerToWaitFor",
        "isClipping",
        "isViewAttachedUnderWrapper",
        "isViewOverflowingParent",
        "makeActive",
        "onHandlerStateChange",
        "newState",
        "prevState",
        "onTouchEvent",
        "recordHandlerIfNotPresent",
        "recordViewHandlersForPointer",
        "scheduleFinishedHandlersCleanup",
        "traverseWithPointerEvents",
        "tryActivate",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

.field private static final DEFAULT_MIN_ALPHA_FOR_TRAVERSAL:F = 0.0f

.field private static final SIMULTANEOUS_GESTURE_HANDLER_LIMIT:I = 0x14

.field private static final handlersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final inverseMatrix:Landroid/graphics/Matrix;

.field private static final matrixTransformCoords:[F

.field private static final tempCoords:[F

.field private static final tempPoint:Landroid/graphics/PointF;


# instance fields
.field private activationIndex:I

.field private final awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private awaitingHandlersCount:I

.field private finishedHandlersCleanupScheduled:Z

.field private final gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private gestureHandlersCount:I

.field private final handlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

.field private final handlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private handlingChangeSemaphore:I

.field private isHandlingTouch:Z

.field private minimumAlphaForTraversal:F

.field private final preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private final viewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

.field private final wrapperView:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$Hkr6HjGhzXFZDgR18hFr75UrpYs(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersComparator$lambda-13(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    .line 513
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempPoint:Landroid/graphics/PointF;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 514
    sput-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    .line 515
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    .line 516
    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempCoords:[F

    .line 517
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V
    .locals 1

    const-string v0, "wrapperView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    .line 12
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    .line 13
    iput-object p3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    const/16 p1, 0x14

    new-array p2, p1, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 22
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array p2, p1, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 23
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array p2, p1, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 24
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    new-array p1, p1, [Lcom/swmansion/gesturehandler/GestureHandler;

    .line 25
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method public static final synthetic access$getInverseMatrix$cp()Landroid/graphics/Matrix;
    .locals 1

    .line 10
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->inverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static final synthetic access$getMatrixTransformCoords$cp()[F
    .locals 1

    .line 10
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    return-object v0
.end method

.method private final addAwaitingHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 337
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 338
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v4, v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 342
    :cond_2
    :goto_1
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 343
    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    aput-object p1, v2, v0

    .line 345
    invoke-virtual {p1, v4}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    .line 346
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->activationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->activationIndex:I

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setActivationIndex(I)V

    return-void

    .line 342
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many recognizers"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final canReceiveEvents(Landroid/view/View;)Z
    .locals 1

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final cancelAll()V
    .locals 5

    .line 220
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 221
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v0, v2, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 225
    :cond_1
    :goto_1
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_3

    :goto_2
    add-int/lit8 v2, v1, 0x1

    .line 227
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    if-lt v2, v0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 230
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v0, v2, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    if-gez v1, :cond_4

    goto :goto_5

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method private final cleanupAwaitingHandlers()V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 614
    aget-object v5, v0, v2

    .line 116
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 615
    aget-object v2, v0, v2

    aput-object v2, v0, v3

    move v3, v5

    :cond_0
    if-lt v4, v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    return-void
.end method

.method private final cleanupFinishedHandlers()V
    .locals 8

    .line 72
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 73
    iget-object v5, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v5, v5, v0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    sget-object v6, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v7

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isFinished(I)Z
    invoke-static {v6, v7}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    const/4 v6, 0x0

    aput-object v6, v3, v0

    .line 77
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->reset()V

    .line 79
    invoke-virtual {v5, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->setActive(Z)V

    .line 80
    invoke-virtual {v5, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    const v0, 0x7fffffff

    .line 81
    invoke-virtual {v5, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setActivationIndex(I)V

    const/4 v3, 0x1

    :cond_0
    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 86
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    if-lez v3, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 607
    aget-object v7, v0, v4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 608
    aget-object v4, v0, v4

    aput-object v4, v0, v5

    move v5, v7

    :cond_4
    if-lt v6, v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 86
    :goto_4
    iput v5, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    .line 90
    :cond_7
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    return-void
.end method

.method private final compactHandlersIf([Lcom/swmansion/gesturehandler/GestureHandler;ILkotlin/jvm/functions/Function1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 63
    aget-object v3, p1, v0

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 64
    aget-object v0, p1, v0

    aput-object v0, p1, v1

    move v1, v3

    :cond_0
    if-lt v2, p2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private final deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isViewAttachedUnderWrapper(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->wantEvents()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 243
    sget-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempCoords:[F

    .line 244
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V

    .line 245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    .line 253
    aget v5, v1, v4

    const/4 v6, 0x1

    aget v1, v1, v6

    invoke-virtual {p2, v5, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 263
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getNeedsPointerData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->updatePointerData(Landroid/view/MotionEvent;)V

    .line 267
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 268
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->handle(Landroid/view/MotionEvent;)V

    .line 270
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 278
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getShouldResetProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 279
    invoke-virtual {p1, v4}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldResetProgress(Z)V

    .line 280
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->resetProgress()V

    .line 282
    :cond_5
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchHandlerUpdate(Landroid/view/MotionEvent;)V

    .line 285
    :cond_6
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getNeedsPointerData()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 286
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->updatePointerData(Landroid/view/MotionEvent;)V

    :cond_7
    if-eq v0, v6, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    goto :goto_1

    .line 292
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 293
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->stopTrackingPointer(I)V

    .line 297
    :cond_9
    :goto_1
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private final deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 4

    .line 205
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    .line 207
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v3, v0}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;II)V

    if-lez v0, :cond_1

    :goto_0
    add-int/lit8 v1, v3, 0x1

    .line 215
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->preparedHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v2, v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->deliverEventToGestureHandler(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V

    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final extractAncestorHandlers(Landroid/view/View;[FI)Z
    .locals 10

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 382
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 383
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 385
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/swmansion/gesturehandler/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    monitor-enter v4

    .line 387
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/gesturehandler/GestureHandler;

    .line 388
    invoke-virtual {v7}, Lcom/swmansion/gesturehandler/GestureHandler;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    aget v8, p2, v1

    aget v9, p2, v6

    invoke-virtual {v7, p1, v8, v9}, Lcom/swmansion/gesturehandler/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v2, "handler"

    .line 390
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v7, v2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/View;)V

    .line 391
    invoke-virtual {v7, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->startTrackingPointer(I)V

    const/4 v2, 0x1

    goto :goto_1

    .line 394
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    .line 398
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v2
.end method

.method private final extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V
    .locals 10

    .line 322
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    aput p1, p3, v2

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, p3, v1

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 329
    move-object v0, v7

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractCoordsForView(Landroid/view/View;Landroid/view/MotionEvent;[F)V

    .line 330
    sget-object p2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempPoint:Landroid/graphics/PointF;

    .line 331
    sget-object v4, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    aget v5, p3, v2

    aget v6, p3, v1

    move-object v8, p1

    move-object v9, p2

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    invoke-static/range {v4 .. v9}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$transformTouchPointToViewCoords(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 332
    iget p1, p2, Landroid/graphics/PointF;->x:F

    aput p1, p3, v2

    .line 333
    iget p1, p2, Landroid/graphics/PointF;->y:F

    aput p1, p3, v1

    return-void

    .line 327
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent is null? View is no longer in the tree"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final extractGestureHandlers(Landroid/view/MotionEvent;)V
    .locals 5

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 430
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 431
    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempCoords:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v0, 0x1

    aput p1, v2, v0

    .line 433
    iget-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, v2, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FI)Z

    .line 434
    iget-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2, v1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    return-void
.end method

.method private final extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z
    .locals 12

    .line 438
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 440
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    invoke-interface {v4, p1, v0}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->getChildInDrawingOrderAtIndex(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 441
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->canReceiveEvents(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    sget-object v4, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tempPoint:Landroid/graphics/PointF;

    .line 443
    sget-object v11, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    aget v6, p2, v2

    aget v7, p2, v1

    move-object v5, v11

    move-object v8, p1

    move-object v9, v0

    move-object v10, v4

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->transformTouchPointToViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    invoke-static/range {v5 .. v10}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$transformTouchPointToViewCoords(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    .line 444
    aget v5, p2, v2

    .line 445
    aget v6, p2, v1

    .line 446
    iget v7, v4, Landroid/graphics/PointF;->x:F

    aput v7, p2, v2

    .line 447
    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, p2, v1

    .line 449
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isClipping(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget v4, p2, v2

    aget v7, p2, v1

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isTransformedTouchPointInView(FFLandroid/view/View;)Z
    invoke-static {v11, v4, v7, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$isTransformedTouchPointInView(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 452
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->traverseWithPointerEvents(Landroid/view/View;[FI)Z

    move-result v0

    .line 454
    :goto_2
    aput v5, p2, v2

    .line 455
    aput v6, p2, v1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :goto_3
    return v2
.end method

.method private static final handlersComparator$lambda-13(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)I
    .locals 3

    .line 518
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActivationIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getActivationIndex()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    .line 524
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 528
    :cond_5
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isAwaiting()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 95
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v4, v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    sget-object v4, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v5

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isFinished(I)Z
    invoke-static {v4, v5}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;I)Z

    move-result v5

    if-nez v5, :cond_0

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    invoke-static {v4, p1, v2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private final isClipping(Landroid/view/View;)Z
    .locals 1

    .line 503
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->isViewClippingChildren(Landroid/view/ViewGroup;)Z

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

.method private final isViewAttachedUnderWrapper(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_2

    .line 316
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->wrapperView:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final isViewOverflowingParent(Landroid/view/View;)Z
    .locals 7

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 367
    sget-object v3, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->matrixTransformCoords:[F

    const/4 v4, 0x0

    .line 368
    aput v4, v3, v1

    const/4 v5, 0x1

    .line 369
    aput v4, v3, v5

    .line 370
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 371
    aget v2, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 372
    aget v3, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    cmpg-float v6, v2, v4

    if-ltz v6, :cond_2

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_2

    cmpg-float v2, v3, v4

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private final makeActive(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1, v1}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    const/4 v2, 0x1

    .line 165
    invoke-virtual {p1, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->setActive(Z)V

    .line 166
    invoke-virtual {p1, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldResetProgress(Z)V

    .line 167
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->activationIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->activationIndex:I

    invoke-virtual {p1, v3}, Lcom/swmansion/gesturehandler/GestureHandler;->setActivationIndex(I)V

    .line 171
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    if-lez v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, 0x1

    .line 172
    iget-object v7, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v4, v7, v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    sget-object v7, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    invoke-static {v7, v4, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    add-int/lit8 v8, v5, 0x1

    aput-object v4, v7, v5

    move v5, v8

    :cond_0
    if-lt v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v5, v2

    if-ltz v5, :cond_4

    :goto_2
    add-int/lit8 v3, v5, -0x1

    .line 178
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlersToCancel:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v4, v4, v5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    goto :goto_2

    .line 182
    :cond_4
    :goto_3
    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    sub-int/2addr v3, v2

    if-ltz v3, :cond_7

    :goto_4
    add-int/lit8 v2, v3, -0x1

    .line 183
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v4, v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    sget-object v4, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    invoke-static {v4, v3, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    .line 186
    invoke-virtual {v3, v1}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    :cond_5
    if-gez v2, :cond_6

    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_4

    .line 189
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 193
    invoke-virtual {p1, v3, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    if-eq v0, v3, :cond_8

    const/4 v2, 0x5

    .line 195
    invoke-virtual {p1, v2, v3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    if-eq v0, v2, :cond_8

    .line 197
    invoke-virtual {p1, v1, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    :cond_8
    return-void
.end method

.method private final recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 351
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 352
    iget-object v4, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v2, v4, v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 356
    :cond_2
    :goto_1
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    .line 357
    iput v3, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->gestureHandlersCount:I

    aput-object p1, v2, v0

    .line 358
    invoke-virtual {p1, v1}, Lcom/swmansion/gesturehandler/GestureHandler;->setActive(Z)V

    .line 359
    invoke-virtual {p1, v1}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    const v0, 0x7fffffff

    .line 360
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setActivationIndex(I)V

    .line 361
    invoke-virtual {p1, p2, p0}, Lcom/swmansion/gesturehandler/GestureHandler;->prepare(Landroid/view/View;Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;)V

    return-void

    .line 356
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too many recognizers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final recordViewHandlersForPointer(Landroid/view/View;[FI)Z
    .locals 8

    .line 406
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlerRegistry:Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerRegistry;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 407
    :cond_0
    monitor-enter v0

    .line 408
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/gesturehandler/GestureHandler;

    .line 409
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    aget v6, p2, v2

    aget v7, p2, v1

    invoke-virtual {v5, p1, v6, v7}, Lcom/swmansion/gesturehandler/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "handler"

    .line 410
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordHandlerIfNotPresent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/View;)V

    .line 411
    invoke-virtual {v5, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->startTrackingPointer(I)V

    const/4 v4, 0x1

    goto :goto_0

    .line 415
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit v0

    .line 420
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget v3, p2, v2

    const/4 v5, 0x0

    cmpg-float v6, v5, v3

    if-gtz v6, :cond_3

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aget v3, p2, v1

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_4

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 421
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isViewOverflowingParent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractAncestorHandlers(Landroid/view/View;[FI)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    return v1

    :catchall_0
    move-exception p1

    .line 407
    monitor-exit v0

    throw p1
.end method

.method private final scheduleFinishedHandlersCleanup()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isHandlingTouch:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    :goto_1
    return-void
.end method

.method private final traverseWithPointerEvents(Landroid/view/View;[FI)Z
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->viewConfigHelper:Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;->getPointerEventsConfigForView(Landroid/view/View;)Lcom/swmansion/gesturehandler/PointerEventsConfig;

    move-result-object v0

    sget-object v1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 488
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 489
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 492
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FI)Z

    move-result p3

    if-nez p3, :cond_5

    if-nez v0, :cond_5

    .line 493
    sget-object p3, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z
    invoke-static {p3, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 477
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 478
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/ViewGroup;[FI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FI)Z

    goto :goto_1

    .line 472
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->recordViewHandlersForPointer(Landroid/view/View;[FI)Z

    move-result p3

    if-nez p3, :cond_5

    .line 473
    sget-object p3, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z
    invoke-static {p3, p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method private final tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->hasOtherHandlerToWaitFor(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->addAwaitingHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->makeActive(Lcom/swmansion/gesturehandler/GestureHandler;)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getMinimumAlphaForTraversal()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    return v0
.end method

.method public final onHandlerStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;II)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    .line 123
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->isFinished(I)Z
    invoke-static {v0, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$isFinished(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 125
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlersCount:I

    if-lez v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 126
    iget-object v5, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->awaitingHandlers:[Lcom/swmansion/gesturehandler/GestureHandler;

    aget-object v3, v5, v3

    .line 127
    sget-object v5, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->Companion:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    invoke-static {v5, v3, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;->access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p2, v1, :cond_0

    .line 130
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    .line 131
    invoke-virtual {v3, v2}, Lcom/swmansion/gesturehandler/GestureHandler;->setAwaiting(Z)V

    goto :goto_1

    .line 134
    :cond_0
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V

    :cond_1
    :goto_1
    if-lt v4, v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_0

    .line 138
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupAwaitingHandlers()V

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 141
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->tryActivate(Lcom/swmansion/gesturehandler/GestureHandler;)V

    goto :goto_4

    :cond_5
    if-eq p3, v0, :cond_8

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_6
    if-nez p3, :cond_7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    .line 155
    :cond_7
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    goto :goto_4

    .line 143
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->isActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 144
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    goto :goto_4

    :cond_9
    if-ne p3, v0, :cond_a

    const/4 p3, 0x2

    .line 148
    invoke-virtual {p1, p2, p3}, Lcom/swmansion/gesturehandler/GestureHandler;->dispatchStateChange(II)V

    .line 157
    :cond_a
    :goto_4
    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    .line 158
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->scheduleFinishedHandlersCleanup()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isHandlingTouch:Z

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cancelAll()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->extractGestureHandlers(Landroid/view/MotionEvent;)V

    .line 44
    :goto_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->deliverEventToGestureHandlers(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->isHandlingTouch:Z

    .line 46
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->finishedHandlersCleanupScheduled:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->handlingChangeSemaphore:I

    if-nez p1, :cond_2

    .line 47
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->cleanupFinishedHandlers()V

    :cond_2
    return v0
.end method

.method public final setMinimumAlphaForTraversal(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->minimumAlphaForTraversal:F

    return-void
.end method
