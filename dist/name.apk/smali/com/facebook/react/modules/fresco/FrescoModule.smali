.class public Lcom/facebook/react/modules/fresco/FrescoModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FrescoModule.java"

# interfaces
.implements Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FrescoModule"
    needsEagerInit = true
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "FrescoModule"

.field private static sHasBeenInitialized:Z = false


# instance fields
.field private final mClearOnDestroy:Z

.field private mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

.field private mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Z)V

    .line 82
    iput-object p2, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 101
    iput-boolean p2, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mClearOnDestroy:Z

    .line 102
    iput-object p3, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-void
.end method

.method private static getDefaultConfig(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 5

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 159
    new-instance v1, Lcom/facebook/react/modules/fresco/SystraceRequestListener;

    invoke-direct {v1}, Lcom/facebook/react/modules/fresco/SystraceRequestListener;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 166
    new-instance v3, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v3, p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 167
    new-instance v4, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v4, v3}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v2, v4}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 169
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpImagePipelineConfigFactory;->newBuilder(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    new-instance v2, Lcom/facebook/react/modules/fresco/ReactOkHttpNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/react/modules/fresco/ReactOkHttpNetworkFetcher;-><init>(Lokhttp3/OkHttpClient;)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-object v0
.end method

.method public static hasBeenInitialized()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/facebook/react/modules/fresco/FrescoModule;->sHasBeenInitialized:Z

    return v0
.end method


# virtual methods
.method public clearSensitiveData()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FrescoModule"

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 108
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 109
    invoke-static {}, Lcom/facebook/react/modules/fresco/FrescoModule;->hasBeenInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getDefaultConfig(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-static {v0, v1}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    const/4 v0, 0x1

    .line 115
    sput-boolean v0, Lcom/facebook/react/modules/fresco/FrescoModule;->sHasBeenInitialized:Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    if-eqz v0, :cond_2

    const-string v0, "ReactNative"

    const-string v1, "Fresco has already been initialized with a different config. The new Fresco configuration will be ignored!"

    .line 117
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    .line 202
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/facebook/react/modules/fresco/FrescoModule;->hasBeenInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->mClearOnDestroy:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method
