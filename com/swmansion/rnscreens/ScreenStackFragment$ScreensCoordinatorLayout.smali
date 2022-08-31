.class final Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreensCoordinatorLayout"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "context",
        "Landroid/content/Context;",
        "mFragment",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenFragment;)V",
        "mAnimationListener",
        "Landroid/view/animation/Animation$AnimationListener;",
        "clearFocus",
        "",
        "startAnimation",
        "animation",
        "Landroid/view/animation/Animation;",
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
.field private final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mFragment:Lcom/swmansion/rnscreens/ScreenFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 191
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    .line 194
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$mAnimationListener$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$mAnimationListener$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)V

    check-cast p1, Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public static final synthetic access$getMFragment$p(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-object p0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 240
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clearFocus()V

    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;-><init>(Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;->setDuration(J)V

    .line 218
    instance-of v1, p1, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    move-object v1, p1

    check-cast v1, Landroid/view/animation/AnimationSet;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 221
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 224
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 227
    check-cast v1, Landroid/view/animation/Animation;

    invoke-super {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
