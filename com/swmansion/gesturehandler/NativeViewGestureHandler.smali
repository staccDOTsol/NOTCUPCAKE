.class public final Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "NativeViewGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;,
        Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;,
        Lcom/swmansion/gesturehandler/NativeViewGestureHandler$EditTextHook;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0003\u0015\u0016\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u0008\u0010\r\u001a\u00020\tH\u0014J\u0008\u0010\u000e\u001a\u00020\tH\u0014J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u0014\u0010\u0012\u001a\u00020\u00042\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\u0014\u0010\u0014\u001a\u00020\u00042\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "()V",
        "disallowInterruption",
        "",
        "hook",
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "shouldActivateOnStart",
        "onCancel",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "onPrepare",
        "onReset",
        "resetConfig",
        "setDisallowInterruption",
        "setShouldActivateOnStart",
        "shouldBeCancelledBy",
        "handler",
        "shouldRecognizeSimultaneously",
        "Companion",
        "EditTextHook",
        "NativeViewGestureHandlerHook",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;

.field private static final defaultHook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;


# instance fields
.field private disallowInterruption:Z

.field private hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

.field private shouldActivateOnStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;

    .line 129
    new-instance v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 14
    sget-object v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 8

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 115
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 118
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->activate()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->end()V

    .line 85
    iget-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->afterGestureEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 88
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->shouldActivateOnStart:Z

    if-eqz v1, :cond_5

    .line 89
    sget-object v1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;

    # invokes: Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;->tryIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;->access$tryIntercept(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->activate()V

    goto :goto_1

    .line 93
    :cond_5
    sget-object v1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;

    # invokes: Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;->tryIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;->access$tryIntercept(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->activate()V

    goto :goto_1

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->wantsToHandleEventBeforeActivation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->handleEventBeforeActivation(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 100
    :cond_7
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result p1

    if-eq p1, v2, :cond_9

    .line 101
    iget-object p1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->canBegin()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 102
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->begin()V

    goto :goto_1

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->cancel()V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onPrepare()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    .line 72
    instance-of v1, v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    goto :goto_0

    .line 73
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/views/textinput/ReactEditText;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$EditTextHook;

    check-cast v0, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$EditTextHook;-><init>(Lcom/swmansion/gesturehandler/NativeViewGestureHandler;Lcom/facebook/react/views/textinput/ReactEditText;)V

    check-cast v1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 122
    sget-object v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$Companion$defaultHook$1;

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    return-void
.end method

.method public resetConfig()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->resetConfig()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->shouldActivateOnStart:Z

    .line 23
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->disallowInterruption:Z

    return-void
.end method

.method public final setDisallowInterruption(Z)Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
    .locals 1

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    .line 36
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->disallowInterruption:Z

    return-object v0
.end method

.method public final setShouldActivateOnStart(Z)Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
    .locals 1

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    .line 27
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->shouldActivateOnStart:Z

    return-object v0
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->disallowInterruption:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->disallowInterruption:Z

    if-eqz v0, :cond_1

    return v2

    .line 55
    :cond_1
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->disallowInterruption:Z

    xor-int/2addr v0, v1

    .line 56
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v4

    .line 57
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v5

    if-ne v5, v3, :cond_2

    if-ne v4, v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->getState()I

    move-result v4

    if-ne v4, v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;->shouldCancelRootViewGestureHandlerIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method
