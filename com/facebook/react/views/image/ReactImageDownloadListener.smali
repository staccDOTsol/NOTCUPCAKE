.class public Lcom/facebook/react/views/image/ReactImageDownloadListener;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "ReactImageDownloadListener.java"

# interfaces
.implements Lcom/facebook/drawee/controller/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/image/ReactImageDownloadListener$EmptyDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/drawee/drawable/ForwardingDrawable;",
        "Lcom/facebook/drawee/controller/ControllerListener<",
        "TINFO;>;"
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/facebook/react/views/image/ReactImageDownloadListener$EmptyDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/image/ReactImageDownloadListener$EmptyDrawable;-><init>(Lcom/facebook/react/views/image/ReactImageDownloadListener$1;)V

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    const/16 v0, 0x2710

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/image/ReactImageDownloadListener;->onProgressChange(II)V

    .line 33
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->onLevelChange(I)Z

    move-result p1

    return p1
.end method

.method public onProgressChange(II)V
    .locals 0

    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
