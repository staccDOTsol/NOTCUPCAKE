.class final Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;
.super Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.source "RNGestureHandlerModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManualGestureHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
        "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
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
            "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 314
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>()V

    .line 315
    const-class v0, Lcom/swmansion/gesturehandler/ManualGestureHandler;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;->type:Ljava/lang/Class;

    const-string v0, "ManualGestureHandler"

    .line 316
    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/ManualGestureHandler;

    move-result-object p1

    check-cast p1, Lcom/swmansion/gesturehandler/GestureHandler;

    return-object p1
.end method

.method public create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/ManualGestureHandler;
    .locals 0

    .line 319
    new-instance p1, Lcom/swmansion/gesturehandler/ManualGestureHandler;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/ManualGestureHandler;-><init>()V

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/ManualGestureHandler;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;->type:Ljava/lang/Class;

    return-object v0
.end method
