.class public Lcom/facebook/react/bridge/ModuleHolder;
.super Ljava/lang/Object;
.source "ModuleHolder.java"


# static fields
.field private static final sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mInitializable:Z

.field private final mInstanceKey:I

.field private mIsCreating:Z

.field private mIsInitializing:Z

.field private mModule:Lcom/facebook/react/bridge/NativeModule;

.field private final mName:Ljava/lang/String;

.field private mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/NativeModule;)V
    .locals 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    .line 67
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 68
    new-instance v9, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 70
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->canOverrideExistingModule()Z

    move-result v4

    const-class v1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    const-class v1, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    iput-object v9, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 78
    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 79
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object p1

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->NATIVE_MODULE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "NativeModule init: %s"

    .line 80
    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/module/model/ReactModuleInfo;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    .line 58
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->needsEagerInit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/facebook/react/bridge/ModuleHolder;->create()Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    :cond_0
    return-void
.end method

.method private create()Lcom/facebook/react/bridge/NativeModule;
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Creating an already created module."

    invoke-static {v0, v3}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 183
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v0, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    const-string v0, "ModuleHolder.createModule"

    const-wide/16 v3, 0x0

    .line 184
    invoke-static {v3, v4, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v5, "name"

    iget-object v6, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v5, v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 187
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v5, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->NATIVE_MODULE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v6, "NativeModule init: %s"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 188
    invoke-interface {v0, v5, v6, v7}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    const/4 v5, 0x0

    .line 192
    iput-object v5, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    .line 194
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 196
    iget-boolean v5, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 199
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 201
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/ModuleHolder;->doInitialize(Lcom/facebook/react/bridge/NativeModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v1, v2, v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 216
    invoke-static {v3, v4}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 199
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    const-string v1, "NativeModuleInitError"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create NativeModule \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 215
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v1, v2, v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 216
    invoke-static {v3, v4}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 217
    throw v0
.end method

.method private doInitialize(Lcom/facebook/react/bridge/NativeModule;)V
    .locals 5

    const-string v0, "ModuleHolder.initialize"

    const-wide/16 v1, 0x0

    .line 222
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "name"

    iget-object v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v3, v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 225
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v0, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 229
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v0, :cond_0

    .line 232
    iput-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 234
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 236
    :try_start_2
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->initialize()V

    .line 240
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 241
    :try_start_3
    iput-boolean v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    .line 242
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    :cond_1
    :goto_1
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {p1, v0, v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 246
    invoke-static {v1, v2}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    return-void

    :catchall_1
    move-exception p1

    .line 234
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 245
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v0, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 246
    invoke-static {v1, v2}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 247
    throw p1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/facebook/react/bridge/NativeModule;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCanOverrideExistingModule()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    invoke-virtual {v0}, Lcom/facebook/react/module/model/ReactModuleInfo;->canOverrideExistingModule()Z

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    invoke-virtual {v0}, Lcom/facebook/react/module/model/ReactModuleInfo;->className()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasConstants()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    invoke-virtual {v0}, Lcom/facebook/react/module/model/ReactModuleInfo;->hasConstants()Z

    move-result v0

    return v0
.end method

.method public getModule()Lcom/facebook/react/bridge/NativeModule;
    .locals 3

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-eqz v0, :cond_0

    .line 145
    monitor-exit p0

    return-object v0

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 150
    iput-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 154
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/facebook/react/bridge/ModuleHolder;->create()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_1
    iput-boolean v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_2
    monitor-enter p0

    .line 169
    :catch_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 171
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 176
    :cond_3
    :try_start_4
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 177
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 154
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized hasInstance()Z
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCxxModule()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    invoke-virtual {v0}, Lcom/facebook/react/module/model/ReactModuleInfo;->isCxxModule()Z

    move-result v0

    return v0
.end method

.method public isTurboModule()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mReactModuleInfo:Lcom/facebook/react/module/model/ReactModuleInfo;

    invoke-virtual {v0}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v0

    return v0
.end method

.method markInitializable()V
    .locals 3

    .line 91
    monitor-enter p0

    const/4 v0, 0x1

    .line 92
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    .line 93
    iget-object v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 96
    iget-object v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, v1}, Lcom/facebook/react/bridge/ModuleHolder;->doInitialize(Lcom/facebook/react/bridge/NativeModule;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 98
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
