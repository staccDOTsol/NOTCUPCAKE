.class public Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputKeyPressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topKeyPress"


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 29
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 40
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topKeyPress"

    return-object v0
.end method
