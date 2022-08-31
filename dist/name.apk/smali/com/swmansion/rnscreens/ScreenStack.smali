.class public final Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;,
        Lcom/swmansion/rnscreens/ScreenStack$Companion;,
        Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/rnscreens/ScreenContainer<",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStack.kt\ncom/swmansion/rnscreens/ScreenStack\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,352:1\n1#2:353\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 A2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002ABB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001cH\u0014J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0002J\u0010\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020(H\u0014J\u0008\u0010)\u001a\u00020$H\u0002J\u0008\u0010*\u001a\u00020$H\u0002J \u0010+\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020(2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0014J\u0010\u00100\u001a\u00020$2\u0006\u00101\u001a\u00020-H\u0016J\u0012\u00102\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u000103H\u0016J\u0008\u00104\u001a\u00020$H\u0014J\u000c\u00105\u001a\u00060\u0008R\u00020\u0000H\u0002J\u0008\u00106\u001a\u00020$H\u0016J\u0006\u00107\u001a\u00020$J\u0014\u00108\u001a\u00020$2\n\u00109\u001a\u00060\u0008R\u00020\u0000H\u0002J\u0008\u0010:\u001a\u00020$H\u0016J\u0010\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020\u0019H\u0016J\u0010\u0010=\u001a\u00020$2\u0006\u00101\u001a\u00020-H\u0016J\u0010\u0010>\u001a\u00020$2\u0006\u00101\u001a\u00020-H\u0016J\u0012\u0010?\u001a\u00020$2\u0008\u0010@\u001a\u0004\u0018\u00010\u0002H\u0002R\u0018\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u00060\u0008R\u00020\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u000c\u0012\u0008\u0012\u00060\u0008R\u00020\u00000\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0015j\u0008\u0012\u0004\u0012\u00020\u0002`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001e\u00a8\u0006C"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "drawingOpPool",
        "",
        "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
        "drawingOps",
        "goingForward",
        "",
        "getGoingForward",
        "()Z",
        "setGoingForward",
        "(Z)V",
        "isDetachingCurrentScreen",
        "mDismissed",
        "",
        "mRemovalTransitionStarted",
        "mStack",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mTopScreen",
        "previousChildrenCount",
        "",
        "reverseLastTwoChildren",
        "rootScreen",
        "Lcom/swmansion/rnscreens/Screen;",
        "getRootScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "topScreen",
        "getTopScreen",
        "adapt",
        "screen",
        "dismiss",
        "",
        "screenFragment",
        "dispatchDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dispatchOnFinishTransitioning",
        "drawAndRelease",
        "drawChild",
        "child",
        "Landroid/view/View;",
        "drawingTime",
        "",
        "endViewTransition",
        "view",
        "hasScreen",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "notifyContainerUpdate",
        "obtainDrawingOp",
        "onUpdate",
        "onViewAppearTransitionEnd",
        "performDraw",
        "op",
        "removeAllScreens",
        "removeScreenAt",
        "index",
        "removeView",
        "startViewTransition",
        "turnOffA11yUnderTransparentScreen",
        "visibleBottom",
        "Companion",
        "DrawingOp",
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;


# instance fields
.field private final drawingOpPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private drawingOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private goingForward:Z

.field private isDetachingCurrentScreen:Z

.field private final mDismissed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovalTransitionStarted:Z

.field private final mStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

.field private previousChildrenCount:I

.field private reverseLastTwoChildren:Z


