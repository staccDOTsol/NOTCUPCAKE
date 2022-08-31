.class Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpTranscodeConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->this$0:Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;

    .line 66
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 67
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 68
    sget-object p1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

    return-void
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 75
    # invokes: Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;->shouldTranscode(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/util/TriState;
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;->access$000(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void

    .line 84
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->isLast(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mShouldTranscodeWhenFinished:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 86
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->this$0:Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    # invokes: Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;->transcodeLastResult(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    invoke-static {p2, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;->access$100(Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 60
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$WebpTranscodeConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
