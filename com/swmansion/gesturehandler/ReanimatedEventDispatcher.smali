.class public final Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;
.super Ljava/lang/Object;
.source "ReanimatedEventDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u0004\"\u000e\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u0002H\u00050\u00062\u0006\u0010\u0007\u001a\u0002H\u00052\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;",
        "",
        "()V",
        "sendEvent",
        "",
        "T",
        "Lcom/facebook/react/uimanager/events/Event;",
        "event",
        "reactApplicationContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/uimanager/events/Event;Lcom/facebook/react/bridge/ReactContext;)V",
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
.field public static final INSTANCE:Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;->INSTANCE:Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/facebook/react/uimanager/events/Event;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/events/Event<",
            "TT;>;>(TT;",
            "Lcom/facebook/react/bridge/ReactContext;",
            ")V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reactApplicationContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
