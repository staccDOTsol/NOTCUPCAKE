.class public Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "DrawerStateChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topDrawerStateChanged"


# instance fields
.field private final mDrawerState:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 27
    iput p3, p0, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;->mDrawerState:I

    return-void
.end method


# virtual methods
.method public getDrawerState()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;->mDrawerState:I

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 41
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;->getDrawerState()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "drawerState"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topDrawerStateChanged"

    return-object v0
.end method
