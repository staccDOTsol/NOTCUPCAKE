.class public interface abstract Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;
.super Ljava/lang/Object;
.source "NativeViewGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeViewGestureHandlerHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0007H\u0016J\u0014\u0010\n\u001a\u00020\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "",
        "afterGestureEnd",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "canBegin",
        "",
        "handleEventBeforeActivation",
        "shouldCancelRootViewGestureHandlerIfNecessary",
        "shouldRecognizeSimultaneously",
        "handler",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "wantsToHandleEventBeforeActivation",
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


# virtual methods
.method public abstract afterGestureEnd(Landroid/view/MotionEvent;)V
.end method

.method public abstract canBegin()Z
.end method

.method public abstract handleEventBeforeActivation(Landroid/view/MotionEvent;)V
.end method

.method public abstract shouldCancelRootViewGestureHandlerIfNecessary()Z
.end method

.method public abstract shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract wantsToHandleEventBeforeActivation()Z
.end method
