.class final Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "RNGestureHandlerRootHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootViewGestureHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0000R\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V",
        "onCancel",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
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
.field final synthetic this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;


# direct methods
.method public constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 10

    .line 69
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 71
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 74
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/RootView;

    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/RootView;->onChildStartedNativeGesture(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->begin()V

    .line 61
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->end()V

    :cond_1
    return-void
.end method
