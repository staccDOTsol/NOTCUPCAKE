.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/views/textinput/ScrollWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactScrollWatcher"
.end annotation


# instance fields
.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousHoriz:I

.field private mPreviousVert:I

.field private mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

.field private mSurfaceId:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 1

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1215
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 1216
    # invokes: Lcom/facebook/react/views/textinput/ReactTextInputManager;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    invoke-static {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->access$000(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 1217
    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mSurfaceId:I

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 11

    .line 1222
    iget p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousHoriz:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousVert:I

    if-eq p3, p2, :cond_1

    .line 1223
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mSurfaceId:I

    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1226
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v1

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1234
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getWidth()I

    move-result v9

    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1235
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getHeight()I

    move-result v10

    move v3, p1

    move v4, p2

    .line 1224
    invoke-static/range {v0 .. v10}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(IILcom/facebook/react/views/scroll/ScrollEventType;IIFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object p3

    .line 1237
    iget-object p4, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-interface {p4, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1239
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousHoriz:I

    .line 1240
    iput p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousVert:I

    :cond_1
    return-void
.end method
