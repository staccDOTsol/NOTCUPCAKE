.class final Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;
.super Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.source "RNGestureHandlerModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinchGestureHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "type",
        "Ljava/lang/Class;",
        "getType",
        "()Ljava/lang/Class;",
        "create",
        "context",
        "Landroid/content/Context;",
        "extractEventData",
        "",
        "handler",
        "eventData",
        "Lcom/facebook/react/bridge/WritableMap;",
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
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>()V

    .line 248
    const-class v0, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->type:Ljava/lang/Class;

    const-string v0, "PinchGestureHandler"

    .line 249
    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PinchGestureHandler;

    move-result-object p1

    check-cast p1, Lcom/swmansion/gesturehandler/GestureHandler;

    return-object p1
.end method

.method public create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PinchGestureHandler;
    .locals 0

    .line 252
    new-instance p1, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;-><init>()V

    return-object p1
.end method

.method public bridge synthetic extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/PinchGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public extractEventData(Lcom/swmansion/gesturehandler/PinchGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-super {p0, v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 258
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getScale()D

    move-result-wide v0

    const-string v2, "scale"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 259
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getFocalPointX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "focalX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 260
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getFocalPointY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "focalY"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 261
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getVelocity()D

    move-result-wide v0

    const-string p1, "velocity"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->type:Ljava/lang/Class;

    return-object v0
.end method
