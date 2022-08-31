.class public Lcom/facebook/react/views/image/ReactImageView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "ReactImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;,
        Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;
    }
.end annotation


# static fields
.field public static final REMOTE_IMAGE_FADE_DURATION_MS:I = 0x12c

.field public static final REMOTE_TRANSPARENT_BITMAP_URI:Ljava/lang/String; = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="

.field private static sComputedCornerRadii:[F

.field private static final sInverse:Landroid/graphics/Matrix;

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sTileMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

.field private mBorderColor:I

.field private mBorderCornerRadii:[F

.field private mBorderRadius:F

.field private mBorderWidth:F

.field private mCachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

.field private mCallerContext:Ljava/lang/Object;

.field private mControllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

.field private mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

.field private final mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

.field private mFadeDurationMs:I

.field private mGlobalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

.field private mHeaders:Lcom/facebook/react/bridge/ReadableMap;

.field private mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

.field private mIsDirty:Z

.field private mIterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

.field private mLoadingImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayColor:I

.field private mProgressiveRenderingEnabled:Z

.field private mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

.field private mRoundedCornerPostprocessor:Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;

.field private mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mTilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 77
    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->sComputedCornerRadii:[F

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->sMatrix:Landroid/graphics/Matrix;

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->sInverse:Landroid/graphics/Matrix;

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->sTileMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V
    .locals 1

    .line 224
    invoke-static {p1}, Lcom/facebook/react/views/image/ReactImageView;->buildHierarchy(Landroid/content/Context;)Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 92
    sget-object p1, Lcom/facebook/react/views/image/ImageResizeMethod;->AUTO:Lcom/facebook/react/views/image/ImageResizeMethod;

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    .line 184
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    const/4 p1, 0x0

    .line 191
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundColor:I

    const/high16 p1, 0x7fc00000    # NaNf

    .line 195
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderRadius:F

    .line 197
    invoke-static {}, Lcom/facebook/react/views/image/ImageResizeMode;->defaultValue()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 198
    invoke-static {}, Lcom/facebook/react/views/image/ImageResizeMode;->defaultTileMode()Landroid/graphics/Shader$TileMode;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mTileMode:Landroid/graphics/Shader$TileMode;

    const/4 p1, -0x1

    .line 208
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mFadeDurationMs:I

    .line 225
    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 226
    iput-object p3, p0, Lcom/facebook/react/views/image/ReactImageView;->mGlobalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    .line 227
    iput-object p4, p0, Lcom/facebook/react/views/image/ReactImageView;->mCallerContext:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Matrix;
    .locals 1

    .line 70
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->sMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method static synthetic access$200()Landroid/graphics/Matrix;
    .locals 1

    .line 70
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->sInverse:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300()[F
    .locals 1

    .line 70
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->sComputedCornerRadii:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/views/image/ReactImageView;[F)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/views/image/ReactImageView;->getCornerRadii([F)V

    return-void
.end method

.method static synthetic access$500()Landroid/graphics/Matrix;
    .locals 1

    .line 70
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->sTileMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/react/views/image/ReactImageView;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/views/image/ReactImageView;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/react/views/imagehelper/ImageSource;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-object p0
.end method

.method private static buildHierarchy(Landroid/content/Context;)Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
    .locals 1

    .line 214
    new-instance v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    const/4 p0, 0x0

    .line 215
    invoke-static {p0}, Lcom/facebook/drawee/generic/RoundingParams;->fromCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object p0

    return-object p0
.end method

.method private getCornerRadii([F)V
    .locals 3

    .line 458
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderRadius:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    .line 463
    :goto_1
    aput v1, p1, v2

    .line 465
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aget v1, v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 467
    :goto_2
    aput v1, p1, v2

    .line 469
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    aget v1, v1, v2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aget v1, v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    .line 471
    :goto_3
    aput v1, p1, v2

    .line 473
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    aget v1, v1, v2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 474
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aget v0, v0, v2

    .line 475
    :cond_4
    aput v0, p1, v2

    return-void
.end method

.method private hasMultipleSources()Z
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTiled()Z
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mTileMode:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSourceImage()V
    .locals 3

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 658
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;->getBestSourceForSize(IILjava/util/List;)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;->getBestResult()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 665
    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;->getBestResultInCache()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mCachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-void

    .line 669
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-void
.end method

.method private shouldResize(Lcom/facebook/react/views/imagehelper/ImageSource;)Z
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    sget-object v1, Lcom/facebook/react/views/image/ImageResizeMethod;->AUTO:Lcom/facebook/react/views/image/ImageResizeMethod;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 677
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/util/UriUtil;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 679
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    sget-object v0, Lcom/facebook/react/views/image/ImageResizeMethod;->RESIZE:Lcom/facebook/react/views/image/ImageResizeMethod;

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private shouldUseRoundedCornerPostprocessing()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableRoundedCornerPostprocessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private warnImageSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maybeUpdateView()V
    .locals 10

    .line 483
    iget-boolean v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    return-void

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->setSourceImage()V

    .line 493
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-nez v0, :cond_3

    return-void

    .line 497
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/react/views/image/ReactImageView;->shouldResize(Lcom/facebook/react/views/imagehelper/ImageSource;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    return-void

    .line 503
    :cond_5
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    return-void

    .line 508
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 509
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 511
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 512
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 515
    :cond_8
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mLoadingImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 516
    sget-object v3, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 519
    :cond_9
    sget-object v2, Lcom/facebook/react/views/image/ReactImageView;->sComputedCornerRadii:[F

    invoke-direct {p0, v2}, Lcom/facebook/react/views/image/ReactImageView;->getCornerRadii([F)V

    .line 521
    invoke-virtual {v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    .line 522
    sget-object v3, Lcom/facebook/react/views/image/ReactImageView;->sComputedCornerRadii:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v7, v3, v6

    const/4 v8, 0x2

    aget v8, v3, v8

    const/4 v9, 0x3

    aget v3, v3, v9

    invoke-virtual {v2, v5, v7, v8, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 528
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    if-eqz v3, :cond_a

    .line 529
    iget v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderColor:I

    iget v7, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderWidth:F

    invoke-virtual {v3, v5, v7}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->setBorder(IF)V

    .line 530
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    invoke-virtual {v2}, Lcom/facebook/drawee/generic/RoundingParams;->getCornersRadii()[F

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->setRadii([F)V

    .line 531
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 533
    :cond_a
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->shouldUseRoundedCornerPostprocessing()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 534
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 536
    :cond_b
    iget v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderColor:I

    iget v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderWidth:F

    invoke-virtual {v2, v3, v5}, Lcom/facebook/drawee/generic/RoundingParams;->setBorder(IF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 537
    iget v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mOverlayColor:I

    if-eqz v3, :cond_c

    .line 538
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setOverlayColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto :goto_0

    .line 541
    :cond_c
    sget-object v3, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundingMethod(Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 543
    :goto_0
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 545
    iget v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mFadeDurationMs:I

    if-ltz v2, :cond_d

    goto :goto_1

    .line 547
    :cond_d
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {v2}, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_1

    :cond_e
    const/16 v2, 0x12c

    .line 544
    :goto_1
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setFadeDuration(I)V

    .line 549
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 550
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mRoundedCornerPostprocessor:Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;

    if-eqz v3, :cond_f

    .line 551
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_f
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mIterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    if-eqz v3, :cond_10

    .line 554
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_10
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mTilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    if-eqz v3, :cond_11

    .line 557
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_11
    invoke-static {v2}, Lcom/facebook/react/views/image/MultiPostprocessor;->from(Ljava/util/List;)Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v2

    if-eqz v0, :cond_12

    .line 561
    new-instance v0, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v5

    invoke-direct {v0, v3, v5}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    goto :goto_2

    :cond_12
    const/4 v0, 0x0

    .line 563
    :goto_2
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 564
    invoke-virtual {v3}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 565
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setPostprocessor(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 566
    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setAutoRotateEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mProgressiveRenderingEnabled:Z

    .line 568
    invoke-virtual {v3, v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 570
    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mHeaders:Lcom/facebook/react/bridge/ReadableMap;

    .line 571
    invoke-static {v3, v5}, Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;->fromBuilderWithHeaders(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;

    move-result-object v3

    .line 573
    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mGlobalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    if-eqz v5, :cond_13

    .line 574
    iget-object v7, p0, Lcom/facebook/react/views/image/ReactImageView;->mImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {v7}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/facebook/react/views/image/GlobalImageLoadListener;->onLoadAttempt(Landroid/net/Uri;)V

    .line 578
    :cond_13
    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 580
    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 581
    invoke-virtual {v5, v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/react/views/image/ReactImageView;->mCallerContext:Ljava/lang/Object;

    .line 582
    invoke-virtual {v5, v7}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v5

    .line 583
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v5

    .line 584
    invoke-virtual {v5, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 586
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->mCachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-eqz v3, :cond_14

    .line 588
    invoke-virtual {v3}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 589
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setPostprocessor(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 590
    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 591
    invoke-virtual {v0, v6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setAutoRotateEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mProgressiveRenderingEnabled:Z

    .line 592
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 594
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 597
    :cond_14
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mControllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_15

    .line 598
    new-instance v0, Lcom/facebook/drawee/controller/ForwardingControllerListener;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;-><init>()V

    .line 599
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 600
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mControllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 601
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    goto :goto_3

    .line 602
    :cond_15
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mControllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_16

    .line 603
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    goto :goto_3

    :cond_16
    if-eqz v0, :cond_17

    .line 605
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 608
    :cond_17
    :goto_3
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    if-eqz v0, :cond_18

    .line 609
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)V

    .line 612
    :cond_18
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/image/ReactImageView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 613
    iput-boolean v4, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    .line 617
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDraweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/GenericDraweeView;->onSizeChanged(IIII)V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 631
    iget-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    .line 632
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateView()V

    :cond_2
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 305
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 306
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundColor:I

    .line 307
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    invoke-direct {v0, p1}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBackgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 2

    .line 294
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    goto :goto_0

    .line 298
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;-><init>(II)V

    iput-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    :goto_0
    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 313
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderColor:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderColor:I

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 335
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderRadius:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderRadius:F

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 343
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    const/high16 v1, 0x7fc00000    # NaNf

    .line 344
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aget v0, v0, p2

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderCornerRadii:[F

    aput p1, v0, p2

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_1
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 327
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    .line 328
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderWidth:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mBorderWidth:F

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mControllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    const/4 p1, 0x1

    .line 623
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    .line 624
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateView()V

    return-void
.end method

.method public setDefaultSource(Ljava/lang/String;)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 432
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setFadeDuration(I)V
    .locals 0

    .line 453
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mFadeDurationMs:I

    return-void
.end method

.method public setHeaders(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mHeaders:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method

.method public setLoadingIndicatorSource(Ljava/lang/String;)V
    .locals 2

    .line 438
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 440
    new-instance v0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    const/16 v1, 0x3e8

    invoke-direct {v0, p1, v1}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mLoadingImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 442
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mLoadingImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 443
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_1
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 320
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 321
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mOverlayColor:I

    const/4 p1, 0x1

    .line 322
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setProgressiveRenderingEnabled(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mProgressiveRenderingEnabled:Z

    return-void
.end method

.method public setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    if-eq v0, p1, :cond_0

    .line 379
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mResizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method

.method public setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eq v0, p1, :cond_1

    .line 355
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 356
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->shouldUseRoundedCornerPostprocessing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 357
    new-instance p1, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;

    invoke-direct {p1, p0, v0}, Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;-><init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/views/image/ReactImageView$1;)V

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mRoundedCornerPostprocessor:Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;

    goto :goto_0

    .line 359
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mRoundedCornerPostprocessor:Lcom/facebook/react/views/image/ReactImageView$RoundedCornerPostprocessor;

    :goto_0
    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_1
    return-void
.end method

.method public setShouldNotifyLoadEvents(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 242
    new-instance v0, Lcom/facebook/react/views/image/ReactImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/views/image/ReactImageView$1;-><init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mDownloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    .line 289
    :goto_1
    iput-boolean v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    return-void
.end method

.method public setSource(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 14

    .line 385
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 387
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    const-string v3, "uri"

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    .line 393
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 394
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    new-instance v2, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 398
    invoke-direct {p0, p1}, Lcom/facebook/react/views/image/ReactImageView;->warnImageSource(Ljava/lang/String;)V

    goto :goto_2

    .line 401
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 402
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 403
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 404
    new-instance v13, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 406
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v5, "width"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v5, "height"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-object v5, v13

    move-object v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;DD)V

    .line 407
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-direct {p0, v12}, Lcom/facebook/react/views/image/ReactImageView;->warnImageSource(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_3
    :goto_1
    new-instance p1, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="

    invoke-direct {p1, v2, v3}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 420
    :cond_5
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 422
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->mSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 424
    :cond_6
    iput-boolean v1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    return-void
.end method

.method public setTileMode(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mTileMode:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_1

    .line 367
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 368
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 369
    new-instance p1, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    invoke-direct {p1, p0, v0}, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;-><init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/views/image/ReactImageView$1;)V

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mTilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    goto :goto_0

    .line 371
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mTilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    :goto_0
    const/4 p1, 0x1

    .line 373
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_1
    return-void
.end method

.method public updateCallerContext(Ljava/lang/Object;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->mCallerContext:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mCallerContext:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->mIsDirty:Z

    :cond_0
    return-void
.end method
