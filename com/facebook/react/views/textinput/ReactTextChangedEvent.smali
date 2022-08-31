.class public Lcom/facebook/react/views/textinput/ReactTextChangedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextChangedEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topChange"


# instance fields
.field private mEventCount:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 33
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;->mText:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;->mEventCount:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;-><init>(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 45
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;->mText:Ljava/lang/String;

    const-string v2, "text"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;->mEventCount:I

    const-string v2, "eventCount"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topChange"

    return-object v0
.end method
