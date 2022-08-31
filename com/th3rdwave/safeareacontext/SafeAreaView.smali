.class public final Lcom/th3rdwave/safeareacontext/SafeAreaView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0017H\u0014J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0016\u0010\u001a\u001a\u00020\u00172\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u000fJ\u0008\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mEdges",
        "Ljava/util/EnumSet;",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
        "mFabricViewStateManager",
        "Lcom/facebook/react/uimanager/FabricViewStateManager;",
        "mInsets",
        "Lcom/th3rdwave/safeareacontext/EdgeInsets;",
        "mMode",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;",
        "mProviderView",
        "Landroid/view/View;",
        "findProvider",
        "getFabricViewStateManager",
        "maybeUpdateInsets",
        "",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onPreDraw",
        "setEdges",
        "edges",
        "setMode",
        "mode",
        "updateInsets",
        "waitForReactLayout",
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


# instance fields
.field private mEdges:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;"
        }
    .end annotation
.end field

.field private final mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

.field private mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

.field private mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

.field private mProviderView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$GYvVASVOHRPQtzUAhktxHC9Ym3c(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets$lambda-0(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JDXAqm0iIeCCM8QPaQWMIKWjd70(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->waitForReactLayout$lambda-3(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRpF4VOxg9Zh21_mfHHMvrh8paI(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 0

    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets$lambda-1(Lcom/facebook/react/uimanager/UIManagerModule;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 24
    new-instance p1, Lcom/facebook/react/uimanager/FabricViewStateManager;

    invoke-direct {p1}, Lcom/facebook/react/uimanager/FabricViewStateManager;-><init>()V

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    return-void
.end method

.method private final findProvider()Landroid/view/View;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    instance-of v1, v0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 121
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final maybeUpdateInsets()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 109
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private final updateInsets()V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v0, :cond_2

    .line 33
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Ljava/util/EnumSet;

    if-nez v1, :cond_0

    const-class v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/FabricViewStateManager;->hasStateWrapper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;-><init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V

    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    const-string v4, "edges"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;-><init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;Ljava/util/EnumSet;)V

    .line 42
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/UIManagerHelperCompatKt;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    .line 49
    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;)V

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 52
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->waitForReactLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final updateInsets$lambda-0(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 36
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 37
    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SerializationUtilsKt;->edgeInsetsToJsMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "insets"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private static final updateInsets$lambda-1(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    return-void
.end method

.method private final waitForReactLayout()V
    .locals 10

    .line 64
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 65
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 69
    move-object v5, p0

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Lcom/th3rdwave/safeareacontext/UIManagerHelperCompatKt;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v5

    new-instance v6, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v0, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v5, v6}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 77
    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v5, 0x0

    .line 78
    :goto_0
    :try_start_0
    iget-boolean v7, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v8, 0x1dcd6500

    if-nez v7, :cond_0

    cmp-long v7, v5, v8

    if-gez v7, :cond_0

    .line 80
    :try_start_1
    invoke-interface {v2, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v7, 0x1

    .line 83
    :try_start_2
    iput-boolean v7, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 85
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    cmp-long v0, v5, v8

    if-ltz v0, :cond_1

    const-string v0, "SafeAreaView"

    const-string v1, "Timed out waiting for layout."

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 77
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static final waitForReactLayout$lambda-3(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 1

    const-string v0, "$lock"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$done"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 71
    :try_start_0
    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 73
    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 75
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 127
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 128
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->findProvider()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->requestLayout()V

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final setEdges(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Ljava/util/EnumSet;

    .line 101
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    return-void
.end method

.method public final setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 96
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    return-void
.end method
