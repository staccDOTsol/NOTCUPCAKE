.class Lcom/facebook/react/devsupport/DevSupportManagerBase$6;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$errorCookie:I

.field final synthetic val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    iput p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorCookie:I

    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$900(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # setter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1002(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/app/Activity;)Landroid/app/Activity;

    .line 356
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    new-instance v1, Lcom/facebook/react/devsupport/RedBoxDialog;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 357
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v3}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/react/devsupport/RedBoxDialog;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/devsupport/RedBoxHandler;)V

    .line 356
    # setter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$402(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    new-instance v1, Lcom/facebook/react/devsupport/RedBoxDialog;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 369
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v3}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/react/devsupport/RedBoxDialog;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/devsupport/RedBoxHandler;)V

    .line 368
    # setter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$402(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 377
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->setExceptionDetails(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V

    .line 379
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    iget v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorCookie:I

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$700(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 382
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    sget-object v1, Lcom/facebook/react/devsupport/interfaces/ErrorType;->NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    if-ne v0, v1, :cond_4

    .line 383
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    sget-object v3, Lcom/facebook/react/devsupport/interfaces/ErrorType;->NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/devsupport/RedBoxHandler;->handleRedbox(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;Lcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->resetReporting()V

    .line 386
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->show()V

    return-void

    .line 360
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch redbox because react activity is not available, here is the error that redbox would\'ve displayed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
