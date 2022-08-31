.class Lcom/facebook/react/devsupport/DevSupportManagerBase$5;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$details:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$errorCookie:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$details:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 300
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 301
    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$500(Lcom/facebook/react/devsupport/DevSupportManagerBase;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$details:Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v0}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    .line 306
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v1, v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->setExceptionDetails(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V

    .line 308
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    sget-object v4, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    # invokes: Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$700(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 310
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    sget-object v3, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-interface {v1, v2, v0, v3}, Lcom/facebook/react/devsupport/RedBoxHandler;->handleRedbox(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;Lcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 312
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->resetReporting()V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
