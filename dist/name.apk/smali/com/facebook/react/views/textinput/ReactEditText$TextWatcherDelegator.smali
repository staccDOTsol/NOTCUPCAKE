.class Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;
.super Ljava/lang/Object;
.source "ReactEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextWatcherDelegator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/views/textinput/ReactEditText$1;)V
    .locals 0

    .line 1071
    invoke-direct {p0, p1}, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;-><init>(Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromCacheUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 1106
    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromCacheUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 1076
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromCacheUpdate:Z

    if-nez v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v0, v0, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # getter for: Lcom/facebook/react/views/textinput/ReactEditText;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->access$200(Lcom/facebook/react/views/textinput/ReactEditText;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 1091
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 1095
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean p4, p1, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromJS:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean p4, p4, Lcom/facebook/react/views/textinput/ReactEditText;->mIsSettingTextFromState:Z

    if-nez p4, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    # invokes: Lcom/facebook/react/views/textinput/ReactEditText;->updateCachedSpannable(Z)V
    invoke-static {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->access$300(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    .line 1099
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$TextWatcherDelegator;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    # invokes: Lcom/facebook/react/views/textinput/ReactEditText;->onContentSizeChange()V
    invoke-static {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->access$400(Lcom/facebook/react/views/textinput/ReactEditText;)V

    return-void
.end method
