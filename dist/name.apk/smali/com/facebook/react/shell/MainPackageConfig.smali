.class public Lcom/facebook/react/shell/MainPackageConfig;
.super Ljava/lang/Object;
.source "MainPackageConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/shell/MainPackageConfig$Builder;
    }
.end annotation


# instance fields
.field private mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;


# direct methods
.method private constructor <init>(Lcom/facebook/react/shell/MainPackageConfig$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    # getter for: Lcom/facebook/react/shell/MainPackageConfig$Builder;->mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    invoke-static {p1}, Lcom/facebook/react/shell/MainPackageConfig$Builder;->access$000(Lcom/facebook/react/shell/MainPackageConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/shell/MainPackageConfig;->mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/shell/MainPackageConfig$Builder;Lcom/facebook/react/shell/MainPackageConfig$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/shell/MainPackageConfig;-><init>(Lcom/facebook/react/shell/MainPackageConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getFrescoConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/facebook/react/shell/MainPackageConfig;->mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-object v0
.end method
