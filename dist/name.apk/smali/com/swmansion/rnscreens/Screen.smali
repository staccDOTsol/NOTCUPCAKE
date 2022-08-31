.class public final Lcom/swmansion/rnscreens/Screen;
.super Lcom/swmansion/rnscreens/FabricEnabledViewGroup;
.source "Screen.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/Screen$StackPresentation;,
        Lcom/swmansion/rnscreens/Screen$StackAnimation;,
        Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;,
        Lcom/swmansion/rnscreens/Screen$ActivityState;,
        Lcom/swmansion/rnscreens/Screen$WindowTraits;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Screen.kt\ncom/swmansion/rnscreens/Screen\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,264:1\n1#2:265\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001:\u0005xyz{|B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020/J\u0016\u0010`\u001a\u00020^2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020b0aH\u0014J\u0016\u0010c\u001a\u00020^2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020b0aH\u0014J\u0010\u0010d\u001a\u00020\u001b2\u0006\u0010e\u001a\u00020fH\u0002J0\u0010g\u001a\u00020^2\u0006\u0010h\u001a\u00020\u001b2\u0006\u0010i\u001a\u00020/2\u0006\u0010j\u001a\u00020/2\u0006\u0010k\u001a\u00020/2\u0006\u0010l\u001a\u00020/H\u0014J\u000e\u0010m\u001a\u00020^2\u0006\u0010\u0007\u001a\u00020\u0006J\u001a\u0010n\u001a\u00020^2\u0006\u0010o\u001a\u00020/2\u0008\u0010p\u001a\u0004\u0018\u00010qH\u0016J\u0010\u0010r\u001a\u00020^2\u0008\u0010G\u001a\u0004\u0018\u000105J\u000e\u0010s\u001a\u00020^2\u0006\u0010t\u001a\u00020\u001bJ\u0018\u0010u\u001a\u00020^2\u0006\u0010v\u001a\u00020/2\u0006\u0010w\u001a\u00020/H\u0002R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR(\u0010 \u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001e\u0010$\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008$\u0010!\"\u0004\u0008%\u0010#R(\u0010(\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010!\"\u0004\u0008)\u0010#R(\u0010+\u001a\u0004\u0018\u00010\u001b2\u0008\u0010*\u001a\u0004\u0018\u00010\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010!\"\u0004\u0008,\u0010#R\u000e\u0010-\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u00100R\u0012\u00101\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010&R\u0012\u00102\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u00100R\u0012\u00103\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010&R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00106\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010&R\u000e\u00107\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u00109\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008:\u0010\u001c\"\u0004\u0008;\u0010\u001eR(\u0010<\u001a\u0004\u0018\u00010/2\u0008\u0010<\u001a\u0004\u0018\u00010/8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001a\u0010A\u001a\u00020BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010G\u001a\u0004\u0018\u00010/2\u0008\u0010\u0005\u001a\u0004\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u0008H\u0010>R\u001a\u0010I\u001a\u00020JX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010O\u001a\u00020PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR(\u0010U\u001a\u0004\u0018\u00010/2\u0008\u0010U\u001a\u0004\u0018\u00010/8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008V\u0010>\"\u0004\u0008W\u0010@R(\u0010X\u001a\u0004\u0018\u0001052\u0008\u0010X\u001a\u0004\u0018\u0001058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\\u00a8\u0006}"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/Screen;",
        "Lcom/swmansion/rnscreens/FabricEnabledViewGroup;",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "<set-?>",
        "Lcom/swmansion/rnscreens/Screen$ActivityState;",
        "activityState",
        "getActivityState",
        "()Lcom/swmansion/rnscreens/Screen$ActivityState;",
        "container",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "getContainer",
        "()Lcom/swmansion/rnscreens/ScreenContainer;",
        "setContainer",
        "(Lcom/swmansion/rnscreens/ScreenContainer;)V",
        "fragment",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "getFragment",
        "()Lcom/swmansion/rnscreens/ScreenFragment;",
        "setFragment",
        "(Lcom/swmansion/rnscreens/ScreenFragment;)V",
        "headerConfig",
        "Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;",
        "getHeaderConfig",
        "()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;",
        "isGestureEnabled",
        "",
        "()Z",
        "setGestureEnabled",
        "(Z)V",
        "navigationBarHidden",
        "isNavigationBarHidden",
        "()Ljava/lang/Boolean;",
        "setNavigationBarHidden",
        "(Ljava/lang/Boolean;)V",
        "isStatusBarAnimated",
        "setStatusBarAnimated",
        "Ljava/lang/Boolean;",
        "statusBarHidden",
        "isStatusBarHidden",
        "setStatusBarHidden",
        "statusBarTranslucent",
        "isStatusBarTranslucent",
        "setStatusBarTranslucent",
        "mNativeBackButtonDismissalEnabled",
        "mNavigationBarColor",
        "",
        "Ljava/lang/Integer;",
        "mNavigationBarHidden",
        "mStatusBarColor",
        "mStatusBarHidden",
        "mStatusBarStyle",
        "",
        "mStatusBarTranslucent",
        "mTransitioning",
        "enableNativeBackButtonDismissal",
        "nativeBackButtonDismissalEnabled",
        "getNativeBackButtonDismissalEnabled",
        "setNativeBackButtonDismissalEnabled",
        "navigationBarColor",
        "getNavigationBarColor",
        "()Ljava/lang/Integer;",
        "setNavigationBarColor",
        "(Ljava/lang/Integer;)V",
        "replaceAnimation",
        "Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;",
        "getReplaceAnimation",
        "()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;",
        "setReplaceAnimation",
        "(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V",
        "screenOrientation",
        "getScreenOrientation",
        "stackAnimation",
        "Lcom/swmansion/rnscreens/Screen$StackAnimation;",
        "getStackAnimation",
        "()Lcom/swmansion/rnscreens/Screen$StackAnimation;",
        "setStackAnimation",
        "(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V",
        "stackPresentation",
        "Lcom/swmansion/rnscreens/Screen$StackPresentation;",
        "getStackPresentation",
        "()Lcom/swmansion/rnscreens/Screen$StackPresentation;",
        "setStackPresentation",
        "(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V",
        "statusBarColor",
        "getStatusBarColor",
        "setStatusBarColor",
        "statusBarStyle",
        "getStatusBarStyle",
        "()Ljava/lang/String;",
        "setStatusBarStyle",
        "(Ljava/lang/String;)V",
        "changeAccessibilityMode",
        "",
        "mode",
        "dispatchRestoreInstanceState",
        "Landroid/util/SparseArray;",
        "Landroid/os/Parcelable;",
        "dispatchSaveInstanceState",
        "hasWebView",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "setActivityState",
        "setLayerType",
        "layerType",
        "paint",
        "Landroid/graphics/Paint;",
        "setScreenOrientation",
        "setTransitioning",
        "transitioning",
        "updateScreenSizePaper",
        "width",
        "height",
        "ActivityState",
        "ReplaceAnimation",
        "StackAnimation",
        "StackPresentation",
        "WindowTraits",
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


