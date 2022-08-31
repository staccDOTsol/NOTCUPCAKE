.class public final Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ScreenTransitionProgressEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent$Companion;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00142\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0014B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "Lcom/swmansion/rnscreens/events/ScreenAppearEvent;",
        "viewId",
        "",
        "mProgress",
        "",
        "mClosing",
        "",
        "mGoingForward",
        "mCoalescingKey",
        "",
        "(IFZZS)V",
        "dispatch",
        "",
        "rctEventEmitter",
        "Lcom/facebook/react/uimanager/events/RCTEventEmitter;",
        "getCoalescingKey",
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
.field public static final Companion:Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topTransitionProgress"


# instance fields
.field private final mClosing:Z

.field private final mCoalescingKey:S

.field private final mGoingForward:Z

.field private final mProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->Companion:Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent$Companion;

    return-void
.end method

.method public constructor <init>(IFZZS)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 9
    iput p2, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mProgress:F

    .line 10
    iput-boolean p3, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mClosing:Z

    .line 11
    iput-boolean p4, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mGoingForward:Z

    .line 12
    iput-short p5, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mCoalescingKey:S

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 4

    const-string v0, "rctEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 24
    iget v1, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mProgress:F

    float-to-double v1, v1

    const-string v3, "progress"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 25
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mClosing:Z

    const-string v2, "closing"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mGoingForward:Z

    const-string v2, "goingForward"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 19
    iget-short v0, p0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;->mCoalescingKey:S

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topTransitionProgress"

    return-object v0
.end method
