.class public Lcom/facebook/react/uimanager/events/NativeGestureUtil;
.super Ljava/lang/Object;
.source "NativeGestureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyNativeGestureEnded(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/uimanager/RootView;->onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/uimanager/RootView;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
