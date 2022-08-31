.class public Lcom/facebook/react/uimanager/events/ReactEventEmitter;
.super Ljava/lang/Object;
.source "ReactEventEmitter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ReactEventEmitter"


# instance fields
.field private mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

.field private mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 30
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 36
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private getEventEmitter(I)Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .locals 4

    .line 110
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object p1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get RCTEventEmitter from Context for reactTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - uiManagerType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - No active Catalyst instance!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string p1, "ReactEventEmitter"

    invoke-static {p1, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-object p1
.end method


# virtual methods
.method public receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 67
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    return-void
.end method

.method public receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V
    .locals 9

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    .line 138
    invoke-static {p2}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v2, v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    if-eqz v2, :cond_0

    move-object v1, v2

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 140
    invoke-interface/range {v1 .. v8}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 148
    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getEventEmitter(I)Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v1, v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-object v2, p6

    invoke-interface {v1, p2, p3, p6}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 151
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find EventEmitter for receiveEvent: SurfaceId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ReactTag["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] UIManagerType["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] EventName["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v1, "ReactEventEmitter"

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    const/4 v0, -0x1

    .line 59
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public receiveTouches(Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 5

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v0

    .line 89
    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v2, p1}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveTouches(Lcom/facebook/react/uimanager/events/TouchEvent;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 92
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getEventEmitter(I)Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->sendTouchesLegacy(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find EventEmitter for receivedTouches: ReactTag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] UIManagerType["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] EventName["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string p1, "ReactEventEmitter"

    .line 95
    invoke-static {p1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 3

    .line 77
    invoke-interface {p2}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 79
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v2, "target"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getEventEmitter(I)Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    :cond_1
    return-void
.end method

.method public register(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 0

    .line 46
    iput-object p2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-void
.end method

.method public register(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 0

    .line 41
    iput-object p2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    return-void
.end method

.method public unregister(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 51
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mRCTEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    goto :goto_0

    .line 53
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    :goto_0
    return-void
.end method
