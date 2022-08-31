.class public Lcom/facebook/react/config/ReactFeatureFlags;
.super Ljava/lang/Object;
.source "ReactFeatureFlags.java"


# static fields
.field public static enableAggressiveEventEmitterCleanup:Z = false

.field public static enableEagerRootViewAttachment:Z = false

.field public static enableExperimentalStaticViewConfigs:Z = false

.field public static enableFabricLogs:Z = false

.field public static volatile enableFabricRenderer:Z = false

.field public static enableLockFreeEventDispatcher:Z = false

.field public static enableRoundedCornerPostprocessing:Z = false

.field public static enableRuntimeScheduler:Z = false

.field public static enableRuntimeSchedulerInTurboModule:Z = false

.field public static volatile enableTurboModulePromiseAsyncDispatch:Z = false

.field public static insertZReorderBarriersOnViewGroupChildren:Z = true

.field private static mapBufferSerializationEnabled:Z = false

.field public static useGlobalCallbackCleanupScopeUsingRetainJSCallback:Z = false

.field private static useOverflowInset:Z = false

.field public static useTurboModuleManagerCallbackCleanupScope:Z = false

.field public static volatile useTurboModules:Z = false

.field public static volatile warnOnLegacyNativeModuleSystemUse:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesUseOverflowInset()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useOverflowInset:Z

    return v0
.end method

.method public static isMapBufferSerializationEnabled()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->mapBufferSerializationEnabled:Z

    return v0
.end method

.method public static setMapBufferSerializationEnabled(Z)V
    .locals 0

    .line 81
    sput-boolean p0, Lcom/facebook/react/config/ReactFeatureFlags;->mapBufferSerializationEnabled:Z

    return-void
.end method

.method public static setUseOverflowInset(Z)V
    .locals 0

    .line 92
    sput-boolean p0, Lcom/facebook/react/config/ReactFeatureFlags;->useOverflowInset:Z

    return-void
.end method
