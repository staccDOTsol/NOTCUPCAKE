.class public abstract Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;
.super Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;
.source "ReactPackageTurboModuleManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    }
.end annotation


# instance fields
.field private final mPackageModuleInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/TurboReactPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/TurboReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackages:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 34
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/ReactPackage;

    .line 35
    instance-of v0, p2, Lcom/facebook/react/TurboReactPackage;

    if-eqz v0, :cond_0

    .line 36
    check-cast p2, Lcom/facebook/react/TurboReactPackage;

    .line 37
    iget-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/facebook/react/TurboReactPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/module/model/ReactModuleInfoProvider;->getReactModuleInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/TurboReactPackage;

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/module/model/ReactModuleInfo;

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->canOverrideExistingModule()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v3, p1, v4}, Lcom/facebook/react/TurboReactPackage;->getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 100
    :cond_2
    instance-of p1, v2, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    if-eqz p1, :cond_3

    .line 101
    check-cast v2, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    return-object v2

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getEagerInitModuleNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/TurboReactPackage;

    .line 112
    invoke-virtual {v2}, Lcom/facebook/react/TurboReactPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/react/module/model/ReactModuleInfoProvider;->getReactModuleInfos()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 114
    invoke-virtual {v3}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/facebook/react/module/model/ReactModuleInfo;->needsEagerInit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v3}, Lcom/facebook/react/module/model/ReactModuleInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLegacyCxxModule(Ljava/lang/String;)Lcom/facebook/react/bridge/CxxModuleWrapper;
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->resolveModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 67
    :cond_0
    instance-of v1, p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-nez v1, :cond_1

    return-object v0

    .line 71
    :cond_1
    check-cast p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    return-object p1
.end method

.method public getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->resolveModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method
