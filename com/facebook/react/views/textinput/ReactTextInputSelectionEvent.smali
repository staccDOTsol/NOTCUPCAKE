.class Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputSelectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "topSelectionChange"


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 31
    iput p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;->mSelectionStart:I

    .line 32
    iput p4, p0, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;->mSelectionEnd:I

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 43
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 46
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;->mSelectionEnd:I

    const-string v3, "end"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 47
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;->mSelectionStart:I

    const-string v3, "start"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "selection"

    .line 49
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topSelectionChange"

    return-object v0
.end method
