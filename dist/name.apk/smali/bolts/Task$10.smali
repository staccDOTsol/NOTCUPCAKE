.class Lbolts/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lbolts/Task$10;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$10;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/Task$10;->val$ct:Lbolts/CancellationToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 651
    invoke-virtual {p0, p1}, Lbolts/Task$10;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lbolts/Task$10;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lbolts/Task$10;->val$ct:Lbolts/CancellationToken;

    # invokes: Lbolts/Task;->completeImmediately(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    invoke-static {v0, v1, p1, v2, v3}, Lbolts/Task;->access$000(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    const/4 p1, 0x0

    return-object p1
.end method
