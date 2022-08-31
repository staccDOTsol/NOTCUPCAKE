.class public Lcom/facebook/react/modules/image/ImageLoaderModule;
.super Lcom/facebook/fbreact/specs/NativeImageLoaderAndroidSpec;
.source "ImageLoaderModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ImageLoader"
.end annotation


# static fields
.field private static final ERROR_GET_SIZE_FAILURE:Ljava/lang/String; = "E_GET_SIZE_FAILURE"

.field private static final ERROR_INVALID_URI:Ljava/lang/String; = "E_INVALID_URI"

.field private static final ERROR_PREFETCH_FAILURE:Ljava/lang/String; = "E_PREFETCH_FAILURE"

.field public static final NAME:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private final mCallerContext:Ljava/lang/Object;

.field private mCallerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

.field private final mEnqueuedRequestMonitor:Ljava/lang/Object;

.field private final mEnqueuedRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeImageLoaderAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    .line 50
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 56
    iput-object p0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeImageLoaderAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    .line 50
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 69
    iput-object p3, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

    .line 70
    iput-object p2, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 71
    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeImageLoaderAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    .line 50
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 61
    iput-object p2, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContext:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/image/ImageLoaderModule;I)Lcom/facebook/datasource/DataSource;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/image/ImageLoaderModule;->removeRequest(I)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/image/ImageLoaderModule;)Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p0

    return-object p0
.end method

.method private getCallerContext()Ljava/lang/Object;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 76
    invoke-interface {v0, v1, v1}, Lcom/facebook/react/views/image/ReactCallerContextFactory;->getOrCreateCallerContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mCallerContext:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private registerRequest(ILcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeRequest(I)Lcom/facebook/datasource/DataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/datasource/DataSource;

    .line 300
    iget-object v2, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 301
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public abortRequest(D)V
    .locals 0

    double-to-int p1, p1

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/image/ImageLoaderModule;->removeRequest(I)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageLoader"

    return-object v0
.end method

.method public getSize(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 108
    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getCallerContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 110
    new-instance v0, Lcom/facebook/react/modules/image/ImageLoaderModule$1;

    invoke-direct {v0, p0, p2}, Lcom/facebook/react/modules/image/ImageLoaderModule$1;-><init>(Lcom/facebook/react/modules/image/ImageLoaderModule;Lcom/facebook/react/bridge/Promise;)V

    .line 143
    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "E_INVALID_URI"

    const-string v0, "Cannot get the size of an image for an empty URI"

    .line 100
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSizeWithHeaders(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 166
    invoke-static {p1, p2}, Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;->fromBuilderWithHeaders(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;

    move-result-object p1

    .line 169
    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p2

    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getCallerContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 171
    new-instance p2, Lcom/facebook/react/modules/image/ImageLoaderModule$2;

    invoke-direct {p2, p0, p3}, Lcom/facebook/react/modules/image/ImageLoaderModule$2;-><init>(Lcom/facebook/react/modules/image/ImageLoaderModule;Lcom/facebook/react/bridge/Promise;)V

    .line 204
    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "E_INVALID_URI"

    const-string p2, "Cannot get the size of an image for an empty URI"

    .line 158
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequestMonitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 316
    iget-object v3, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/datasource/DataSource;

    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v3}, Lcom/facebook/datasource/DataSource;->close()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/modules/image/ImageLoaderModule;->mEnqueuedRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public prefetchImage(Ljava/lang/String;DLcom/facebook/react/bridge/Promise;)V
    .locals 1

    double-to-int p2, p2

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 229
    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p3

    invoke-direct {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getCallerContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 230
    new-instance p3, Lcom/facebook/react/modules/image/ImageLoaderModule$3;

    invoke-direct {p3, p0, p2, p4}, Lcom/facebook/react/modules/image/ImageLoaderModule$3;-><init>(Lcom/facebook/react/modules/image/ImageLoaderModule;ILcom/facebook/react/bridge/Promise;)V

    .line 257
    invoke-direct {p0, p2, p1}, Lcom/facebook/react/modules/image/ImageLoaderModule;->registerRequest(ILcom/facebook/datasource/DataSource;)V

    .line 258
    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "E_INVALID_URI"

    const-string p2, "Cannot prefetch an image for an empty URI"

    .line 221
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryCache(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 272
    new-instance v0, Lcom/facebook/react/modules/image/ImageLoaderModule$4;

    invoke-virtual {p0}, Lcom/facebook/react/modules/image/ImageLoaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/facebook/react/modules/image/ImageLoaderModule$4;-><init>(Lcom/facebook/react/modules/image/ImageLoaderModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    sget-object p1, Lcom/facebook/react/bridge/GuardedAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 288
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/modules/image/ImageLoaderModule$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
