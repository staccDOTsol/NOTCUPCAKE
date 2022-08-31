.class Lcom/facebook/soloader/SoLoader$TestOnlyUtils;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestOnlyUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetStatus()V
    .locals 2

    .line 632
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 633
    :try_start_0
    # getter for: Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$300()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 634
    # getter for: Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 635
    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void

    :catchall_0
    move-exception v1

    .line 636
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static setSoFileLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 0

    .line 627
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    return-void
.end method

.method static setSoSources([Lcom/facebook/soloader/SoSource;)V
    .locals 1

    .line 610
    # getter for: Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 612
    :try_start_0
    # setter for: Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;

    .line 613
    # getter for: Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    # getter for: Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    # getter for: Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 616
    throw p0
.end method
