.class public Lcom/facebook/react/fabric/events/EventEmitterWrapper;
.super Ljava/lang/Object;
.source "EventEmitterWrapper.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private native invokeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
.end method

.method private native invokeUniqueEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
.end method

.method private isValid()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invoke(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 57
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 59
    :try_start_1
    new-instance p2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/facebook/react/bridge/NativeMap;

    .line 60
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->invokeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invokeUnique(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 75
    :try_start_1
    new-instance p2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/facebook/react/bridge/NativeMap;

    .line 76
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->invokeUniqueEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
