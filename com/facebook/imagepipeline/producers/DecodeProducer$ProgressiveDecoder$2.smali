.class Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

.field final synthetic val$decodeCancellationEnabled:Z

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$decodeCancellationEnabled",
            "val$this$0"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$decodeCancellationEnabled:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$decodeCancellationEnabled:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # invokes: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$700(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)V

    :cond_0
    return-void
.end method

.method public onIsIntermediateResultExpectedChanged()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # getter for: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # getter for: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$600(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    :cond_0
    return-void
.end method
