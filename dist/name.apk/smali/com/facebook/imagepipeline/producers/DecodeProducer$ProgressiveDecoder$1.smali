.class Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;


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

.field final synthetic val$maxBitmapSize:I

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$maxBitmapSize",
            "val$producerContext",
            "val$this$0"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput p4, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$maxBitmapSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 175
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # getter for: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_format"

    .line 175
    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    # getter for: Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabled:Z
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    # getter for: Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabledForNetwork:Z
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$200(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iget v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$maxBitmapSize:I

    .line 183
    invoke-static {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v0

    .line 182
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSampleSize(I)V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 192
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldDownsampleIfLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # invokes: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeIncreaseSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    # invokes: Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$400(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    :cond_4
    return-void
.end method