# direct methods
.method public static synthetic $r8$lambda$09QDs4u6bgTL_vc7DRBNAkh6PHM(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/ScreenStack;->onUpdate$lambda-2$lambda-1(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$performDraw(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V

    return-void
.end method

.method private final dispatchOnFinishTransitioning()V
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 71
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;-><init>(I)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method private final drawAndRelease()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 283
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->draw()V

    .line 284
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    :goto_0
    return-object v0
.end method

.method private static final onUpdate$lambda-2$lambda-1(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->bringToFront()V

    :cond_0
    return-void
.end method

.method private final performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 4

    .line 308
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getDrawingTime()J

    move-result-wide v2

    invoke-super {p0, v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void
.end method

.method private final turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_1

    .line 234
    sget-object v3, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    # invokes: Lcom/swmansion/rnscreens/ScreenStack$Companion;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    invoke-static {v3, v0}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->access$isTransparent(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 238
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    .line 241
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenFragment;

    return-object p1
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method public final dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1

    const-string v0, "screenFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->performUpdatesNow()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 292
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    .line 296
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 297
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->drawAndRelease()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->set(Landroid/graphics/Canvas;Landroid/view/View;J)Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->endViewTransition(Landroid/view/View;)V

    .line 57
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    .line 59
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method public final getGoingForward()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return v0
.end method

.method public final getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 5

    .line 35
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 37
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyContainerUpdate()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 254
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onContainerUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 8

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 98
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    if-ltz v1, :cond_3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 99
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "mScreenFragments[i]"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 100
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    move-object v4, v1

    .line 106
    :goto_1
    sget-object v6, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    # invokes: Lcom/swmansion/rnscreens/ScreenStack$Companion;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    invoke-static {v6, v1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->access$isTransparent(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_0

    .line 113
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_a

    .line 116
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v1, :cond_4

    .line 121
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 122
    :goto_3
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    move-result-object v6

    sget-object v7, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->PUSH:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-nez v1, :cond_7

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_8

    .line 125
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v2

    goto :goto_8

    :cond_8
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v2

    goto :goto_8

    :cond_9
    if-nez v1, :cond_c

    if-eqz v3, :cond_c

    .line 129
    sget-object v2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 130
    iput-boolean v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    goto :goto_7

    .line 132
    :cond_a
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_c

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 135
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v1

    move-object v2, v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v1, 0x1

    .line 138
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->createTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    if-eqz v2, :cond_f

    if-eqz v1, :cond_e

    .line 142
    sget-object v7, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    .line 151
    :pswitch_0
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_fade_from_bottom:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_350:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_9

    .line 149
    :pswitch_1
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_bottom:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    .line 148
    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_9

    .line 147
    :pswitch_2
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 146
    :pswitch_3
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 145
    :pswitch_4
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_fade_in:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_fade_out:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 144
    :pswitch_5
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 143
    :pswitch_6
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_default_enter_in:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_default_enter_out:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 154
    :cond_e
    sget-object v7, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_9

    .line 163
    :pswitch_7
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_250:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_fade_to_bottom:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 161
    :pswitch_8
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_bottom:I

    .line 160
    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 159
    :pswitch_9
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 158
    :pswitch_a
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 157
    :pswitch_b
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_fade_in:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_fade_out:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 156
    :pswitch_c
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 155
    :pswitch_d
    sget v2, Lcom/swmansion/rnscreens/R$anim;->rns_default_exit_in:I

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_default_exit_out:I

    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 169
    :cond_f
    :goto_9
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 172
    sget-object v1, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    # invokes: Lcom/swmansion/rnscreens/ScreenStack$Companion;->needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    invoke-static {v1, v3}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->access$needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v4, :cond_10

    .line 182
    iput-boolean v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 186
    :cond_10
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 187
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 188
    :cond_12
    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_a

    .line 191
    :cond_13
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-ne v2, v4, :cond_15

    goto :goto_c

    :cond_15
    if-eq v2, v3, :cond_14

    .line 198
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 199
    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    :cond_16
    :goto_c
    if-eqz v4, :cond_19

    .line 204
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_19

    .line 207
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v5, :cond_18

    if-ne v2, v4, :cond_17

    const/4 v5, 0x0

    .line 215
    :cond_18
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v7

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v7, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    new-instance v7, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3}, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    invoke-virtual {v2, v7}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_d

    :cond_19
    if-eqz v3, :cond_1a

    .line 217
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 218
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v0

    move-object v1, v3

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 220
    :cond_1a
    iput-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 221
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-direct {p0, v4}, Lcom/swmansion/rnscreens/ScreenStack;->turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    .line 226
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final onViewAppearTransitionEnd()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method public removeScreenAt(I)V
    .locals 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setGoingForward(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->startViewTransition(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    return-void
.end method
