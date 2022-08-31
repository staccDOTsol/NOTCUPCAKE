.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.super Ljava/lang/Object;
.source "RNGestureHandlerRootHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerRootHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerRootHelper.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000cJ\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000cJ\u0006\u0010\u001b\u001a\u00020\u0015J\u0008\u0010\u001c\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "wrappedView",
        "Landroid/view/ViewGroup;",
        "(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V",
        "jsGestureHandler",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "orchestrator",
        "Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;",
        "passingTouch",
        "",
        "rootView",
        "getRootView",
        "()Landroid/view/ViewGroup;",
        "shouldIntercept",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "handleSetJSResponder",
        "",
        "viewTag",
        "",
        "blockNativeResponder",
        "requestDisallowInterceptTouchEvent",
        "disallowIntercept",
        "tearDown",
        "tryCancelAllHandlers",
        "Companion",
        "RootViewGestureHandler",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

.field private static final MIN_ALPHA_FOR_TOUCH:F = 0.1f


# instance fields
.field private final context:Lcom/facebook/react/bridge/ReactContext;

.field private final jsGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private final orchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

.field private passingTouch:Z

.field private final rootView:Landroid/view/ViewGroup;

.field private shouldIntercept:Z


# direct methods
.method public static synthetic $r8$lambda$IeX4d62O2vf93B6AHIOJRlvH5wI(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->handleSetJSResponder$lambda-6(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrappedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->context:Lcom/facebook/react/bridge/ReactContext;

    .line 24
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 27
    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "context.getNativeModule(RNGestureHandlerModule::class.java)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 28
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    # invokes: Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;->findRootViewTag(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    invoke-static {v2, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;->access$findRootViewTag(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    const-string v3, "[GESTURE HANDLER] Initialize gesture handler for root view "

    .line 32
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactNative"

    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v2, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    .line 34
    move-object v3, v1

    check-cast v3, Lcom/swmansion/gesturehandler/GestureHandlerRegistry;

    new-instance v4, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-direct {v4}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;-><init>()V

    check-cast v4, Lcom/swmansion/gesturehandler/ViewConfigurationHelper;

    .line 33
    invoke-direct {v2, p2, v3, v4}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;-><init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V

    const p2, 0x3dcccccd    # 0.1f

    .line 35
    invoke-virtual {v2, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->setMinimumAlphaForTraversal(F)V

    .line 36
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    iput-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    .line 37
    new-instance p2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    invoke-direct {p2, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    neg-int v2, v0

    invoke-virtual {p2, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->setTag(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p2, Lcom/swmansion/gesturehandler/GestureHandler;

    iput-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    .line 39
    invoke-virtual {v1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    .line 40
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p2

    const/4 v2, 0x3

    invoke-virtual {v1, p2, v0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(III)Z

    .line 42
    invoke-virtual {p1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void

    :cond_1
    const-string p1, "Expect view tag to be set for "

    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public static final synthetic access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->shouldIntercept:Z

    return-void
.end method

.method private static final handleSetJSResponder$lambda-6(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    return-void
.end method

.method private final tryCancelAllHandlers()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 106
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    .line 95
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    .line 97
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->shouldIntercept:Z

    return p1
.end method

.method public final getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final handleSetJSResponder(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 114
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    if-nez p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    :cond_0
    return-void
.end method

.method public final tearDown()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    const-string v1, "[GESTURE HANDLER] Tearing down gesture handler registered for root view "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->context:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "context.getNativeModule(RNGestureHandlerModule::class.java)!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 51
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method
