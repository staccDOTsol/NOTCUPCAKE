.class public Lcom/swmansion/rnscreens/ScreenFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScreenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;,
        Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;,
        Lcom/swmansion/rnscreens/ScreenFragment$Companion;,
        Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenFragment.kt\ncom/swmansion/rnscreens/ScreenFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,334:1\n1#2:335\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 @2\u00020\u0001:\u0003@ABB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0000H\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0006\u0010 \u001a\u00020\u001dJ\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u0008\u0010#\u001a\u00020\u001dH\u0002J\u0008\u0010$\u001a\u00020\u001dH\u0002J\u0016\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020\u0007J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u0007H\u0002J\u0008\u0010*\u001a\u00020\u001dH\u0016J&\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u00103\u001a\u00020\u001dH\u0016J\u0008\u00104\u001a\u00020\u001dH\u0016J\u0008\u00105\u001a\u00020\u001dH\u0016J\u0006\u00106\u001a\u00020\u001dJ\u0012\u00107\u001a\u00020\u001d2\n\u00108\u001a\u0006\u0012\u0002\u0008\u00030\u000bJ\u0010\u00109\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010:\u001a\u0004\u0018\u00010;J\u0008\u0010<\u001a\u0004\u0018\u00010=J\u0012\u0010>\u001a\u00020\u001d2\n\u00108\u001a\u0006\u0012\u0002\u0008\u00030\u000bJ\u0008\u0010?\u001a\u00020\u001dH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0013\u001a\u00020\u0004X\u0086.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0005R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "screenView",
        "Lcom/swmansion/rnscreens/Screen;",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "canDispatchAppear",
        "",
        "canDispatchWillAppear",
        "childScreenContainers",
        "",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "getChildScreenContainers",
        "()Ljava/util/List;",
        "isTransitioning",
        "mChildScreenContainers",
        "",
        "mProgress",
        "",
        "screen",
        "getScreen$annotations",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "setScreen",
        "shouldUpdateOnResume",
        "canDispatchEvent",
        "event",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        "dispatchEvent",
        "",
        "fragment",
        "dispatchEventInChildContainers",
        "dispatchHeaderBackButtonClickedEvent",
        "dispatchOnAppear",
        "dispatchOnDisappear",
        "dispatchOnWillAppear",
        "dispatchOnWillDisappear",
        "dispatchTransitionProgress",
        "alpha",
        "closing",
        "dispatchViewAnimationEvent",
        "animationEnd",
        "onContainerUpdate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onViewAnimationEnd",
        "onViewAnimationStart",
        "registerChildScreenContainer",
        "screenContainer",
        "setLastEventDispatched",
        "tryGetActivity",
        "Landroid/app/Activity;",
        "tryGetContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "unregisterChildScreenContainer",
        "updateWindowTraits",
        "Companion",
        "ScreenLifecycleEvent",
        "ScreensFrameLayout",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;


# instance fields
.field private canDispatchAppear:Z

.field private canDispatchWillAppear:Z

.field private isTransitioning:Z

.field private final mChildScreenContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mProgress:F

.field public screen:Lcom/swmansion/rnscreens/Screen;

.field private shouldUpdateOnResume:Z


