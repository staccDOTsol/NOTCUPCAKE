.class Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;
.super Ljava/lang/Object;
.source "ConstrainedExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/executors/ConstrainedExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;


# direct methods
.method private constructor <init>(Lcom/facebook/common/executors/ConstrainedExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/executors/ConstrainedExecutorService;Lcom/facebook/common/executors/ConstrainedExecutorService$1;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;-><init>(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "%s: worker finished; %d workers left"

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 174
    :cond_0
    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s: Worker has nothing to run"

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$400(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # invokes: Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V
    invoke-static {v0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$500(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    goto :goto_1

    .line 181
    :cond_1
    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 177
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$400(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # invokes: Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V
    invoke-static {v0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$500(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    goto :goto_2

    .line 181
    :cond_2
    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    # getter for: Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v4, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :goto_2
    throw v1
.end method