# instance fields
.field private activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field private container:Lcom/swmansion/rnscreens/ScreenContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;"
        }
    .end annotation
.end field

.field private fragment:Lcom/swmansion/rnscreens/ScreenFragment;

.field private isGestureEnabled:Z

.field private isStatusBarAnimated:Ljava/lang/Boolean;

.field private mNativeBackButtonDismissalEnabled:Z

.field private mNavigationBarColor:Ljava/lang/Integer;

.field private mNavigationBarHidden:Ljava/lang/Boolean;

.field private mStatusBarColor:Ljava/lang/Integer;

.field private mStatusBarHidden:Ljava/lang/Boolean;

.field private mStatusBarStyle:Ljava/lang/String;

.field private mStatusBarTranslucent:Ljava/lang/Boolean;

.field private mTransitioning:Z

.field private replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

.field private screenOrientation:Ljava/lang/Integer;

.field private stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field private stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/FabricEnabledViewGroup;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 23
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 24
    sget-object p1, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    .line 25
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    .line 36
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mNativeBackButtonDismissalEnabled:Z

    .line 49
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final hasWebView(Landroid/view/ViewGroup;)Z
    .locals 6

    .line 115
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    instance-of v4, v3, Landroid/webkit/WebView;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    .line 119
    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 120
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final updateScreenSizePaper(II)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 77
    new-instance v1, Lcom/swmansion/rnscreens/Screen$updateScreenSizePaper$1;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/swmansion/rnscreens/Screen$updateScreenSizePaper$1;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/swmansion/rnscreens/Screen;II)V

    check-cast v1, Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final changeAccessibilityMode(I)V
    .locals 1

    .line 163
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setImportantForAccessibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getToolbar()Lcom/swmansion/rnscreens/CustomToolbar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/CustomToolbar;->setImportantForAccessibility(I)V

    :goto_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object v0
