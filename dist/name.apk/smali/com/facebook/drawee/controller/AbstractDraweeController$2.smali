.class Lcom/facebook/drawee/controller/AbstractDraweeController$2;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeController;->submitRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$wasImmediate:Z


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$wasImmediate",
            "val$id"
        }
    .end annotation

    .line 567
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$wasImmediate:Z

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$id:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/facebook/drawee/controller/AbstractDraweeController;->onFailureInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$200(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v5

    .line 573
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->hasMultipleResults()Z

    move-result v7

    .line 574
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result v4

    .line 575
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 577
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$id:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$wasImmediate:Z

    move-object v2, p1

    # invokes: Lcom/facebook/drawee/controller/AbstractDraweeController;->onNewResultInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZZ)V
    invoke-static/range {v0 .. v7}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$100(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZZ)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 580
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$id:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    # invokes: Lcom/facebook/drawee/controller/AbstractDraweeController;->onFailureInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$200(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 591
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    .line 592
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$2;->val$id:Ljava/lang/String;

    # invokes: Lcom/facebook/drawee/controller/AbstractDraweeController;->onProgressUpdateInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V
    invoke-static {v2, v3, p1, v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$300(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V

    return-void
.end method
