.class public interface abstract Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
.super Ljava/lang/Object;
.source "ImageOriginListener.java"


# virtual methods
.method public abstract onImageLoaded(Ljava/lang/String;IZLjava/lang/String;)V
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOrigin",
            "successful",
            "ultimateProducerName"
        }
    .end annotation
.end method
