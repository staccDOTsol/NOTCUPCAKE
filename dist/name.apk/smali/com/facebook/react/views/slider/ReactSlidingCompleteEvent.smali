.class public Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactSlidingCompleteEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topSlidingComplete"


# instance fields
.field private final mValue:D


# direct methods
.method public constructor <init>(ID)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;-><init>(IID)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 29
    iput-wide p3, p0, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->mValue:D

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getValue()D

    move-result-wide v1

    const-string v3, "value"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topSlidingComplete"

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->mValue:D

    return-wide v0
.end method