# direct methods
.method public static synthetic $r8$lambda$hGEIw9uzocu3xg7kN5-LuRdWf64(ZLcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent$lambda-6(ZLcom/swmansion/rnscreens/ScreenFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment;->Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    .line 39
    iput v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mProgress:F

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 46
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Screen fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1

    const-string v0, "screenView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    .line 39
    iput v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mProgress:F

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 46
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->setScreen(Lcom/swmansion/rnscreens/Screen;)V

    return-void
.end method

.method private final canDispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z
    .locals 3

    .line 156
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 160
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    if-nez p1, :cond_4

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 159
    :cond_1
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    if-nez p1, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_1

    .line 157
    :cond_3
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    :cond_4
    :goto_1
    return v0
.end method

.method private final dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 3

    .line 198
    instance-of v0, p2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_5

    invoke-direct {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p2}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 200
    invoke-direct {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->setLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V

    .line 201
    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 205
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenDisappearEvent;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenDisappearEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 204
    :cond_1
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenWillDisappearEvent;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenWillDisappearEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    .line 203
    :cond_2
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenAppearEvent;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenAppearEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    .line 202
    :cond_3
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenWillAppearEvent;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenWillAppearEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 207
    :goto_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 208
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_4

    .line 209
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 210
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 211
    :cond_4
    invoke-direct {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEventInChildContainers(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V

    :cond_5
    return-void
.end method

.method private final dispatchEventInChildContainers(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenContainer;

    .line 218
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getScreenCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 219
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final dispatchOnAppear()V
    .locals 2

    .line 180
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-direct {p0, v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgress(FZ)V

    return-void
.end method

.method private final dispatchOnDisappear()V
    .locals 2

    .line 192
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-direct {p0, v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgress(FZ)V

    return-void
.end method

.method private final dispatchOnWillAppear()V
    .locals 2

    .line 174
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-direct {p0, v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgress(FZ)V

    return-void
.end method

.method private final dispatchOnWillDisappear()V
    .locals 2

    .line 186
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-direct {p0, v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgress(FZ)V

    return-void
.end method

.method private final dispatchViewAnimationEvent(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->isTransitioning:Z

    .line 279
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFragment;

    iget-boolean v0, v0, Lcom/swmansion/rnscreens/ScreenFragment;->isTransitioning:Z

    if-nez v0, :cond_3

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/swmansion/rnscreens/ScreenFragment$$ExternalSyntheticLambda0;-><init>(ZLcom/swmansion/rnscreens/ScreenFragment;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnDisappear()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnWillDisappear()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final dispatchViewAnimationEvent$lambda-6(ZLcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 292
    invoke-direct {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnAppear()V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnWillAppear()V

    :goto_0
    return-void
.end method

.method public static synthetic getScreen$annotations()V
    .locals 0

    return-void
.end method

.method protected static final recycleView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment;->Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment$Companion;->recycleView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final setLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3

    .line 165
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_0

    .line 168
    :cond_1
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_0

    .line 166
    :cond_3
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    :goto_0
    return-void
.end method

.method private final updateWindowTraits()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    return-void

    .line 113
    :cond_0
    sget-object v1, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->trySetWindowTraits$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public final dispatchHeaderBackButtonClickedEvent()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 228
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public final dispatchTransitionProgress(FZ)V
    .locals 9

    .line 234
    instance-of v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_6

    .line 235
    iget v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mProgress:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 236
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mProgress:F

    cmpg-float v3, p1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    :goto_3
    int-to-short v8, v1

    .line 243
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object p1

    .line 244
    instance-of v0, p1, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack;->getGoingForward()Z

    move-result v2

    move v7, v2

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    .line 245
    :goto_4
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 246
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz p1, :cond_6

    .line 247
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 249
    new-instance v0, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;

    .line 250
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    iget v5, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mProgress:F

    move-object v3, v0

    move v6, p2

    .line 249
    invoke-direct/range {v3 .. v8}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;-><init>(IFZZS)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 248
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_6
    return-void
.end method

.method public final getChildScreenContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    return-object v0
.end method

.method public final getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->screen:Lcom/swmansion/rnscreens/Screen;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "screen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onContainerUpdate()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->updateWindowTraits()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;

    invoke-direct {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 78
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p3

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3, p1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->recycleView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;->addView(Landroid/view/View;)V

    .line 83
    :cond_1
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public onDestroy()V
    .locals 3

    .line 301
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 302
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 307
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 65
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    .line 67
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->trySetWindowTraits$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_0
    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 270
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent(Z)V

    return-void
.end method

.method public final onViewAnimationStart()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent(Z)V

    return-void
.end method

.method public final registerChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "screenContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setScreen(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->screen:Lcom/swmansion/rnscreens/Screen;

    return-void
.end method

.method public final tryGetActivity()Landroid/app/Activity;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    :goto_0
    if-eqz v0, :cond_3

    .line 124
    instance-of v1, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v1, :cond_2

    .line 125
    move-object v1, v0

    check-cast v1, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 128
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final tryGetContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    :goto_0
    if-eqz v0, :cond_3

    .line 142
    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_2

    .line 143
    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 147
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final unregisterChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "screenContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mChildScreenContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
