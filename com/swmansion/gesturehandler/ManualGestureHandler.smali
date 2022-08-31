.class public final Lcom/swmansion/gesturehandler/ManualGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "ManualGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "()V",
        "onHandle",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/ManualGestureHandler;->getState()I

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/ManualGestureHandler;->begin()V

    :cond_0
    return-void
.end method
