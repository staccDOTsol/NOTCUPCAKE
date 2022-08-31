.class Lcom/facebook/react/views/textinput/ReactEditText$1;
.super Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.source "ReactEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 169
    iget-object p2, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p2, p1}, Lcom/facebook/react/views/textinput/ReactEditText;->setSelection(I)V

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # invokes: Lcom/facebook/react/views/textinput/ReactEditText;->requestFocusInternal()Z
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->access$000(Lcom/facebook/react/views/textinput/ReactEditText;)Z

    move-result p1

    return p1

    .line 173
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
