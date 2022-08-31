.class public final Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;
.super Ljava/lang/Object;
.source "NativeViewGestureHandler.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/gesturehandler/NativeViewGestureHandler;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1",
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
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
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0

    .line 129
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->afterGestureEnd(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public canBegin()Z
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->canBegin(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public handleEventBeforeActivation(Landroid/view/MotionEvent;)V
    .locals 0

    .line 129
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->handleEventBeforeActivation(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public shouldCancelRootViewGestureHandlerIfNecessary()Z
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldCancelRootViewGestureHandlerIfNecessary(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 129
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1
.end method

.method public wantsToHandleEventBeforeActivation()Z
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->wantsToHandleEventBeforeActivation(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method
