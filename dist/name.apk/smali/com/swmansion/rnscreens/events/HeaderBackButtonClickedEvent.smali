.class public final Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "HeaderBackButtonClickedEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/swmansion/rnscreens/events/ScreenAppearEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "Lcom/swmansion/rnscreens/events/ScreenAppearEvent;",
        "viewId",
        "",
        "(I)V",
        "dispatch",
        "",
        "rctEventEmitter",
        "Lcom/facebook/react/uimanager/events/RCTEventEmitter;",
        "getCoalescingKey",
        "",
        "getEventName",
        "",
        "Companion",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topHeaderBackButtonClickedEvent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;->Companion:Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    const-string v0, "rctEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topHeaderBackButtonClickedEvent"

    return-object v0
.end method
