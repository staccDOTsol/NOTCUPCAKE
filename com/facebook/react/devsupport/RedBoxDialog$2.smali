.class Lcom/facebook/react/devsupport/RedBoxDialog$2;
.super Ljava/lang/Object;
.source "RedBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/RedBoxDialog;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/RedBoxHandler;->isReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$000(Lcom/facebook/react/devsupport/RedBoxDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    const/4 v1, 0x1

    # setter for: Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$002(Lcom/facebook/react/devsupport/RedBoxDialog;Z)Z

    .line 86
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$300(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Reporting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$300(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$200(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mLineSeparator:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$500(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$100(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 94
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    .line 96
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 101
    # getter for: Lcom/facebook/react/devsupport/RedBoxDialog;->mReportCompletedListener:Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;
    invoke-static {p1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$700(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    .line 96
    invoke-interface/range {v1 .. v6}, Lcom/facebook/react/devsupport/RedBoxHandler;->reportRedbox(Landroid/content/Context;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;Ljava/lang/String;Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;)V

    :cond_1
    :goto_0
    return-void
.end method
