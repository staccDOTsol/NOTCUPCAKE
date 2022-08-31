.class public Lcom/facebook/react/views/textinput/ReactTextInputEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topTextInput"


# instance fields
.field private mPreviousText:Ljava/lang/String;

.field private mRangeEnd:I

.field private mRangeStart:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 37
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mText:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mPreviousText:Ljava/lang/String;

    .line 39
    iput p5, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mRangeStart:I

    .line 40
    iput p6, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mRangeEnd:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/textinput/ReactTextInputEvent;-><init>(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 57
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 59
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mRangeStart:I

    int-to-double v2, v2

    const-string v4, "start"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 60
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mRangeEnd:I

    int-to-double v2, v2

    const-string v4, "end"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 62
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mText:Ljava/lang/String;

    const-string v3, "text"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->mPreviousText:Ljava/lang/String;

    const-string v3, "previousText"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "range"

    .line 64
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topTextInput"

    return-object v0
.end method
