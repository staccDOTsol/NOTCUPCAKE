.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "RNGestureHandlerStateChangeEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016JE\u0010\u000f\u001a\u00020\u0008\"\u000e\u0008\u0000\u0010\u0010*\u0008\u0012\u0004\u0012\u0002H\u00100\u00112\u0006\u0010\u0012\u001a\u0002H\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u0002H\u0010\u0018\u00010\u0017H\u0002\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "()V",
        "extraData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "canCoalesce",
        "",
        "dispatch",
        "",
        "rctEventEmitter",
        "Lcom/facebook/react/uimanager/events/RCTEventEmitter;",
        "getCoalescingKey",
        "",
        "getEventName",
        "",
        "init",
        "T",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "handler",
        "newState",
        "",
        "oldState",
        "dataExtractor",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;",
        "(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V",
        "onDispose",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_NAME:Ljava/lang/String; = "onGestureHandlerStateChange"

.field private static final TOUCH_EVENTS_POOL_SIZE:I = 0x7


# instance fields
.field private extraData:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    .line 48
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEVENTS_POOL$cp()Landroidx/core/util/Pools$SynchronizedPool;
    .locals 1

    .line 16
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method public static final synthetic access$init(Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->init(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V

    return-void
.end method

.method private final init(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;II",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 25
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;II)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->extraData:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    const-string v0, "rctEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->getViewTag()I

    move-result v0

    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->extraData:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "onGestureHandlerStateChange"

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "onGestureHandlerStateChange"

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->extraData:Lcom/facebook/react/bridge/WritableMap;

    .line 30
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
