.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;
.super Ljava/lang/Object;
.source "RNGestureHandlerStateChangeEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JC\u0010\n\u001a\u00020\u000b\"\u000e\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\r2\u0006\u0010\u000e\u001a\u0002H\u000c2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0013JC\u0010\u0014\u001a\u00020\u0005\"\u000e\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\r2\u0006\u0010\u000e\u001a\u0002H\u000c2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;",
        "",
        "()V",
        "EVENTS_POOL",
        "Landroidx/core/util/Pools$SynchronizedPool;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
        "EVENT_NAME",
        "",
        "TOUCH_EVENTS_POOL_SIZE",
        "",
        "createEventData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "T",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "handler",
        "dataExtractor",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;",
        "newState",
        "oldState",
        "(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;II)Lcom/facebook/react/bridge/WritableMap;",
        "obtain",
        "(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;II)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor<",
            "TT;>;II)",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "this"

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    const-string p2, "handlerTag"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "state"

    .line 68
    invoke-interface {v0, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "oldState"

    .line 69
    invoke-interface {v0, p1, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "createMap().apply {\n        dataExtractor?.extractEventData(handler, this)\n        putInt(\"handlerTag\", handler.tag)\n        putInt(\"state\", newState)\n        putInt(\"oldState\", oldState)\n      }"

    .line 65
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final obtain(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;II",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor<",
            "TT;>;)",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    # getter for: Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    invoke-static {}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->access$getEVENTS_POOL$cp()Landroidx/core/util/Pools$SynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    :cond_0
    # invokes: Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->init(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->access$init(Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V

    return-object v0
.end method
