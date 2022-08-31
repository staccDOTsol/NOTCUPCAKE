.class public Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;
.super Ljava/lang/Object;
.source "TurboModulePerfLogger.java"


# static fields
.field private static sIsSoLibraryLoaded:Z = false

.field private static sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Lcom/facebook/react/perflogger/NativeModulePerfLogger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 91
    sput-object p0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    .line 92
    invoke-static {}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->maybeLoadSoLibrary()V

    .line 93
    invoke-static {p0}, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->jniEnableCppLogging(Lcom/facebook/react/perflogger/NativeModulePerfLogger;)V

    :cond_0
    return-void
.end method

.method private static native jniEnableCppLogging(Lcom/facebook/react/perflogger/NativeModulePerfLogger;)V
.end method

.method private static declared-synchronized maybeLoadSoLibrary()V
    .locals 2

    const-class v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-boolean v1, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sIsSoLibraryLoaded:Z

    if-nez v1, :cond_0

    const-string v1, "turbomodulejsijni"

    .line 84
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 85
    sput-boolean v1, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sIsSoLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static moduleCreateCacheHit(Ljava/lang/String;I)V
    .locals 1

    .line 39
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateCacheHit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateConstructEnd(Ljava/lang/String;I)V
    .locals 1

    .line 51
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateConstructEnd(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateConstructStart(Ljava/lang/String;I)V
    .locals 1

    .line 45
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateConstructStart(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateEnd(Ljava/lang/String;I)V
    .locals 1

    .line 69
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateEnd(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateFail(Ljava/lang/String;I)V
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateSetUpEnd(Ljava/lang/String;I)V
    .locals 1

    .line 63
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateSetUpEnd(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateSetUpStart(Ljava/lang/String;I)V
    .locals 1

    .line 57
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateSetUpStart(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleCreateStart(Ljava/lang/String;I)V
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleCreateStart(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleDataCreateEnd(Ljava/lang/String;I)V
    .locals 1

    .line 27
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleDataCreateEnd(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static moduleDataCreateStart(Ljava/lang/String;I)V
    .locals 1

    .line 21
    sget-object v0, Lcom/facebook/react/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/perflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/perflogger/NativeModulePerfLogger;->moduleDataCreateStart(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
