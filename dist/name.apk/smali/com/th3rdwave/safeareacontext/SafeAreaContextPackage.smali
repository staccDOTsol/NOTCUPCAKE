.class public final Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "SafeAreaContextPackage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;",
        "Lcom/facebook/react/TurboReactPackage;",
        "()V",
        "createViewManagers",
        "",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getModule",
        "Lcom/facebook/react/bridge/NativeModule;",
        "name",
        "",
        "getReactModuleInfoProvider",
        "Lcom/facebook/react/module/model/ReactModuleInfoProvider;",
        "react-native-safe-area-context_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$dMZFG7LkBBCHmZ6x1zYA5u8gAI0(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;->getReactModuleInfoProvider$lambda-0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method

.method private static final getReactModuleInfoProvider$lambda-0(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    const-string v0, "$reactModuleInfoMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/facebook/react/uimanager/ViewManager;

    .line 49
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;

    invoke-direct {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;-><init>()V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;

    invoke-direct {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;-><init>()V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RNCSafeAreaContext"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;

    invoke-direct {p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast p1, Lcom/facebook/react/bridge/NativeModule;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 16

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 24
    const-class v2, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    :goto_0
    if-ge v3, v0, :cond_1

    .line 26
    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 27
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    if-nez v5, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    .line 29
    new-instance v15, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 30
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 33
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 34
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->hasConstants()Z

    move-result v12

    .line 35
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v13

    const-class v5, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    move-object v7, v15

    .line 29
    invoke-direct/range {v7 .. v14}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v2, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
