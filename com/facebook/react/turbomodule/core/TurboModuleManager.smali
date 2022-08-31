.class public Lcom/facebook/react/turbomodule/core/TurboModuleManager;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModule;
.implements Lcom/facebook/react/turbomodule/core/interfaces/TurboModuleRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;,
        Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;
    }
.end annotation


# static fields
.field private static volatile sIsSoLibraryLoaded:Z


# instance fields
.field private final mCxxModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

.field private final mEagerInitModuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mJavaModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

.field private final mTurboModuleCleanupLock:Ljava/lang/Object;

.field private mTurboModuleCleanupStarted:Z

.field private final mTurboModuleHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;)V
    .locals 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupStarted:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->maybeLoadSoLibrary()V

    .line 57
    move-object v3, p3

    check-cast v3, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    move-object v4, p4

    check-cast v4, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    sget-boolean v6, Lcom/facebook/react/config/ReactFeatureFlags;->useGlobalCallbackCleanupScopeUsingRetainJSCallback:Z

    sget-boolean v7, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModuleManagerCallbackCleanupScope:Z

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->initHybrid(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;ZZ)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 65
    invoke-direct {p0}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->installJSIBindings()V

    if-nez p2, :cond_0

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;->getEagerInitModuleNames()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mEagerInitModuleNames:Ljava/util/List;

    .line 70
    new-instance p1, Lcom/facebook/react/turbomodule/core/TurboModuleManager$1;

    invoke-direct {p1, p0, p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$1;-><init>(Lcom/facebook/react/turbomodule/core/TurboModuleManager;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;)V

    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mJavaModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

    .line 82
    new-instance p1, Lcom/facebook/react/turbomodule/core/TurboModuleManager$2;

    invoke-direct {p1, p0, p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$2;-><init>(Lcom/facebook/react/turbomodule/core/TurboModuleManager;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;)V

    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mCxxModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

    return-void
.end method

.method private getJavaModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 1

    .line 121
    invoke-virtual {p0, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    .line 122
    instance-of v0, p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private getLegacyCxxModule(Ljava/lang/String;)Lcom/facebook/react/bridge/CxxModuleWrapper;
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    .line 111
    instance-of v0, p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    check-cast p1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    return-object p1
.end method

.method private getModule(Ljava/lang/String;Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;Z)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 2

    .line 182
    monitor-enter p2

    .line 183
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->isDoneCreatingModule()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result p3

    invoke-static {p1, p3}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateCacheHit(Ljava/lang/String;I)V

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 191
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->isCreatingModule()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    .line 194
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->startCreatingModule()V

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 196
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p3, :cond_5

    .line 199
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result p3

    invoke-static {p1, p3}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateConstructStart(Ljava/lang/String;I)V

    .line 200
    iget-object p3, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mJavaModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

    invoke-interface {p3, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p3

    if-nez p3, :cond_3

    .line 203
    iget-object p3, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mCxxModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;

    invoke-interface {p3, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p3

    .line 206
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateConstructEnd(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateSetUpStart(Ljava/lang/String;I)V

    if-eqz p3, :cond_4

    .line 210
    monitor-enter p2

    .line 211
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->setModule(Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;)V

    .line 212
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-interface {p3}, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;->initialize()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 212
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 222
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateSetUpEnd(Ljava/lang/String;I)V

    .line 223
    monitor-enter p2

    .line 224
    :try_start_3
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->endCreatingModule()V

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 226
    monitor-exit p2

    return-object p3

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 231
    :cond_5
    monitor-enter p2

    .line 233
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->isCreatingModule()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_6

    .line 236
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 248
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 251
    :cond_7
    invoke-virtual {p2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :catchall_2
    move-exception p1

    .line 252
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 196
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method private native initHybrid(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;ZZ)Lcom/facebook/jni/HybridData;
.end method

.method private native installJSIBindings()V
.end method

.method private static declared-synchronized maybeLoadSoLibrary()V
    .locals 2

    const-class v0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;

    monitor-enter v0

    .line 345
    :try_start_0
    sget-boolean v1, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->sIsSoLibraryLoaded:Z

    if-nez v1, :cond_0

    const-string v1, "turbomodulejsijni"

    .line 346
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 347
    sput-boolean v1, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->sIsSoLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getEagerInitModuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mEagerInitModuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupStarted:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 144
    monitor-exit v0

    return-object p1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    new-instance v2, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;

    invoke-direct {v2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateStart(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 159
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;Z)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateEnd(Ljava/lang/String;I)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModuleId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->moduleCreateFail(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 156
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getModules()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;

    .line 264
    monitor-enter v2

    .line 266
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-object v1

    :catchall_1
    move-exception v0

    .line 260
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public hasModule(Ljava/lang/String;)Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 282
    monitor-enter p1

    .line 283
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 284
    monitor-exit p1

    return v0

    .line 286
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    .line 279
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 317
    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleCleanupStarted:Z

    .line 318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;

    const/4 v3, 0x0

    .line 330
    invoke-direct {p0, v2, v1, v3}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;Z)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v1}, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;->invalidate()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModuleHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 340
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void

    :catchall_0
    move-exception v1

    .line 318
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