.end method

.method public final getContainer()Lcom/swmansion/rnscreens/ScreenContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    return-object v0
.end method

.method public final getFragment()Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-object v0
.end method

.method public final getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
    .locals 2

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/Screen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getNativeBackButtonDismissalEnabled()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mNativeBackButtonDismissalEnabled:Z

    return v0
.end method

.method public final getNavigationBarColor()Ljava/lang/Integer;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mNavigationBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-object v0
.end method

.method public final getScreenOrientation()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object v0
.end method

.method public final getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object v0
.end method

.method public final getStatusBarColor()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatusBarStyle()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final isGestureEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    return v0
.end method

.method public final isNavigationBarHidden()Ljava/lang/Boolean;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mNavigationBarHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStatusBarAnimated()Ljava/lang/Boolean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStatusBarHidden()Ljava/lang/Boolean;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStatusBarTranslucent()Ljava/lang/Boolean;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarTranslucent:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 69
    invoke-direct {p0, p4, p5}, Lcom/swmansion/rnscreens/Screen;->updateScreenSizePaper(II)V

    :cond_0
    return-void
.end method

.method public final setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V
    .locals 1

    const-string v0, "activityState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne p1, v0, :cond_0

    return-void

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 137
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->notifyChildUpdate()V

    :cond_1
    return-void
.end method

.method public final setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/rnscreens/ScreenContainer<",
            "*>;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    return-void
.end method

.method public final setFragment(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-void
.end method

.method public final setGestureEnabled(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public final setNativeBackButtonDismissalEnabled(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mNativeBackButtonDismissalEnabled:Z

    return-void
.end method

.method public final setNavigationBarColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetNavigationBarAppearance$react_native_screens_release()V

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mNavigationBarColor:Ljava/lang/Integer;

    .line 220
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setNavigationBarColor$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final setNavigationBarHidden(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 227
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetNavigationBarAppearance$react_native_screens_release()V

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mNavigationBarHidden:Ljava/lang/Boolean;

    .line 230
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    .line 231
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 233
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    .line 231
    invoke-virtual {v0, p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setNavigationBarHidden$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-void
.end method

.method public final setScreenOrientation(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetOrientation$react_native_screens_release()V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "landscape_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "landscape_left"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :sswitch_2
    const-string v0, "portrait_up"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :sswitch_3
    const-string v0, "landscape"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :sswitch_4
    const-string v0, "portrait"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :sswitch_5
    const-string v0, "all"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0xa

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :sswitch_6
    const-string v0, "portrait_down"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0x9

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 146
    :goto_1
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    .line 157
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setOrientation$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f1d53a -> :sswitch_6
        0x179a1 -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
        0x5545f2bb -> :sswitch_3
        0x62724dbf -> :sswitch_2
        0x6728e30b -> :sswitch_1
        0x7e49df98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-void
.end method

.method public final setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-void
.end method

.method public final setStatusBarAnimated(Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated:Ljava/lang/Boolean;

    return-void
.end method

.method public final setStatusBarColor(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 207
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_release()V

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarColor:Ljava/lang/Integer;

    .line 210
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public final setStatusBarHidden(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_release()V

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarHidden:Ljava/lang/Boolean;

    .line 184
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setHidden$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final setStatusBarStyle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 171
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_release()V

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarStyle:Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setStyle$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public final setStatusBarTranslucent(Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 191
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_release()V

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarTranslucent:Ljava/lang/Boolean;

    .line 194
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz p1, :cond_1

    .line 195
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 197
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    .line 195
    invoke-virtual {v0, p0, v1, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public final setTransitioning(Z)V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    .line 104
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getLayerType()I

    move-result v2

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 108
    invoke-super {p0, v1, p1}, Lcom/swmansion/rnscreens/FabricEnabledViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
