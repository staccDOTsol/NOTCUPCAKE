.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher$1;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher$1;->this$1:Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateUpdate()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 1018
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 1019
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher$1;->this$1:Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;

    # getter for: Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;
    invoke-static {v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->access$100(Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;)Lcom/facebook/react/views/textinput/ReactEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->incrementAndGetEventCounter()I

    move-result v1

    const-string v2, "mostRecentEventCount"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1020
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher$1;->this$1:Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;

    # getter for: Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;
    invoke-static {v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->access$100(Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;)Lcom/facebook/react/views/textinput/ReactEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v1

    const-string v2, "opaqueCacheId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
