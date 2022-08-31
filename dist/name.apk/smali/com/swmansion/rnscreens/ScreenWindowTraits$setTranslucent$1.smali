.class public final Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;
.super Lcom/facebook/react/bridge/GuardedRunnable;
.source "ScreenWindowTraits.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0017\u00a8\u0006\u0004"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1",
        "Lcom/facebook/react/bridge/GuardedRunnable;",
        "runGuarded",
        "",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $translucent:Z


# direct methods
.method public static synthetic $r8$lambda$Dz1cYykidIujSb9SX8lnwFat4Yk(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;->runGuarded$lambda-0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;->$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;->$translucent:Z

    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedRunnable;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method private static final runGuarded$lambda-0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 116
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    const-string p1, "onApplyWindowInsets(v, insets)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result p1

    .line 120
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public runGuarded()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1;->$translucent:Z

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits$setTranslucent$1$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 127
    :goto_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method
