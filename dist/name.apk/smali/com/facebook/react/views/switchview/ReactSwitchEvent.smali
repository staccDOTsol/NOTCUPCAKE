.class Lcom/facebook/react/views/switchview/ReactSwitchEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactSwitchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/switchview/ReactSwitchEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topChange"


# instance fields
.field private final mIsChecked:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 29
    iput-boolean p3, p0, Lcom/facebook/react/views/switchview/ReactSwitchEvent;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchEvent;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchEvent;->getIsChecked()Z

    move-result v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topChange"

    return-object v0
.end method

.method public getIsChecked()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitchEvent;->mIsChecked:Z

    return v0
.end method
